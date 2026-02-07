# -*- coding: utf-8 -*-
"""
data_pipeline.db

- DB 연결 엔진 생성
- 서비스용 데이터 로딩 + 최소 전처리(타입/결측/가격단위 자동보정/키 생성)

주의:
- secrets.toml(Streamlit) 또는 환경변수로 DB 정보를 주입하세요.
- Streamlit 앱(05_streamlit_app/app.py)에서 캐시(st.cache_data)는 앱 쪽에서 처리합니다.
"""

from __future__ import annotations

import os
from typing import Optional, Dict, Any

import numpy as np
import pandas as pd
from sqlalchemy import create_engine, text
from sqlalchemy.engine import Engine


def _get_config_from_env_or_streamlit() -> Dict[str, str]:
    """Streamlit 환경이면 st.secrets를 먼저 보고, 아니면 환경변수만 사용."""
    cfg: Dict[str, str] = {}
    # 1) try streamlit secrets
    try:
        import streamlit as st  # type: ignore

        for k in ["DB_HOST", "DB_PORT", "DB_NAME", "DB_USER", "DB_PASS"]:
            if k in st.secrets and str(st.secrets[k]).strip():
                cfg[k] = str(st.secrets[k])
    except Exception:
        pass

    # 2) fallback to env
    for k in ["DB_HOST", "DB_PORT", "DB_NAME", "DB_USER", "DB_PASS"]:
        v = os.environ.get(k)
        if v is not None and str(v).strip():
            cfg.setdefault(k, str(v))

    missing = [k for k in ["DB_HOST", "DB_PORT", "DB_NAME", "DB_USER", "DB_PASS"] if k not in cfg]
    if missing:
        raise RuntimeError(
            "DB 설정 누락: "
            + ", ".join(missing)
            + ". .streamlit/secrets.toml 또는 환경변수로 설정하세요."
        )
    return cfg


def get_engine() -> Engine:
    cfg = _get_config_from_env_or_streamlit()

    url = (f"mysql+pymysql://{cfg['DB_USER']}:{cfg['DB_PASS']}@{cfg['DB_HOST']}:{cfg['DB_PORT']}/{cfg['DB_NAME']}")

    engine = create_engine(
        url,
        connect_args={"charset": "utf8mb4"},
        pool_pre_ping=True,
    )

    with engine.connect() as conn:
        conn.execute(text("SET NAMES utf8mb4"))

    return


def load_db(engine: Engine, used_car_table: str = "used_cars") -> pd.DataFrame:
    """
    서비스에 필요한 컬럼 형태로 조인해서 로딩.

    used_car_table: used_cars / used_cars_price0_backup 등 테이블명 교체 가능
    """
    query = f"""
    SELECT
      m.maker_name  AS brand,
      cs.model_name AS model_name_raw,
      cs.body_type  AS body_type,
      (YEAR(CURDATE()) - FLOOR(uc.car_age_months/12)) AS year_int,
      uc.mileage_km AS mileage_km,
      uc.price      AS price_raw,
      cs.fuel_type  AS fuel_type,
      uc.is_lease   AS is_lease,
      uc.listing_url AS listing_url
    FROM {used_car_table} uc
    JOIN car_specs cs ON cs.car_spec_id = uc.car_spec_id
    JOIN makers m     ON m.maker_id     = cs.maker_id
    """

    df = pd.read_sql(text(query), engine)

    # ---- types/cleanup
    for c in ["brand", "model_name_raw", "fuel_type", "body_type", "listing_url"]:
        if c in df.columns:
            df[c] = df[c].astype(str).str.strip()

    for c in ["year_int", "mileage_km", "price_raw", "is_lease"]:
        if c in df.columns:
            df[c] = pd.to_numeric(df[c], errors="coerce")

    # ---- basic filters
    required = ["brand", "model_name_raw", "year_int", "mileage_km", "price_raw"]
    df = df.dropna(subset=[c for c in required if c in df.columns]).copy()

    df = df[(df["price_raw"] > 0) & (df["mileage_km"] >= 0)].copy()
    df = df[(df["year_int"] >= 1990) & (df["year_int"] <= 2035)].copy()
    if "is_lease" in df.columns:
        df = df[df["is_lease"].fillna(0) != 1].copy()

    # ---- price unit auto-detect (원/만원 혼재 대응)
    med = float(df["price_raw"].median())
    if med > 100000:  # 원으로 추정
        df["price_manwon"] = df["price_raw"] / 10000.0
        df.attrs["price_unit"] = "원(→만원 변환)"
    else:  # 만원으로 추정
        df["price_manwon"] = df["price_raw"].astype(float)
        df.attrs["price_unit"] = "만원(그대로 사용)"

    # ---- 모델 대분류: car_specs.model_name 그대로
    df["model_family"] = df["model_name_raw"]
    df["model_key"] = (df["brand"] + "_" + df["model_family"]).str.replace(" ", "", regex=False)

    keep = [
        "brand",
        "model_name_raw",
        "body_type",
        "year_int",
        "mileage_km",
        "price_manwon",
        "fuel_type",
        "model_family",
        "model_key",
        "listing_url",
    ]
    keep = [c for c in keep if c in df.columns]
    df = df[keep].copy()

    return df
