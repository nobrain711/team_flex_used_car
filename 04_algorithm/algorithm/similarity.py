# -*- coding: utf-8 -*-
"""
algorithm.similarity
유사도 군집 구성 로직 래퍼
"""
from __future__ import annotations

from typing import Dict, Any, Optional
import pandas as pd

from .usedcar_analysis import build_similarity_cluster  # 기존 구현 재사용


def get_cluster(
    df_all: pd.DataFrame,
    target: Dict[str, Any],
    key_col: str = "model_family",
    min_cluster_size: int = 10,
) -> pd.DataFrame:
    """
    target 예시:
      {"model_family": "...", "year_int": 2019, "mileage_km": 50000, "price_manwon": 1500}
    """
    cluster = build_similarity_cluster(df_all, target, key_col=key_col)
    if cluster is None or len(cluster) < min_cluster_size:
        return pd.DataFrame()
    return cluster.copy()
