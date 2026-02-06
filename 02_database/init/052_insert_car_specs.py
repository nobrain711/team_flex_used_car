from __future__ import annotations

import re
from collections import Counter
from typing import Optional

import pandas as pd
import pymysql

from load_csv import load_csv


# -------------------------------------------------
# detail_name 파싱 (세대/차명/연식 분리)
# -------------------------------------------------
RE_YEAR_PAREN = re.compile(r"\(([^)]*)\)\s*$")


def split_detail_name(detail_name: str) -> tuple[str, str, str]:
    """
    예: '디 올 뉴 그랜저 (22년~현재)'
      -> ('디 올 뉴', '그랜저', '22년~현재')

    반환: (generation_name, model_name, model_year)
    - 괄호 안은 model_year로 추출
    - 나머지 텍스트는 마지막 토큰을 model_name으로, 앞부분을 generation_name으로 처리
    """
    if pd.isna(detail_name):
        return "", "", ""

    text = str(detail_name).strip()

    # 1) 괄호 안 연식 분리
    model_year = ""
    m = RE_YEAR_PAREN.search(text)
    if m:
        model_year = m.group(1).strip()
        text = RE_YEAR_PAREN.sub("", text).strip()

    # 2) 남은 텍스트: "디 올 뉴 그랜저"
    parts = text.split()
    if not parts:
        return "", "", model_year
    if len(parts) == 1:
        return "", parts[0], model_year

    model_name = parts[-1].strip()
    generation_name = " ".join(parts[:-1]).strip()

    return generation_name, model_name, model_year


# -------------------------------------------------
# 분류 로직 (도메인 규칙)
# -------------------------------------------------
def classify_body_type(text: str) -> str:
    """
    body_type 분류 규칙
    - 경차 / 세단(스포츠카/슈퍼카/컨버터블/해치백 포함) / SUV / RV / 승합차(리무진 포함) / 화물차 / 버스
    - 원천에 명확한 키워드가 없으면 '세단'으로 둠
    """
    if pd.isna(text):
        return "세단"

    t = str(text)

    if any(k in t for k in ["버스", "유니버스", "에어로시티", "그랜버드"]):
        return "버스"
    if any(k in t for k in ["포터", "봉고", "화물", "트럭", "픽업", "카고"]):
        return "화물차"
    if any(k in t for k in ["승합", "밴", "벤", "스프린터", "쏠라티", "카운티", "리무진"]):
        return "승합차"
    if any(k in t for k in ["카니발", "스타리아", "시에나", "오딧세이", "미니밴"]):
        return "RV"
    if any(k in t for k in ["SUV", "싼타페", "쏘렌토", "투싼", "스포티지", "GV", "레인지로버", "디펜더"]):
        return "SUV"
    if any(k in t for k in ["모닝", "스파크", "캐스퍼", "레이", "마티즈"]):
        return "경차"

    return "세단"


def classify_drivetrain(text: str) -> str:
    """
    drivetrain_type 분류 규칙
    - 원천 문자열에 명시되어 있으면 전륜/후륜/사륜으로 판단
    - 없으면 '미상'
    """
    if pd.isna(text):
        return "미상"

    t = str(text)

    if any(k in t for k in ["AWD", "4WD", "4륜", "사륜"]):
        return "사륜"
    if any(k in t for k in ["RWD", "FR", "후륜"]):
        return "후륜"
    if any(k in t for k in ["FWD", "FF", "전륜", "2WD", "2륜"]):
        return "전륜"

    return "미상"


def classify_transmission(text: str) -> int:
    """
    transmission 규칙 (DDL 코멘트 기준)
    - 0: 수동, 1: 자동
    """
    if pd.isna(text):
        return 1

    t = str(text)

    if any(k in t for k in ["수동", "M/T"]):
        return 0
    if any(k in t for k in ["자동", "A/T"]):
        return 1

    return 1


def extract_special_note(text: str) -> Optional[str]:
    """
    special_note 규칙
    - 캠핑/확장/개조 성격이 있으면 기록
    - 없으면 NULL
    """
    if pd.isna(text):
        return None

    t = str(text)

    if any(k in t for k in ["캠핑", "캠퍼", "확장", "하이루프", "개조"]):
        return "캠핑/확장 차량"

    return None


# -------------------------------------------------
# INSERT 메인 로직
# -------------------------------------------------
def insert_car_specs_from_df(df: pd.DataFrame, conn: pymysql.Connection) -> int:
    """
    보배드림 DF를 car_specs 테이블 스키마에 맞게 변환 후 INSERT

    - maker_name -> maker_id 매핑 후 삽입
    - 매핑 실패 제조사 로깅(Counter)
    - 1차 중복 제거: (maker_id, model_name, generation_name, model_year)
    """

    required_cols = [
        "maker_name",
        "group_name",
        "detail_name",
        "model_name_list",
        "fuel_type",
        "transmission",
        "displacement_cc",
    ]
    missing = [c for c in required_cols if c not in df.columns]
    if missing:
        raise ValueError(f"CSV columns missing: {missing}")

    # makers 매핑 로딩
    makers_map: dict[str, int] = {}
    with conn.cursor() as cur:
        cur.execute("SELECT maker_id, maker_name FROM makers")
        for maker_id, maker_name in cur.fetchall():
            makers_map[str(maker_name)] = int(maker_id)

    skipped_maker_counter = Counter()

    rows: list[tuple] = []

    for r in df.itertuples(index=False):
        maker_name = str(getattr(r, "maker_name"))
        maker_id = makers_map.get(maker_name)

        if maker_id is None:
            skipped_maker_counter[maker_name] += 1
            continue

        group_name = str(getattr(r, "group_name")).strip()
        detail_name = getattr(r, "detail_name")
        model_name_list = getattr(r, "model_name_list")

        fuel_type = str(getattr(r, "fuel_type"))
        transmission_raw = getattr(r, "transmission")
        displacement_cc = getattr(r, "displacement_cc")

        # detail_name 분리
        generation_name, model_name_from_detail, model_year = split_detail_name(detail_name)

        # model_name: 원칙적으로 group_name 사용(차종 기준)
        # 비어있을 때만 detail에서 추출한 차명 사용
        model_name = group_name if group_name else model_name_from_detail

        # 변환
        body_type = classify_body_type(model_name_list)
        drivetrain_type = classify_drivetrain(model_name_list)
        transmission = classify_transmission(transmission_raw)
        special_note = extract_special_note(model_name_list)

        # displacement_cc 정리
        try:
            displacement_cc_int = int(displacement_cc) if pd.notna(displacement_cc) else 0
        except Exception:
            displacement_cc_int = 0

        # trim_name: 원천에서 확실치 않으므로 빈값(추후 UPDATE)
        trim_name = ""

        # 안전장치: generation_name 비어있거나 너무 길면(스키마가 짧을 수 있어) fallback 처리
        generation_name_safe = generation_name.strip() if generation_name else str(detail_name).strip()
        generation_name_safe = generation_name_safe[:50]  # DB 스키마에 맞게 조정 권장

        model_year_safe = model_year.strip() if model_year else str(detail_name).strip()
        model_year_safe = model_year_safe[:100]

        rows.append(
            (
                maker_id,
                model_name,
                body_type,
                generation_name_safe,
                model_year_safe,
                trim_name,
                drivetrain_type,
                fuel_type,
                0.0,  # fuel_efficiency: 원천에 없음(정보 부족)
                displacement_cc_int,
                transmission,
                special_note,
            )
        )

    if not rows:
        raise ValueError("No rows to insert (all rows skipped).")

    # 1차 중복 제거 (세대/연식까지 포함)
    seen = set()
    dedup_rows = []
    for row in rows:
        key = (row[0], row[1], row[3], row[4])  # maker_id, model_name, generation_name, model_year
        if key in seen:
            continue
        seen.add(key)
        dedup_rows.append(row)

    insert_sql = """
    INSERT INTO car_specs (
        maker_id,
        model_name,
        body_type,
        generation_name,
        model_year,
        trim_name,
        drivetrain_type,
        fuel_type,
        fuel_efficiency,
        displacement_cc,
        transmission,
        special_note
    ) VALUES (
        %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s
    )
    """

    with conn.cursor() as cur:
        cur.executemany(insert_sql, dedup_rows)

    conn.commit()

    # 로깅
    print(f"[INFO] Inserted rows into car_specs: {len(dedup_rows)}")

    if skipped_maker_counter:
        print("[WARN] Skipped rows due to unknown maker_name:")
        for maker, cnt in skipped_maker_counter.most_common():
            print(f"  - {maker}: {cnt} rows")
    else:
        print("[INFO] No skipped maker_name rows")

    return len(dedup_rows)


def main() -> None:
    df = load_csv("bobaedream_all.csv")
    if df is None or df.empty:
        raise SystemExit("CSV is empty or not found.")

    # ⚠️ 아래 접속 정보는 네 환경에 맞게 수정
    conn = pymysql.connect(
        host="127.0.0.1",
        port=13306,
        user="ingest_user",
        password="ingest_user_dev_01",
        database="used_car_db",
        charset="utf8mb4",
    )

    try:
        insert_car_specs_from_df(df, conn)
    finally:
        conn.close()


if __name__ == "__main__":
    main()
