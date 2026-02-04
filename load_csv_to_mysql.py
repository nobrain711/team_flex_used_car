# pip install pandas sqlalchemy pymysql

import pandas as pd
from sqlalchemy import create_engine, text

CSV_PATH = r"C:\lecture\02_mysql_workspace\JangHanJae\_01_project_used_car\used_cars_bobaedream_final.csv"


DB_USER = "usedcar_user"
DB_PASSWORD = "usedcar_user"
DB_HOST = "127.0.0.1"   # 로컬이면 127.0.0.1 추천
DB_PORT = 3306
DB_NAME = "usedcar_proj"
TABLE_NAME = "used_car_raw"

# 1) CSV 로드
df = pd.read_csv(CSV_PATH)

# 2) CSV 컬럼 -> DB 컬럼명 매핑 (테이블에 맞게 조정 가능)
# CSV: fuel, seller_name, link 등을 DB에서 fuel_type/seller/url로 저장하고 싶을 때 대응
rename_map = {
    "fuel": "fuel_type",
    "seller_name": "seller",
    "link": "url",
}

df = df.rename(columns=rename_map)

# 3) MySQL 연결 (utf8mb4 필수)
engine = create_engine(
    f"mysql+pymysql://{DB_USER}:{DB_PASSWORD}@{DB_HOST}:{DB_PORT}/{DB_NAME}?charset=utf8mb4"
)

# 4) DB 테이블 컬럼 목록 가져오기
with engine.connect() as conn:
    cols = conn.execute(
        text("""
            SELECT COLUMN_NAME
            FROM INFORMATION_SCHEMA.COLUMNS
            WHERE TABLE_SCHEMA = :db AND TABLE_NAME = :table
            ORDER BY ORDINAL_POSITION
        """),
        {"db": DB_NAME, "table": TABLE_NAME}
    ).fetchall()

table_cols = [c[0] for c in cols]

# 5) df에서 테이블에 실제로 존재하는 컬럼만 골라서 적재
#    (id, created_at 같은 자동 컬럼은 df에 없어도 됨)
insert_cols = [c for c in table_cols if c in df.columns]

df_to_insert = df[insert_cols].copy()

# 6) 적재 (chunksize로 안정성 확보)
df_to_insert.to_sql(
    name=TABLE_NAME,
    con=engine,
    if_exists="append",
    index=False,
    chunksize=1000,
    method="multi"
)

# 7) 적재 결과 확인
with engine.connect() as conn:
    count = conn.execute(text(f"SELECT COUNT(*) FROM {TABLE_NAME}")).scalar()
    print(f"✅ Insert done. {TABLE_NAME} row count =", count)
    sample = conn.execute(text(f"SELECT * FROM {TABLE_NAME} ORDER BY id DESC LIMIT 3")).fetchall()
    print("✅ Latest 3 rows:")
    for row in sample:
        print(row)
