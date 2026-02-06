# -*- coding: utf-8 -*-
"""
algorithm.recommend
- 추천/탐색 필터링
- 환산주행거리 + value_score 계산
"""
from __future__ import annotations

from dataclasses import dataclass
from typing import List, Optional, Dict, Any, Tuple

import numpy as np
import pandas as pd


@dataclass
class RecommendParams:
    brands: List[str]
    fuels: List[str]
    body_types: List[str]
    max_price_manwon: float
    min_year: int
    max_mileage_km: int
    w_price: float  # 0~1
    top_n: int


@dataclass
class RecommendResult:
    df_scored: pd.DataFrame
    total_count: int
    avg_value_score: float
    best_row: Dict[str, Any]


def _minmax_score(series: pd.Series, reverse: bool = True) -> pd.Series:
    """reverse=True면 값이 작을수록 점수↑ (가격/환산주행 같은 케이스)"""
    v = pd.to_numeric(series, errors="coerce").astype(float)
    vmin, vmax = float(v.min()), float(v.max())
    if vmax - vmin < 1e-12:
        # 모두 같은 값이면 1점 고정
        return pd.Series(np.ones(len(v)), index=series.index, dtype=float)
    norm = (v - vmin) / (vmax - vmin)
    return 1 - norm if reverse else norm


def recommend(df_all: pd.DataFrame, params: RecommendParams) -> RecommendResult:
    df = df_all.copy()

    # filters (독립 적용)
    if params.brands:
        df = df[df["brand"].isin(params.brands)]
    if params.fuels:
        df = df[df["fuel_type"].isin(params.fuels)]
    if params.body_types:
        df = df[df["body_type"].isin(params.body_types)]

    df = df[
        (df["price_manwon"] <= params.max_price_manwon)
        & (df["year_int"] >= params.min_year)
        & (df["mileage_km"] <= params.max_mileage_km)
    ].copy()

    if df.empty:
        raise ValueError("조건에 맞는 매물이 없습니다. 조건을 완화해보세요.")

    # scoring
    base_year = int(pd.Timestamp.today().year)
    df["age"] = base_year - pd.to_numeric(df["year_int"], errors="coerce").astype(float)
    df["converted_mileage"] = (df["age"] * 22000.0) + pd.to_numeric(df["mileage_km"], errors="coerce").astype(float)

    w_price = float(params.w_price)
    w_price = min(max(w_price, 0.0), 1.0)
    w_cond = 1.0 - w_price

    df["price_score"] = _minmax_score(df["price_manwon"], reverse=True)
    df["condition_score"] = _minmax_score(df["converted_mileage"], reverse=True)
    df["value_score"] = (df["price_score"] * w_price + df["condition_score"] * w_cond) * 100.0

    df = df.sort_values("value_score", ascending=False).reset_index(drop=True)
    df["가성비 순위"] = df.index + 1

    best = df.iloc[0].to_dict()

    return RecommendResult(
        df_scored=df,
        total_count=int(len(df)),
        avg_value_score=float(df["value_score"].mean()),
        best_row=best,
    )
