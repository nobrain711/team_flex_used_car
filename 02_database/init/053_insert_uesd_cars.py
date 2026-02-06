from __future__ import annotations

import re
from collections import Counter
from datetime import date
from typing import Optional

import pandas as pd
import pymysql

from load_csv import load_csv


# -------------------------------------------------
# 공통 정규화 (문자열 비교 안정화: NBSP/공백 문제 해결)
# -------------------------------------------------
RE_MULTI_SPACE = re.compile(r"\s+")


def norm_text(x) -> str:
    """
    DB/CSV 문자열 매칭 안정화
    - NBSP(\u00A0) 제거
    - 양끝 공백 제거
    - 연속 공백 축약
    """
    if x is None or (isinstance(x, float) and pd.isna(x)):
        return ""
    s = str(x).replace("\u00a0", " ").strip()
    s = RE_MULTI_SPACE.sub(" ", s)
    return s


# -------------------------------------------------
# year_month(YYYY.MM) -> car_age_months 계산
# -------------------------------------------------
RE_YEAR_MONTH = re.compile(r"^\s*(\d{4})\.(\d{1,2})\s*$")


def calc_car_age_months(year_month: str, 기준연: int, 기준월: int) -> int:
    """
    car_age_months = (기준연-등록연)*12 + (기준월-등록월)
    year_month 예: '2023.07'
    """
    ym = norm_text(year_month)
    m = RE_YEAR_MONTH.match(ym)
    if not m:
        return 0

    y = int(m.group(1))
    mo = int(m.group(2))
    age = (기준연 - y) * 12 + (기준월 - mo)
    return max(age, 0)


# -------------------------------------------------
# is_lease(0/1) 판정
# -------------------------------------------------
def to_is_lease(x) -> int:
    """
    rent_yn_detail / rent_yn 계열 값에서 0/1로 정규화
    - 값이 'Y', '1', 'True' 같은 경우 1
    """
    s = norm_text(x).lower()
    if s in {"y", "yes", "1", "true", "t"}:
        return 1
    return 0


# -------------------------------------------------
# 가격 계산 (원 단위)
# -------------------------------------------------
def calc_effective_price_won(
    is_lease: int,
    price_wan,
    acquisition_cost_wan,
    monthly_rent_wan,
    remain_months,
    support_money_wan,
) -> int:
    """
    일반매물: price_wan * 10000
    리스/승계: (acquisition_cost + monthly_rent*remain_months - support_money) * 10000
    결측은 0으로 처리(임시)
    """

    def to_int(v) -> int:
        try:
            if v is None or (isinstance(v, float) and pd.isna(v)):
                return 0
            return int(float(v))
        except Exception:
            return 0

    price_wan_i = to_int(price_wan)
    acq_wan_i = to_int(acquisition_cost_wan)
    monthly_wan_i = to_int(monthly_rent_wan)
    remain_i = to_int(remain_months)
    support_wan_i = to_int(support_money_wan)

    if is_lease == 1:
        eff_wan = acq_wan_i + (monthly_wan_i * remain_i) - support_wan_i
        return max(eff_wan, 0) * 10000

    return max(price_wan_i, 0) * 10000


# -------------------------------------------------
# car_specs lookup 키 정의 (완전매칭 기준)
# -------------------------------------------------
def make_spec_key(
    maker_id: int,
    model_name: str,
    generation_name: str,
    fuel_type: str,
    displacement_cc: int,
    transmission: int,
    trim_name: str,
) -> tuple:
    return (
        int(maker_id),
        norm_text(model_name),
        norm_text(generation_name),
        norm_text(fuel_type),
        int(displacement_cc),
        int(transmission),
        norm_text(trim_name),
    )


# -------------------------------------------------
# car_specs lookup (완전 + 완화 후보) 로딩
# -------------------------------------------------
def load_car_specs_lookups(
    conn: pymysql.Connection,
) -> tuple[dict[tuple, int], dict[tuple, list[tuple[int, str]]]]:
    """
    1) exact_lookup: 완전매칭용 key -> car_spec_id
       key = (maker_id, model_name, generation_name, fuel_type, displacement_cc, transmission, trim_name)

    2) relaxed_candidates: generation_name만 완화 매칭하기 위한 후보군
       relaxed_key = (maker_id, model_name, fuel_type, displacement_cc, transmission, trim_name)
       value = [(car_spec_id, generation_name_norm), ...]  # generation_name 길이 내림차순 정렬
    """
    sql = """
    SELECT
      car_spec_id, maker_id, model_name, generation_name, fuel_type,
      displacement_cc, transmission, trim_name
    FROM car_specs
    """

    exact_lookup: dict[tuple, int] = {}
    relaxed_candidates: dict[tuple, list[tuple[int, str]]] = {}

    with conn.cursor() as cur:
        cur.execute(sql)
        for row in cur.fetchall():
            (
                car_spec_id,
                maker_id,
                model_name,
                generation_name,
                fuel_type,
                displacement_cc,
                transmission,
                trim_name,
            ) = row

            exact_key = make_spec_key(
                maker_id=maker_id,
                model_name=model_name,
                generation_name=generation_name,
                fuel_type=fuel_type,
                displacement_cc=displacement_cc,
                transmission=transmission,
                trim_name=trim_name,
            )
            exact_lookup[exact_key] = int(car_spec_id)

            relaxed_key = (
                int(maker_id),
                norm_text(model_name),
                norm_text(fuel_type),
                int(displacement_cc),
                int(transmission),
                norm_text(trim_name),
            )
            gen_norm = norm_text(generation_name)
            relaxed_candidates.setdefault(relaxed_key, []).append((int(car_spec_id), gen_norm))

    # 후보는 "세대명 긴 것 우선"으로 정렬
    for k in relaxed_candidates:
        relaxed_candidates[k].sort(key=lambda x: len(x[1]), reverse=True)

    return exact_lookup, relaxed_candidates


def find_car_spec_id_relaxed(
    *,
    exact_lookup: dict[tuple, int],
    relaxed_candidates: dict[tuple, list[tuple[int, str]]],
    maker_id: int,
    model_name: str,
    generation_name: str,
    fuel_type: str,
    displacement_cc: int,
    transmission: int,
    trim_name: str,
) -> Optional[int]:
    """
    1차: 완전매칭
    2차: generation_name 포함관계(서로 포함되면 OK) + 긴 후보 우선
    """
    exact_key = make_spec_key(
        maker_id=maker_id,
        model_name=model_name,
        generation_name=generation_name,
        fuel_type=fuel_type,
        displacement_cc=displacement_cc,
        transmission=transmission,
        trim_name=trim_name,
    )
    car_spec_id = exact_lookup.get(exact_key)
    if car_spec_id is not None:
        return car_spec_id

    relaxed_key = (
        int(maker_id),
        norm_text(model_name),
        norm_text(fuel_type),
        int(displacement_cc),
        int(transmission),
        norm_text(trim_name),
    )
    candidates = relaxed_candidates.get(relaxed_key)
    if not candidates:
        return None

    gen = norm_text(generation_name)
    if not gen:
        return None

    for cid, cand_gen in candidates:  # 이미 길이 내림차순
        if gen in cand_gen or cand_gen in gen:
            return cid

    return None


# -------------------------------------------------
# INSERT 메인 로직 (used_cars)
# -------------------------------------------------
def insert_used_cars_from_df(
    df: pd.DataFrame,
    conn: pymysql.Connection,
    기준연: int,
    기준월: int,
    write_unmatched: bool = False,
) -> int:
    """
    CSV DF -> used_cars 적재

    - car_specs lookup으로 car_spec_id를 매칭 (1차: 완전, 2차: 세대명 포함관계 완화)
    - 매칭 실패는 Counter로 로깅 (+ 옵션: used_cars_unmatched 저장)
    - listing_url 유니크면 ON DUPLICATE KEY UPDATE로 재실행 안전하게
    """

    required_cols = [
        "maker_no",          # maker_id로 사용
        "group_name",        # model_name
        "detail_name",       # generation_name 후보(정규화 필요)
        "fuel_type",
        "displacement_cc",
        "transmission",
        "price_wan",
        "detail_url",
        "mileage_km",
        "color",
        "year_month",
        # 리스 관련 (없으면 0 처리)
        "rent_yn_detail",
        "acquisition_cost_wan",
        "monthly_rent_wan",
        "remain_months",
        "support_money_wan",
    ]
    missing = [c for c in required_cols if c not in df.columns]
    if missing:
        raise ValueError(f"CSV columns missing: {missing}")

    # 1) car_specs lookup (완전 + 완화 후보)
    exact_lookup, relaxed_candidates = load_car_specs_lookups(conn)

    unmatched_counter = Counter()
    rows: list[tuple] = []
    unmatched_rows: list[tuple] = []

    for r in df.itertuples(index=False):
        maker_id = int(getattr(r, "maker_no"))
        model_name = norm_text(getattr(r, "group_name"))

        # generation_name: detail_name에서 괄호 연식 제거
        detail_name = norm_text(getattr(r, "detail_name"))
        generation_name = re.sub(r"\s*\([^)]*\)\s*$", "", detail_name).strip()

        fuel_type = norm_text(getattr(r, "fuel_type"))

        # displacement/transmission
        try:
            displacement_cc = int(float(getattr(r, "displacement_cc"))) if pd.notna(getattr(r, "displacement_cc")) else 0
        except Exception:
            displacement_cc = 0

        transmission_raw = getattr(r, "transmission")
        try:
            transmission = int(transmission_raw)
        except Exception:
            transmission = 1

        trim_name = ""  # 현재 DB가 대부분 ""로 저장돼 있으니 동일하게 맞춤

        # ✅ 1차: 완전매칭, 2차: 세대명 포함관계 완화
        car_spec_id = find_car_spec_id_relaxed(
            exact_lookup=exact_lookup,
            relaxed_candidates=relaxed_candidates,
            maker_id=maker_id,
            model_name=model_name,
            generation_name=generation_name,
            fuel_type=fuel_type,
            displacement_cc=displacement_cc,
            transmission=transmission,
            trim_name=trim_name,
        )

        if car_spec_id is None:
            unmatched_counter[(maker_id, model_name, generation_name, fuel_type, displacement_cc, transmission)] += 1
            if write_unmatched:
                unmatched_rows.append(
                    (
                        maker_id,
                        model_name,
                        generation_name,
                        fuel_type,
                        displacement_cc,
                        transmission,
                        norm_text(getattr(r, "detail_url")),
                        "no matching car_specs (exact+relaxed)",
                    )
                )
            continue

        listing_url = norm_text(getattr(r, "detail_url"))
        if not listing_url:
            unmatched_counter[("missing_url", maker_id, model_name)] += 1
            continue

        is_lease = to_is_lease(getattr(r, "rent_yn_detail"))

        price_won = calc_effective_price_won(
            is_lease=is_lease,
            price_wan=getattr(r, "price_wan"),
            acquisition_cost_wan=getattr(r, "acquisition_cost_wan"),
            monthly_rent_wan=getattr(r, "monthly_rent_wan"),
            remain_months=getattr(r, "remain_months"),
            support_money_wan=getattr(r, "support_money_wan"),
        )

        # mileage/color/age
        try:
            mileage_km = int(float(getattr(r, "mileage_km"))) if pd.notna(getattr(r, "mileage_km")) else 0
        except Exception:
            mileage_km = 0

        color_name = norm_text(getattr(r, "color"))
        car_age_months = calc_car_age_months(getattr(r, "year_month"), 기준연=기준연, 기준월=기준월)

        rows.append(
            (
                car_spec_id,
                price_won,
                listing_url,
                is_lease,
                mileage_km,
                color_name,
                car_age_months,
            )
        )

    if not rows and not (write_unmatched and unmatched_rows):
        raise ValueError("No rows to insert (all rows unmatched or invalid).")

    insert_sql = """
    INSERT INTO used_cars (
        car_spec_id,
        price,
        listing_url,
        is_lease,
        mileage_km,
        color_name,
        car_age_months
    ) VALUES (
        %s, %s, %s, %s, %s, %s, %s
    )
    ON DUPLICATE KEY UPDATE
      price = VALUES(price),
      is_lease = VALUES(is_lease),
      mileage_km = VALUES(mileage_km),
      color_name = VALUES(color_name),
      car_age_months = VALUES(car_age_months)
    """

    unmatched_sql = """
    INSERT INTO used_cars_unmatched (
        maker_id, model_name, generation_name, fuel_type,
        displacement_cc, transmission, listing_url, reason
    ) VALUES (%s, %s, %s, %s, %s, %s, %s, %s)
    """

    inserted = 0

    with conn.cursor() as cur:
        if rows:
            cur.executemany(insert_sql, rows)
            inserted = len(rows)

        if write_unmatched and unmatched_rows:
            cur.executemany(unmatched_sql, unmatched_rows)

    conn.commit()

    print(f"[INFO] Inserted/Updated rows into used_cars: {inserted}")

    if unmatched_counter:
        print("[WARN] Unmatched spec rows (top 20):")
        for k, cnt in unmatched_counter.most_common(20):
            print(f"  - {k}: {cnt}")

    if write_unmatched:
        print(f"[INFO] Unmatched rows saved: {len(unmatched_rows)}")

    return inserted


def main() -> None:
    df = load_csv("bobaedream_all.csv")
    if df is None or df.empty:
        raise SystemExit("CSV is empty or not found.")

    conn = pymysql.connect(
        host="127.0.0.1",
        port=13306,
        user="ingest_user",
        password="ingest_user_dev_01",
        database="used_car_db",
        charset="utf8mb4",
    )

    # 기준월: 임시로 “실행 시점” 기준(원하면 고정값 2026,2로 박아도 됨)
    today = date.today()
    기준연, 기준월 = today.year, today.month

    try:
        insert_used_cars_from_df(
            df=df,
            conn=conn,
            기준연=기준연,
            기준월=기준월,
            write_unmatched=False,  # 임시 연동이면 False로 시작, 필요하면 True
        )
    finally:
        conn.close()


if __name__ == "__main__":
    main()
