# -*- coding: utf-8 -*-
"""
algorithm.price_fit
- 기대가격(기준선) 계산
- 가격차이(premium) 및 분위수 기반 판정
"""
from __future__ import annotations

from dataclasses import dataclass
from typing import Literal, Dict, Any, Tuple

import numpy as np
import pandas as pd

from .similarity import get_cluster


Label = Literal["저렴", "적정", "비쌈"]


@dataclass
class PriceFitResult:
    brand: str
    model_family: str
    year_int: int
    mileage_km: float
    price_manwon: float

    cluster_size: int
    expected_manwon: float
    premium_manwon: float  # 실제 - 기대

    q1: float
    q3: float
    median: float
    label: Label

    premium_series: np.ndarray  # 비교군의 (실제-기대) 분포
    cluster: pd.DataFrame


def fit_expected_price(cluster: pd.DataFrame, year: int, mileage: float) -> Tuple[float, np.ndarray, np.ndarray]:
    """
    단순 선형 기준선: price = b0 + b1*year + b2*mileage
    반환:
      expected, pred_all, beta
    """
    X = cluster[["year_int", "mileage_km"]].to_numpy(dtype=float)
    y = cluster["price_manwon"].to_numpy(dtype=float)
    X_ = np.c_[np.ones(len(X)), X]
    beta, *_ = np.linalg.lstsq(X_, y, rcond=None)

    expected = float(np.array([1.0, float(year), float(mileage)]) @ beta)
    pred_all = X_ @ beta
    return expected, pred_all, beta


def analyze_price_fit(
    df_all: pd.DataFrame,
    brand: str,
    model_family: str,
    year_int: int,
    mileage_km: float,
    price_manwon: float,
    min_cluster_size: int = 10,
) -> PriceFitResult:
    # 비교군 구성
    target = {
        "model_family": model_family,
        "year_int": year_int,
        "mileage_km": mileage_km,
        "price_manwon": price_manwon,
    }
    cluster = get_cluster(df_all[df_all["brand"] == brand], target, key_col="model_family", min_cluster_size=min_cluster_size)
    if cluster.empty:
        raise ValueError(f"비교군 최소 {min_cluster_size}개가 필요합니다. (현재: 0개)")

    expected, pred_all, _beta = fit_expected_price(cluster, year_int, mileage_km)
    premium = float(price_manwon - expected)

    y = cluster["price_manwon"].to_numpy(dtype=float)
    premium_series = (y - pred_all).astype(float)

    q1, q3 = np.quantile(premium_series, [0.25, 0.75])
    med = float(np.median(premium_series))

    if premium < q1:
        label: Label = "저렴"
    elif premium > q3:
        label = "비쌈"
    else:
        label = "적정"

    return PriceFitResult(
        brand=brand,
        model_family=model_family,
        year_int=int(year_int),
        mileage_km=float(mileage_km),
        price_manwon=float(price_manwon),
        cluster_size=int(len(cluster)),
        expected_manwon=float(expected),
        premium_manwon=float(premium),
        q1=float(q1),
        q3=float(q3),
        median=float(med),
        label=label,
        premium_series=premium_series,
        cluster=cluster,
    )
