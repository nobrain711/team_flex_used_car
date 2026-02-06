# -*- coding: utf-8 -*-
"""
05_streamlit_app/app.py

실행:
  streamlit run 05_streamlit_app/app.py

DB 설정 (필수):
  .streamlit/secrets.toml 또는 환경변수
  DB_HOST, DB_PORT, DB_NAME, DB_USER, DB_PASS
"""

from __future__ import annotations

import sys
from pathlib import Path

import numpy as np
import pandas as pd
import streamlit as st
import plotly.express as px

# ---------------------------------------------------------
# Import path setup
# ---------------------------------------------------------
ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "03_data_pipeline"))
sys.path.insert(0, str(ROOT / "04_algorithm"))

from data_pipeline.db import get_engine, load_db  # noqa: E402
from algorithm.price_fit import analyze_price_fit  # noqa: E402
from algorithm.recommend import RecommendParams, recommend  # noqa: E402


st.set_page_config(page_title="중고차 구매 가이드", page_icon="🚗", layout="wide")

st.markdown(
    """
<style>
.stApp{
  background:
    radial-gradient(1100px 520px at 18% 10%, rgba(37,99,235,0.18), transparent 55%),
    radial-gradient(900px 420px at 82% 0%, rgba(59,130,246,0.10), transparent 55%),
    #0B1220;
  color: rgba(255,255,255,0.92);
}
.block-container{
  padding-top: 3.0rem !important;
  padding-bottom: 1.6rem !important;
  max-width: 1200px;
}
section[data-testid="stSidebar"] > div{
  background:#0F172A;
  border-right:1px solid rgba(148,163,184,0.14);
}
.hero-title{ font-size: 2.15rem; font-weight: 850; letter-spacing: -0.02em; margin: 0 0 0.35rem 0; }
.hero-subtitle{ font-size: 1.02rem; color: rgba(255,255,255,0.70); margin: 0 0 1.45rem 0; }

.landing-card{
  background: rgba(255,255,255,0.04);
  border: 1px solid rgba(255,255,255,0.10);
  border-radius: 18px;
  padding: 1.15rem 1.15rem 1.05rem 1.15rem;
  box-shadow: 0 14px 40px rgba(0,0,0,0.26);
}
.landing-card .title{ font-size: 1.15rem; font-weight: 800; margin: 0 0 0.55rem 0; letter-spacing: -0.01em; }
.landing-card .desc{ font-size: 0.98rem; color: rgba(255,255,255,0.72); line-height: 1.55; margin: 0 0 0.95rem 0; }

.card{
  background: rgba(255,255,255,0.04);
  border: 1px solid rgba(148,163,184,0.18);
  border-radius: 16px;
  padding: 12px 14px;
  display:flex;
  flex-direction:column;
  gap:6px;
  min-height: 92px;
  justify-content: space-between;
}
.card .k{ font-size: 0.80rem !important; font-weight: 800 !important; letter-spacing: 0.02em; text-transform: uppercase; color: rgba(255,255,255,0.62) !important; }
.card .v{ font-size: 1.45rem !important; font-weight: 900 !important; letter-spacing: -0.02em; color: rgba(255,255,255,0.95) !important; line-height: 1.12; }
.card .s{ font-size: 0.88rem !important; font-weight: 600 !important; color: rgba(148,163,184,0.95) !important; line-height: 1.25; }

div.stButton > button{
  border-radius: 14px;
  padding: 0.85rem 1rem;
  font-weight: 800;
  border: 1px solid rgba(255,255,255,0.14);
  background: rgba(255,255,255,0.06);
}
div.stButton > button:hover{
  background: rgba(255,255,255,0.10);
  border-color: rgba(255,255,255,0.22);
}
div.stButton > button[kind="primary"]{
  border: none !important;
  background: linear-gradient(135deg, rgba(37,99,235,0.98), rgba(59,130,246,0.92)) !important;
  box-shadow: 0 10px 30px rgba(37,99,235,0.22);
}
div.stButton > button[kind="primary"]:hover{ filter: brightness(1.05); }
div.stButton > button[kind="secondary"]{
  background: transparent !important;
  border: 1px solid rgba(255,255,255,0.18) !important;
}
div.stButton > button[kind="secondary"]:hover{ background: rgba(255,255,255,0.06) !important; }

[data-testid="stDataFrame"]{ border-radius: 14px; overflow:hidden; }
</style>
""",
    unsafe_allow_html=True,
)

COLOR_ME = "#FACC15"
COLOR_MED = "#38BDF8"


def card(k: str, v: str, s: str = ""):
    st.markdown(
        f"""
<div class="card">
  <div class="k">{k}</div>
  <div class="v">{v}</div>
  <div class="s">{s}</div>
</div>
""",
        unsafe_allow_html=True,
    )


@st.cache_data(ttl=900)
def load_all(used_car_table: str = "used_cars") -> pd.DataFrame:
    engine = get_engine()
    return load_db(engine, used_car_table=used_car_table)


try:
    df_all = load_all()
except Exception as e:
    st.error(str(e))
    st.stop()

if df_all.empty:
    st.warning("DB에서 유효한 매물이 로드되지 않았습니다. (price>0, is_lease!=1 조건 등 확인)")
    st.stop()


STEP_MAIN = "main"
STEP_PRICE_FIT = "price_fit"
STEP_RECOMMEND = "recommend"

if "step" not in st.session_state:
    st.session_state.step = STEP_MAIN


def go(step: str):
    st.session_state.step = step
    st.rerun()


def parse_int(name: str, raw: str, min_v: int, max_v: int) -> int:
    s = (raw or "").strip().replace(",", "")
    if not s:
        raise ValueError(f"{name}을(를) 입력하세요. (예: {min_v})")
    if not s.isdigit():
        raise ValueError(f"{name}은(는) 숫자만 입력하세요.")
    v = int(s)
    if v < min_v or v > max_v:
        raise ValueError(f"{name} 범위: {min_v}~{max_v}")
    return v


def parse_float(name: str, raw: str, min_v: float, max_v: float) -> float:
    s = (raw or "").strip().replace(",", "")
    if not s:
        raise ValueError(f"{name}을(를) 입력하세요.")
    try:
        v = float(s)
    except Exception:
        raise ValueError(f"{name}은(는) 숫자로 입력하세요.")
    if v < min_v or v > max_v:
        raise ValueError(f"{name} 범위: {min_v}~{max_v}")
    return v


def render_main():
    st.markdown('<div class="hero-title">중고차 구매 가이드</div>', unsafe_allow_html=True)
    st.markdown('<div class="hero-subtitle">가격 적정도 분석 또는 조건 기반 추천을 선택하세요.</div>', unsafe_allow_html=True)

    c1, c2 = st.columns(2, gap="large")

    with c1:
        st.markdown(
            '''
            <div class="landing-card">
              <div class="title">구매 차량이 정해진 경우</div>
              <div class="desc">브랜드/모델과 차량 조건을 입력하면 유사 매물 기반으로 기대가격과 가격 적정도를 제공합니다.</div>
            ''',
            unsafe_allow_html=True,
        )
        if st.button("가격 적정도 분석", type="primary", use_container_width=True):
            go(STEP_PRICE_FIT)
        st.markdown("</div>", unsafe_allow_html=True)

    with c2:
        st.markdown(
            '''
            <div class="landing-card">
              <div class="title">아직 후보를 탐색 중인 경우</div>
              <div class="desc">예산·연식·주행 조건으로 후보를 좁히고, 선호도(가격↔상태) 기준으로 추천합니다.</div>
            ''',
            unsafe_allow_html=True,
        )
        if st.button("추천 후보 탐색", type="secondary", use_container_width=True):
            go(STEP_RECOMMEND)
        st.markdown("</div>", unsafe_allow_html=True)


def render_price_fit():
    st.title("📌 가격적정도 분석")
    st.caption("선택한 모델군에서 연식·주행거리 유사 매물로 기대가격을 계산하고, 분포에서 내 위치를 보여줍니다.")

    with st.sidebar:
        st.header("가격적정도 입력")
        if st.button("⬅ 메인으로", key="back_to_main_from_price"):
            go(STEP_MAIN)

        brands = sorted(df_all["brand"].dropna().unique())
        brand = st.selectbox("브랜드", brands, key="pf_brand")

        sub = df_all[df_all["brand"] == brand]
        models = sorted(sub["model_family"].dropna().unique())
        model = st.selectbox("모델(대분류)", models, key="pf_model")

        st.divider()
        st.subheader("내 차량")
        year_s = st.text_input("연식(년)", value="", placeholder="예: 2019", key="pf_year")
        mileage_s = st.text_input("주행거리(km)", value="", placeholder="예: 50000", key="pf_mileage")
        price_s = st.text_input("가격(만원)", value="", placeholder="예: 1500", key="pf_price")

        run = st.button("분석 실행", type="primary", key="pf_run")

    if not run:
        st.info("왼쪽 입력 후 **분석 실행**을 눌러주세요.")
        return

    try:
        year = parse_int("연식", year_s, 1990, 2035)
        mileage = parse_float("주행거리(km)", mileage_s, 0, 500000)
        price = parse_float("가격(만원)", price_s, 0, 200000)
    except ValueError as e:
        st.error(str(e))
        return

    try:
        res = analyze_price_fit(df_all=df_all, brand=brand, model_family=model, year_int=year, mileage_km=mileage, price_manwon=price)
    except Exception as e:
        st.warning(str(e))
        return

    c1, c2, c3, c4 = st.columns([1.6, 1.0, 1.1, 1.0], gap="medium")
    with c1:
        card("선택", f"{brand} / {model}", f"비교군 {res.cluster_size}개 (유사도 기반)")
    with c2:
        card("기대가격", f"{res.expected_manwon:,.0f}만원", "연식+주행 기준")
    with c3:
        sign = "+" if res.premium_manwon > 0 else ""
        card("가격차이", f"{sign}{res.premium_manwon:,.0f}만원", "실제 − 기대")
    with c4:
        card("판정", res.label, "Q1~Q3 기준")

    st.divider()

    fig = px.histogram(pd.DataFrame({"premium": res.premium_series}), x="premium", nbins=28, opacity=0.95, template="plotly_dark")

    xmin = float(np.min(res.premium_series))
    xmax = float(np.max(res.premium_series))

    fig.add_vrect(x0=xmin, x1=res.q1, fillcolor="rgba(34,197,94,0.18)", line_width=0)
    fig.add_vrect(x0=res.q1, x1=res.q3, fillcolor="rgba(56,189,248,0.12)", line_width=0)
    fig.add_vrect(x0=res.q3, x1=xmax, fillcolor="rgba(239,68,68,0.16)", line_width=0)

    fig.add_vline(x=res.premium_manwon, line_dash="dash", line_color=COLOR_ME, line_width=3)
    fig.add_vline(x=res.median, line_dash="dot", line_color=COLOR_MED, line_width=2)

    fig.update_layout(
        height=520,
        xaxis_title="가격차이(만원) = 실제 − 기대  (오른쪽일수록 비쌈)",
        yaxis_title="매물 수",
        bargap=0.08,
        plot_bgcolor="rgba(0,0,0,0)",
        paper_bgcolor="rgba(0,0,0,0)",
        font=dict(color="#E5E7EB"),
    )
    st.plotly_chart(fig, use_container_width=True)


def render_recommend():
    st.title("추천/탐색")
    st.caption("예산·연식·주행거리 조건으로 후보를 좁히고, ‘가성비 점수’로 상위 후보를 추천합니다.")

    with st.sidebar:
        st.header("추천 조건")
        if st.button("⬅ 메인으로", key="back_to_main_from_reco"):
            go(STEP_MAIN)

        brands = sorted(df_all["brand"].dropna().unique())
        sel_brands = st.multiselect("브랜드(복수 선택)", brands, default=[], key="reco_brands")

        max_price = st.slider("최대 가격(만원)", 100, int(df_all["price_manwon"].quantile(0.95)), 2000, step=50, key="reco_price")
        min_year = st.slider("최소 연식", int(df_all["year_int"].quantile(0.05)), int(df_all["year_int"].max()), int(df_all["year_int"].quantile(0.5)), step=1, key="reco_year")
        max_mileage = st.slider("최대 주행거리(km)", 0, int(df_all["mileage_km"].quantile(0.95)), 80000, step=5000, key="reco_mileage")

        st.markdown("#### 가성비 가중치")
        w_price = st.slider("가격 비중(%)", 0, 100, 50, step=5, key="reco_w_price") / 100.0
        w_cond = 1.0 - w_price
        st.caption(f"현재 설정: 가격 {int(w_price*100)}% / 상태 {int(w_cond*100)}%")

        fuels = sorted(df_all.get("fuel_type", pd.Series(dtype=str)).dropna().unique())
        sel_fuels = st.multiselect("연료(선택)", fuels, default=[], key="reco_fuels")

        body_types = sorted(df_all.get("body_type", pd.Series(dtype=str)).dropna().unique())
        sel_bodies = st.multiselect("차종(선택)", body_types, default=[], key="reco_body")

        top_n = st.select_slider("추천 개수", options=[10, 20, 30, 50], value=10, key="reco_topn")
        run = st.button("추천 보기", type="primary", key="reco_run")

    if not run:
        st.info("왼쪽에서 조건을 정한 뒤 **추천 보기**를 눌러주세요.")
        return

    try:
        params = RecommendParams(
            brands=list(sel_brands),
            fuels=list(sel_fuels),
            body_types=list(sel_bodies),
            max_price_manwon=float(max_price),
            min_year=int(min_year),
            max_mileage_km=int(max_mileage),
            w_price=float(w_price),
            top_n=int(top_n),
        )
        rr = recommend(df_all, params)
    except Exception as e:
        st.warning(str(e))
        return

    df = rr.df_scored

    c1, c2, c3 = st.columns([1.2, 1.0, 1.0], gap="medium")
    with c1:
        card("조건 매물", f"{rr.total_count:,}개", "필터 적용 결과")
    with c2:
        card("평균 가성비", f"{rr.avg_value_score:.1f}점", "0~100")
    with c3:
        best = rr.best_row
        card("1위", f"{best.get('brand','')} / {best.get('model_family','')}", f"{best.get('price_manwon',0):,.0f}만원 · {int(best.get('year_int',0))}년")

    st.divider()

    st.subheader(f"가성비 TOP {params.top_n}")
    show_cols = ["가성비 순위", "brand", "model_family", "price_manwon", "year_int", "mileage_km", "fuel_type", "body_type", "value_score", "listing_url"]
    show_cols = [c for c in show_cols if c in df.columns]
    st.dataframe(df.head(int(params.top_n))[show_cols], use_container_width=True)

    st.divider()
    st.subheader("📈 시장 분포에서 위치 보기")
    fig = px.scatter(
        df.sample(min(len(df), 2000), random_state=7),
        x="converted_mileage",
        y="price_manwon",
        color="value_score",
        labels={"converted_mileage": "환산주행(연식 반영)", "price_manwon": "가격(만원)", "value_score": "가성비"},
        template="plotly_dark",
        opacity=0.85,
    )
    fig.update_layout(height=520)
    st.plotly_chart(fig, use_container_width=True)


if st.session_state.step == STEP_MAIN:
    render_main()
elif st.session_state.step == STEP_PRICE_FIT:
    render_price_fit()
elif st.session_state.step == STEP_RECOMMEND:
    render_recommend()
else:
    st.session_state.step = STEP_MAIN
    st.rerun()
