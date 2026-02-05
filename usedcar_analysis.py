from __future__ import annotations

import os
import re
from typing import Dict, List, Optional, Union

import numpy as np
import pandas as pd


# ============================================================
# 0) 컬럼 표준화 + 숫자 파싱
# ============================================================

_DEFAULT_RENAME_MAP = {
    "model_name": "model_name_raw",
    "year": "year_int",
    "mileage": "mileage_km",
    "price": "price_manwon",
    "fuel": "fuel_type",
}


def standardize_columns(df: pd.DataFrame, rename_map: Optional[Dict[str, str]] = None) -> pd.DataFrame:
    """CSV/DB 컬럼명을 표준 컬럼명으로 맞춘 복사본을 반환."""
    d = df.copy()
    m = dict(_DEFAULT_RENAME_MAP)
    if rename_map:
        m.update(rename_map)

    cols = set(d.columns)
    apply_map = {k: v for k, v in m.items() if k in cols and v not in cols}
    if apply_map:
        d = d.rename(columns=apply_map)
    return d


_PRICE_RE = re.compile(r"([0-9\.,]+)")
_YEAR_YYMM_RE = re.compile(r"^\s*(\d{2})\s*/\s*(\d{2})\s*$")
_MILE_MAN_RE = re.compile(r"([0-9\.,]+)\s*만")


def parse_price_manwon(x) -> Optional[float]:
    """
    '1,550만원' / '1550' 등 -> 만원 단위 숫자
    """
    if x is None or (isinstance(x, float) and np.isnan(x)):
        return None
    s = str(x).strip()
    m = _PRICE_RE.search(s)
    if not m:
        return None
    num = m.group(1).replace(",", "")
    try:
        return float(num)
    except Exception:
        return None


def parse_mileage_km(x) -> Optional[float]:
    """
    '42만km' / '420,000' 등 -> km 단위 숫자
    """
    if x is None or (isinstance(x, float) and np.isnan(x)):
        return None
    s = str(x).strip().lower().replace(" ", "")
    # '만km' 형태
    m = _MILE_MAN_RE.search(s)
    if m:
        num = m.group(1).replace(",", "")
        try:
            return float(num) * 10000.0
        except Exception:
            return None
    # 일반 숫자
    m2 = _PRICE_RE.search(s)
    if not m2:
        return None
    num = m2.group(1).replace(",", "")
    try:
        return float(num)
    except Exception:
        return None


def parse_year_int(x) -> Optional[int]:
    """
    DB는 보통 year_int가 int(예: 2019)
    CSV는 '10/08' 같은 형태가 있을 수 있어서 -> 2010으로 변환(월은 무시)
    """
    if x is None or (isinstance(x, float) and np.isnan(x)):
        return None
    # 이미 int/float라면
    if isinstance(x, (int, np.integer)):
        return int(x)
    if isinstance(x, (float, np.floating)) and np.isfinite(x):
        return int(x)

    s = str(x).strip()
    # 'YYYY' 형태
    if re.match(r"^\d{4}$", s):
        return int(s)

    # 'YY/MM' 형태
    m = _YEAR_YYMM_RE.match(s)
    if m:
        yy = int(m.group(1))
        # 00-29 -> 2000대, 30-99 -> 1900대로(중고차 데이터 가정)
        year = 2000 + yy if yy <= 29 else 1900 + yy
        return year

    return None


def prepare_dataframe(df: pd.DataFrame) -> pd.DataFrame:
    """
    CSV/DB 어느 쪽이든:
    1) 컬럼 표준화
    2) 문자열 숫자 파싱
    3) 필수값 있는 행만 필터
    """
    d = standardize_columns(df)

    if "price_manwon" in d.columns:
        d["price_manwon"] = d["price_manwon"].apply(parse_price_manwon)
    if "mileage_km" in d.columns:
        d["mileage_km"] = d["mileage_km"].apply(parse_mileage_km)
    if "year_int" in d.columns:
        d["year_int"] = d["year_int"].apply(parse_year_int)

    # 숫자형 강제
    for c in ["price_manwon", "mileage_km", "year_int"]:
        if c in d.columns:
            d[c] = pd.to_numeric(d[c], errors="coerce")

    # 필수값 필터
    need = ["price_manwon", "year_int", "mileage_km"]
    mask = pd.Series(True, index=d.index)
    for c in need:
        if c in d.columns:
            mask &= d[c].notna()
    d = d[mask].copy()

    # brand는 없으면 빈 값
    if "brand" not in d.columns:
        d["brand"] = ""

    return d


# ============================================================
# 1) 모델명 정규화/패밀리 추출
# ============================================================

ADJECTIVES = {
    "더", "뉴", "올", "THE", "NEW", "ALL",
    "FACELIFT", "페이스리프트", "부분변경", "풀체인지"
}

STOPWORDS = {
    "터보", "디젤", "가솔린", "휘발유", "LPI", "LPG", "HEV", "EV", "PHEV",
    "AWD", "2WD", "4WD", "4MATIC", "4매틱", "XDRIVE", "SDRIVE", "QUATTRO",
    "DCT", "CVT", "AT", "MT", "오토", "수동",
    "프레스티지", "럭셔리", "프리미엄", "모던", "노블레스", "시그니처", "그래비티",
    "인스퍼레이션", "캘리그래피", "스포츠", "GTS", "LIMITED", "리미티드",
}


def normalize_text(s: str) -> str:
    if not isinstance(s, str):
        return ""
    x = s.strip()
    x = re.sub(r"[^\w\s가-힣\-]", " ", x)
    x = re.sub(r"\s+", " ", x).strip()
    return x


def normalize_model_name(name: str) -> str:
    """세부 포함 정규화(model_key)"""
    return normalize_text(name).upper()


def extract_model_family(model_name_raw: str, brand: Optional[str] = None) -> str:
    """트림/세부스펙 제거 후 대분류 모델만 추출"""
    if not isinstance(model_name_raw, str):
        return ""

    s = normalize_text(model_name_raw)

    if isinstance(brand, str) and brand.strip():
        b = brand.strip()
        if s.startswith(b + " "):
            s = s[len(b):].strip()

    tokens = s.split()

    cleaned: List[str] = []
    for t in tokens:
        tu = t.upper()
        if tu in ADJECTIVES or t in ADJECTIVES:
            continue
        cleaned.append(t)

    kept: List[str] = []
    for t in cleaned:
        tu = t.upper()

        if re.match(r"^\d+(\.\d+)?$", tu) and len(kept) >= 1:
            break
        if re.match(r"^\d{3,4}[A-Z].*$", tu) and len(kept) >= 1:
            break
        if tu in STOPWORDS and len(kept) >= 1:
            break
        if re.match(r"^\d+인승$", t) and len(kept) >= 1:
            break

        kept.append(t)

    family = " ".join(kept).strip()
    return re.sub(r"\s+", " ", family).strip().upper()


def add_model_columns(
    df: pd.DataFrame,
    *,
    brand_col: str = "brand",
    model_raw_col: str = "model_name_raw",
    model_key_col: str = "model_key",
    model_family_col: str = "model_family",
) -> pd.DataFrame:
    d = df.copy()
    if model_raw_col not in d.columns:
        raise ValueError(f"df에 '{model_raw_col}' 컬럼이 없습니다. prepare_dataframe()를 먼저 호출하세요.")

    if brand_col not in d.columns:
        d[brand_col] = ""

    if model_key_col not in d.columns:
        d[model_key_col] = d[model_raw_col].fillna("").astype(str).apply(normalize_model_name)

    if model_family_col not in d.columns:
        def _make_family(r):
            b = str(r.get(brand_col, "") or "").strip()
            raw = str(r.get(model_raw_col, "") or "")
            fam = extract_model_family(raw, b)
            if b and fam:
                return f"{b} {fam}".strip()
            if fam:
                return fam
            return b

        d[model_family_col] = d.apply(_make_family, axis=1)

    return d


# ============================================================
# 2) 유사도 클러스터 + 가중 사분위
# ============================================================

def build_similarity_cluster(
    df: pd.DataFrame,
    target: Dict,
    *,
    key_col: str = "model_family",
    year_col: str = "year_int",
    mileage_col: str = "mileage_km",
    price_col: str = "price_manwon",
    fuel_col: str = "fuel_type",
    alpha_year: float = 1.0,
    beta_mile: float = 1.0 / 2.2,
    fuel_same: float = 1.0,
    fuel_diff: float = 0.8,
    min_weight: float = 1e-6,
    top_k: int = 200
) -> pd.DataFrame:
    d = df.copy()

    required = [price_col, year_col, mileage_col, key_col]
    for c in required:
        if c not in d.columns:
            raise ValueError(f"df에 '{c}' 컬럼이 없습니다.")

    d = d[d[price_col].notna() & d[year_col].notna() & d[mileage_col].notna()].copy()

    key_val = target.get(key_col, None)
    if key_val is None or str(key_val).strip() == "":
        raise ValueError(f"target['{key_col}'] 값이 필요합니다.")
    d = d[d[key_col].astype(str) == str(key_val)].copy()

    if len(d) == 0:
        return d.assign(weight=pd.Series(dtype=float))

    t_year = float(target[year_col])
    t_mile = float(target[mileage_col])

    d["year_diff"] = (d[year_col].astype(float) - t_year).abs()
    d["mile_diff_10k"] = (d[mileage_col].astype(float) - t_mile).abs() / 10000.0

    d["base_weight"] = np.exp(-(alpha_year * d["year_diff"] + beta_mile * d["mile_diff_10k"]))

    if fuel_col in d.columns and fuel_col in target and pd.notna(target.get(fuel_col)):
        t_fuel = str(target[fuel_col])
        d["fuel_weight"] = np.where(d[fuel_col].astype(str) == t_fuel, fuel_same, fuel_diff)
    else:
        d["fuel_weight"] = 1.0

    d["weight"] = d["base_weight"] * d["fuel_weight"]

    if min_weight is not None:
        d = d[d["weight"] >= float(min_weight)].copy()

    return d.sort_values("weight", ascending=False).head(int(top_k)).copy()


def weighted_quantile(values, quantiles, sample_weight=None):
    values = np.asarray(values, dtype=float)
    quantiles = np.asarray(quantiles, dtype=float)

    if sample_weight is None:
        sample_weight = np.ones_like(values, dtype=float)
    else:
        sample_weight = np.asarray(sample_weight, dtype=float)

    mask = np.isfinite(values) & np.isfinite(sample_weight) & (sample_weight > 0)
    values = values[mask]
    sample_weight = sample_weight[mask]

    if values.size == 0:
        return [None for _ in quantiles]

    sorter = np.argsort(values)
    values = values[sorter]
    sample_weight = sample_weight[sorter]

    cdf = np.cumsum(sample_weight)
    cdf = cdf / cdf[-1]
    return np.interp(quantiles, cdf, values).tolist()


def price_position_judgement(
    cluster_df: pd.DataFrame,
    target_price: float,
    *,
    price_col: str = "price_manwon",
    weight_col: str = "weight"
) -> Dict[str, Union[int, float, None, str]]:
    if cluster_df is None or len(cluster_df) == 0:
        return {"n": 0, "q1": None, "median": None, "q3": None, "label": "데이터 부족"}

    if weight_col not in cluster_df.columns:
        raise ValueError(f"cluster_df에 '{weight_col}' 컬럼이 없습니다. build_similarity_cluster 결과를 넣어주세요.")

    q1, med, q3 = weighted_quantile(
        cluster_df[price_col].values,
        [0.25, 0.50, 0.75],
        sample_weight=cluster_df[weight_col].values
    )

    if q1 is None:
        return {"n": len(cluster_df), "q1": None, "median": None, "q3": None, "label": "데이터 부족"}

    p = float(target_price)
    if p < q1:
        label = "저렴"
    elif p > q3:
        label = "비쌈"
    else:
        label = "적정"

    return {"n": len(cluster_df), "q1": q1, "median": med, "q3": q3, "label": label}


# ============================================================
# 3) DB 로드 (필요할 때만 호출)
# ============================================================

def load_from_mysql(
    *,
    db_user: Optional[str] = None,
    db_password: Optional[str] = None,
    db_host: Optional[str] = None,
    db_port: Optional[int] = None,
    db_name: Optional[str] = None,
    table: str = "fact_car_listing",
) -> pd.DataFrame:
    """필요할 때만 호출해서 MySQL에서 데이터 로드."""
    from sqlalchemy import create_engine

    db_user = db_user or os.getenv("USEDCAR_DB_USER", "usedcar_user")
    db_password = db_password or os.getenv("USEDCAR_DB_PASSWORD", "usedcar_user")
    db_host = db_host or os.getenv("USEDCAR_DB_HOST", "127.0.0.1")
    db_port = db_port or int(os.getenv("USEDCAR_DB_PORT", "3306"))
    db_name = db_name or os.getenv("USEDCAR_DB_NAME", "usedcar_proj")

    engine = create_engine(
        f"mysql+pymysql://{db_user}:{db_password}@{db_host}:{db_port}/{db_name}?charset=utf8mb4"
    )
    return pd.read_sql(f"SELECT * FROM {table}", engine)
