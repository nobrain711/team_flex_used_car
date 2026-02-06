# ============================================================
# 0. 목적/개요
# - 카탈로그(제조사/모델/세부모델 목록)를 준비한 뒤,
#   각 세부모델에 대해 매물 리스트/상세를 수집하여 CSV로 저장한다.
# - catalog_all.csv가 없으면 market_price_new.php에서 카탈로그를 생성한다.
# ============================================================

import pandas as pd
from config import CATALOG_CSV, OUT_CSV
from catalog_discover import discover_catalog
from crawl_market_list import crawl_one_detail


# ============================================================
# 1. 실행 흐름(main)
# - 1) 카탈로그 로드(없으면 생성 후 저장)
# - 2) 카탈로그 각 행(세부모델)에 대해 크롤링 수행
# - 3) 수집 결과에 이름 컬럼(제조사/모델/세부모델) 병합
# - 4) OUT_CSV로 저장
# ============================================================

def main():
    # 1) 카탈로그 로드(없으면 생성)
    try:
        catalog_df = pd.read_csv(CATALOG_CSV, encoding="utf-8-sig")
        print("[RUN] loaded catalog:", CATALOG_CSV, "rows:", len(catalog_df))
    except FileNotFoundError:
        cat_k = discover_catalog("K")
        cat_i = discover_catalog("I")
        catalog_df = pd.concat([cat_k, cat_i], ignore_index=True)

        catalog_df.to_csv(CATALOG_CSV, index=False, encoding="utf-8-sig")
        print("[RUN] saved catalog:", CATALOG_CSV, "rows:", len(catalog_df))

    # 2) 카탈로그 기준으로 상세 수집
    all_rows = []
    for idx, r in catalog_df.iterrows():
        gubun = r["gubun"]
        maker_no = int(r["maker_no"])
        group_no = int(r["group_no"])
        detail_no = int(r["detail_no"])

        print(
            f"[RUN] ({idx+1}/{len(catalog_df)}) "
            f"gubun={gubun} maker={maker_no} group={group_no} detail={detail_no}"
        )
        rows = crawl_one_detail(gubun, maker_no, group_no, detail_no)
        all_rows.extend(rows)

    df = pd.DataFrame(all_rows)

    # 3) 이름 컬럼 붙이기(제조사/모델/세부모델)
    df = df.merge(
        catalog_df[["gubun", "maker_no", "maker_name", "group_no", "group_name", "detail_no", "detail_name"]],
        on=["gubun", "maker_no", "group_no", "detail_no"],
        how="left"
    )

    # 4) 저장
    df.to_csv(OUT_CSV, index=False, encoding="utf-8-sig")
    print("[OK] saved:", OUT_CSV, "rows:", len(df))


if __name__ == "__main__":
    main()