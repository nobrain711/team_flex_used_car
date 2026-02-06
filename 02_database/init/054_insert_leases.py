from __future__ import annotations

from typing import Dict, List, Tuple

import pandas as pd
import pymysql

from load_csv import load_csv


# -------------------------------------------------
# 기본 유틸
# -------------------------------------------------
def norm_text(x) -> str:
    if x is None or (isinstance(x, float) and pd.isna(x)):
        return ""
    return str(x).replace("\u00a0", " ").strip()


def to_int_safe(v) -> int:
    try:
        if v is None or (isinstance(v, float) and pd.isna(v)):
            return 0
        return int(float(v))
    except Exception:
        return 0


def to_is_lease(x) -> int:
    """
    CSV rent_yn_detail 같은 컬럼이 'Y' / '1' / True 계열이면 1
    """
    s = norm_text(x).lower()
    return 1 if s in {"y", "yes", "1", "true", "t"} else 0


def to_won_from_wan(v) -> int:
    """
    만원 단위 -> 원 단위
    """
    return max(to_int_safe(v), 0) * 10000


# -------------------------------------------------
# used_cars에서 used_car_id 조회 (listing_url 기준)
# -------------------------------------------------
def fetch_used_car_ids_by_urls(conn: pymysql.Connection, urls: List[str]) -> Dict[str, int]:
    url_to_id: Dict[str, int] = {}
    if not urls:
        return url_to_id

    chunk_size = 500
    sql_tpl = "SELECT used_car_id, listing_url FROM used_cars WHERE listing_url IN ({})"

    with conn.cursor() as cur:
        for i in range(0, len(urls), chunk_size):
            chunk = urls[i : i + chunk_size]
            placeholders = ",".join(["%s"] * len(chunk))
            cur.execute(sql_tpl.format(placeholders), chunk)
            for used_car_id, listing_url in cur.fetchall():
                url_to_id[str(listing_url)] = int(used_car_id)

    return url_to_id


# -------------------------------------------------
# leases만 적재
# -------------------------------------------------
def upsert_leases_from_csv_df(df: pd.DataFrame, conn: pymysql.Connection) -> int:
    """
    CSV에서 리스/승계 매물만 골라 leases 테이블 업서트.

    전제:
    - used_cars가 먼저 적재되어 있어야 함
    - CSV의 detail_url == used_cars.listing_url
    - leases.used_car_id UNIQUE(1:1) + ON DUPLICATE KEY UPDATE로 재실행 안전
    """

    required_cols = [
        "detail_url",
        "rent_yn_detail",
        "support_money_wan",
        "remain_months",
        "total_months",
        "monthly_rent_wan",
        "acquisition_cost_wan",
    ]
    missing = [c for c in required_cols if c not in df.columns]
    if missing:
        raise ValueError(f"CSV columns missing: {missing}")

    # 1) leases 후보만 모으기 (url -> payload)
    # payload: (support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
    lease_payload_by_url: Dict[str, Tuple[int, int, int, int, int]] = {}

    for r in df.itertuples(index=False):
        listing_url = norm_text(getattr(r, "detail_url"))
        if not listing_url:
            continue

        is_lease = to_is_lease(getattr(r, "rent_yn_detail"))
        if is_lease != 1:
            continue

        support_amount = to_won_from_wan(getattr(r, "support_money_wan"))
        remaining_months = to_int_safe(getattr(r, "remain_months"))
        total_contract_months = to_int_safe(getattr(r, "total_months"))
        monthly_rent_fee = to_won_from_wan(getattr(r, "monthly_rent_wan"))
        handling_fee = to_won_from_wan(getattr(r, "acquisition_cost_wan"))

        # 같은 URL이 여러 번 나오면 마지막 값으로 덮어씀(임시 ingest에 유리)
        lease_payload_by_url[listing_url] = (
            support_amount,
            remaining_months,
            total_contract_months,
            monthly_rent_fee,
            handling_fee,
        )

    if not lease_payload_by_url:
        print("[INFO] No lease rows found in CSV.")
        return 0

    # 2) URL -> used_car_id 조회
    urls = list(lease_payload_by_url.keys())
    url_to_used_id = fetch_used_car_ids_by_urls(conn, urls)

    # 3) leases 업서트
    insert_leases_sql = """
    INSERT INTO leases (
        used_car_id,
        support_amount,
        remaining_months,
        total_contract_months,
        monthly_rent_fee,
        handling_fee
    ) VALUES (
        %s, %s, %s, %s, %s, %s
    )
    ON DUPLICATE KEY UPDATE
      support_amount = VALUES(support_amount),
      remaining_months = VALUES(remaining_months),
      total_contract_months = VALUES(total_contract_months),
      monthly_rent_fee = VALUES(monthly_rent_fee),
      handling_fee = VALUES(handling_fee)
    """

    rows: List[Tuple[int, int, int, int, int, int]] = []
    missing_usedcar = 0

    for url, payload in lease_payload_by_url.items():
        used_car_id = url_to_used_id.get(url)
        if used_car_id is None:
            missing_usedcar += 1
            continue

        support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee = payload
        rows.append(
            (
                used_car_id,
                support_amount,
                remaining_months,
                total_contract_months,
                monthly_rent_fee,
                handling_fee,
            )
        )

    if not rows:
        print("[WARN] Lease rows exist in CSV, but none matched used_cars.listing_url.")
        return 0

    with conn.cursor() as cur:
        cur.executemany(insert_leases_sql, rows)

    conn.commit()

    print(f"[INFO] Inserted/Updated rows into leases: {len(rows)}")
    if missing_usedcar:
        print(f"[WARN] Skipped leases because used_cars not found by listing_url: {missing_usedcar}")

    return len(rows)


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

    try:
        upsert_leases_from_csv_df(df, conn)
    finally:
        conn.close()


if __name__ == "__main__":
    main()
