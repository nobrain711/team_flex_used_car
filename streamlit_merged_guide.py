
import numpy as np
import pandas as pd
import streamlit as st
import plotly.express as px
from sqlalchemy import create_engine, text

from usedcar_analysis import (
    add_model_columns,
    build_similarity_cluster,
)

# =========================================================
# CONFIG
# =========================================================
st.set_page_config(page_title="중고차 구매 가이드", page_icon=" ", layout="wide")



# ---- Dark UI ----
st.markdown(
    """
<style>
/* ===== Toss-like (dark) theme ===== */
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

html, body, [class*="css"]{ font-size:14px; }

/* Sidebar */
section[data-testid="stSidebar"] > div{
  background:#0F172A;
  border-right:1px solid rgba(148,163,184,0.14);
}

/* Headings */
.hero-title{
  font-size: 2.15rem;
  font-weight: 850;
  letter-spacing: -0.02em;
  margin: 0 0 0.35rem 0;
}
.hero-subtitle{
  font-size: 1.02rem;
  color: rgba(255,255,255,0.70);
  margin: 0 0 1.45rem 0;
}

/* Cards */
.landing-card{
  background: rgba(255,255,255,0.04);
  border: 1px solid rgba(255,255,255,0.10);
  border-radius: 18px;
  padding: 1.15rem 1.15rem 1.05rem 1.15rem;
  box-shadow: 0 14px 40px rgba(0,0,0,0.26);
}
.landing-card .title{
  font-size: 1.15rem;
  font-weight: 800;
  margin: 0 0 0.55rem 0;
  letter-spacing: -0.01em;
}
.landing-card .desc{
  font-size: 0.98rem;
  color: rgba(255,255,255,0.72);
  line-height: 1.55;
  margin: 0 0 0.95rem 0;
}

/* General card used elsewhere */
.card{
  background: rgba(255,255,255,0.04);
  border: 1px solid rgba(148,163,184,0.18);
  border-radius: 16px;
  padding: 12px 14px;
}
/* Metric card hierarchy */
.card{
  display:flex;
  flex-direction:column;
  gap:6px;
  min-height: 92px;
  justify-content: space-between;
}

/* 라벨 */
.card .k{
  font-size: 0.80rem !important;
  font-weight: 800 !important;
  letter-spacing: 0.02em;
  text-transform: uppercase;
  color: rgba(255,255,255,0.62) !important;
}

/* 값 */
.card .v{
  font-size: 1.45rem !important;
  font-weight: 900 !important;
  letter-spacing: -0.02em;
  color: rgba(255,255,255,0.95) !important;
  line-height: 1.12;
}

/* 기준/설명 */
.card .s{
  font-size: 0.88rem !important;
  font-weight: 600 !important;
  color: rgba(148,163,184,0.95) !important;
  line-height: 1.25;
}

/* Buttons */
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
div.stButton > button[kind="secondary"]:hover{
  background: rgba(255,255,255,0.06) !important;
}

/* Dataframe rounding */
[data-testid="stDataFrame"]{ border-radius: 14px; overflow:hidden; }
</style>
""",
    unsafe_allow_html=True,
)

COLOR_ME = "#FACC15"   # amber
COLOR_MED = "#38BDF8"  # sky

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

# =========================================================
# DB (EDIT HERE if needed)
# =========================================================
ENGINE = create_engine(
    "mysql+pymysql://usedcar_user:usedcar_user@127.0.0.1:3306/usedcar_proj?charset=utf8mb4"
)

@st.cache_data(ttl=3600)
def load_db() -> pd.DataFrame:
    query = """
    SELECT
      b.brand_name AS brand,
      f.model_name_raw,
      f.year_int,
      f.mileage_km,
      f.price_manwon,
      f.fuel_type,
      f.region
    FROM fact_car_listing f
    JOIN dim_brand b ON b.brand_id = f.brand_id
    """
    df = pd.read_sql(text(query), ENGINE)

    df["brand"] = df["brand"].astype(str).str.strip()
    for c in ["year_int", "mileage_km", "price_manwon"]:
        df[c] = pd.to_numeric(df[c], errors="coerce")

    df = df.dropna(subset=["brand", "model_name_raw", "year_int", "mileage_km", "price_manwon"]).copy()

    df = add_model_columns(
        df,
        brand_col="brand",
        model_raw_col="model_name_raw",
        model_key_col="model_key",
        model_family_col="model_family",
    )
    return df

df_all = load_db()

# =========================================================
# ROUTING
# =========================================================
# ⚠️ 중요: step 이름을 버튼/디스패치에서 "같은 문자열"로 써야 합니다.
# 추천은 잘 되는데 '가격적정도'만 안 넘어가는 경우 대부분 step 문자열 불일치가 원인입니다.

STEP_MAIN = "main"
STEP_PRICE_FIT = "price_fit"     # 가격적정도(구 프리미엄)
STEP_RECOMMEND = "recommend"

if "step" not in st.session_state:
    st.session_state.step = STEP_MAIN

def go(step: str):
    st.session_state.step = step
    st.rerun()

# =========================================================
# 0) MAIN
# =========================================================
if st.session_state.step == STEP_MAIN:
    st.markdown('<div class="hero-title">중고차 구매 가이드</div>', unsafe_allow_html=True)
    st.markdown(
        '<div class="hero-subtitle">구매 차량이 정해졌다면 가격 적정도를 확인하고, 아직 탐색 중이라면 조건 기반 추천 후보를 확인하세요.</div>',
        unsafe_allow_html=True
    )

    c1, c2 = st.columns(2, gap="large")

    with c1:
        st.markdown(
            '''
            <div class="landing-card">
              <div class="title">구매 차량이 정해진 경우</div>
              <div class="desc">브랜드/모델과 차량 조건을 입력하면 유사 매물 기반으로 기대가격과 가격 적정도를 제공합니다.</div>
            ''',
            unsafe_allow_html=True
        )
        if st.button("가격 적정도 분석", type="primary", use_container_width=True):
            go(STEP_PRICE_FIT)
        st.markdown("</div>", unsafe_allow_html=True)

    with c2:
        st.markdown(
            '''
            <div class="landing-card">
              <div class="title">아직 후보를 탐색 중인 경우</div>
              <div class="desc">예산·연식·주행 조건으로 후보군을 구성하고, 선호도(가격↔상태) 기준으로 추천합니다.</div>
            ''',
            unsafe_allow_html=True
        )
        if st.button("추천 후보 탐색", type="secondary", use_container_width=True):
            go(STEP_RECOMMEND)
        st.markdown("</div>", unsafe_allow_html=True)

    st.stop()

# =========================================================
# 1) PRICE FIT (Premium) PAGE
# =========================================================
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
        st.stop()

    try:
        year = parse_int("연식", year_s, 1990, 2035)
        mileage = parse_float("주행거리(km)", mileage_s, 0, 500000)
        price = parse_float("가격(만원)", price_s, 0, 200000)
    except ValueError as e:
        st.error(str(e))
        st.stop()

    target = {"model_family": model, "year_int": year, "mileage_km": mileage, "price_manwon": price}

    cluster = build_similarity_cluster(df_all, target, key_col="model_family")
    if cluster is None or len(cluster) < 10:
        st.warning(f"비교군 최소 10개가 필요합니다. 현재: {0 if cluster is None else len(cluster)}개")
        st.stop()

    # 기대가격(단순 회귀)
    X = cluster[["year_int", "mileage_km"]].to_numpy(dtype=float)
    y = cluster["price_manwon"].to_numpy(dtype=float)
    X_ = np.c_[np.ones(len(X)), X]
    beta, *_ = np.linalg.lstsq(X_, y, rcond=None)

    expected = float(np.array([1.0, year, mileage]) @ beta)
    premium = float(price - expected)  # 이름은 premium지만 UI에서는 '가격적정도(실제-기대)'로 표기

    pred_all = X_ @ beta
    premium_series = y - pred_all

    # =========================
    # 대안 매물 TOP 3 추출
    # (유사 군집 내에서 내 차량보다 '가격차이(실제-기대)'가 더 낮은 매물)
    # =========================
    alt_df = cluster.copy()

    # 군집 내 각 매물의 기대가격/가격차이(실제-기대) 저장
    alt_df["expected_price"] = pred_all
    alt_df["price_gap"] = premium_series  # = 실제 - 기대

    # 대안 정의: 내 차량보다 가격차이가 더 낮은(= 더 덜 비싸거나 더 저렴한) 매물
    alternatives = alt_df[alt_df["price_gap"] < premium].copy()

    # 정렬 기준:
    # 1) price_gap 오름차순(가장 저렴/합리적) 우선
    # 2) weight가 있으면 유사도가 높은 것 우선
    sort_cols = ["price_gap"]
    asc = [True]
    if "weight" in alternatives.columns:
        sort_cols.append("weight")
        asc.append(False)

    alternatives = alternatives.sort_values(sort_cols, ascending=asc)

    top3 = alternatives.head(3)


    q1, q3 = np.quantile(premium_series, [0.25, 0.75])
    med = float(np.median(premium_series))

    if premium < q1:
        label = "저렴"
    elif premium > q3:
        label = "비쌈"
    else:
        label = "적정"

    c1, c2, c3, c4 = st.columns([1.6, 1.0, 1.1, 1.0], gap="medium")
    with c1:
        card("선택", f"{brand} / {model}", f"비교군 {len(cluster)}개 (유사도 기반)")
    with c2:
        card("기대가격", f"{expected:,.0f}만원", "연식+주행 기준")
    with c3:
        sign = "+" if premium > 0 else ""
        card("가격차이", f"{sign}{premium:,.0f}만원", "실제 − 기대")
    with c4:
        card("판정", label, "Q1~Q3 기준")

    st.divider()

    st.subheader("가격차이 분포 (실제 − 기대)")
    st.write(
        "유사 매물의 ‘가격차이(실제−기대)’ 분포에서 내 차량이 어느 위치인지 보여줍니다.\n"
        "- **초록(저렴)**: Q1보다 낮음  /  **파랑(적정)**: Q1~Q3  /  **빨강(비쌈)**: Q3보다 높음\n"
        f"- 노란 점선 = 내 차량 (**{premium:+,.0f}만원**)  ·  파란 점선 = 중앙값"
    )

    fig = px.histogram(pd.DataFrame({"premium": premium_series}), x="premium", nbins=28, opacity=0.95, template="plotly_dark")

    xmin = float(np.min(premium_series))
    xmax = float(np.max(premium_series))

    fig.add_vrect(x0=xmin, x1=q1, fillcolor="rgba(34,197,94,0.18)", line_width=0, annotation_text="저렴", annotation_position="top left")
    fig.add_vrect(x0=q1, x1=q3, fillcolor="rgba(56,189,248,0.12)", line_width=0, annotation_text="적정", annotation_position="top")
    fig.add_vrect(x0=q3, x1=xmax, fillcolor="rgba(239,68,68,0.16)", line_width=0, annotation_text="비쌈", annotation_position="top right")

    fig.add_vline(x=premium, line_dash="dash", line_color=COLOR_ME, line_width=3, annotation_text="내 차량", annotation_position="top left")
    fig.add_vline(x=med, line_dash="dot", line_color=COLOR_MED, line_width=2, annotation_text="중앙값", annotation_position="top right")

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

    st.divider()

    with st.expander("대안 후보 3개 보기 (유사 비교군에서 더 합리적인 선택)", expanded=False):
        st.write("내 차량보다 **가격차이(실제−기대)** 가 더 낮은 매물 중 상위 3개를 보여줍니다.")

        show_cols = []
        for c in ["brand", "model_name_raw", "year_int", "mileage_km", "price_manwon", "expected_price", "price_gap",
                  "fuel_type", "region", "weight"]:
            if c in top3.columns:
                show_cols.append(c)

        if len(top3) == 0:
            st.info("현재 선택보다 더 합리적인(가격차이가 더 낮은) 대안 매물이 비교군에서 발견되지 않았습니다.")
        else:
            view = top3[show_cols].copy()
            if "expected_price" in view.columns:
                view["expected_price"] = view["expected_price"].round(0)
            if "price_gap" in view.columns:
                view["price_gap"] = view["price_gap"].round(0)
            st.dataframe(view, use_container_width=True)

# =========================================================
# 2) RECOMMEND / EXPLORE (DB-backed)
# =========================================================
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
        w_price = st.slider(
            "가격 비중(%)",
            min_value=0,
            max_value=100,
            value=50,
            step=5,
            help="가격을 더 중시하면 값을 높이세요. 상태(연식+주행) 비중은 자동으로 100-가격비중 입니다.",
            key="reco_w_price",
        ) / 100.0
        w_cond = 1.0 - w_price
        st.caption(f"현재 설정: 가격 {int(w_price*100)}% / 상태 {int(w_cond*100)}%")

        fuels = sorted([f for f in df_all.get("fuel_type", pd.Series(dtype=str)).dropna().unique()])
        sel_fuels = st.multiselect("연료(선택)", fuels, default=[], key="reco_fuels")

        top_n = st.select_slider("추천 개수", options=[10, 20, 30, 50], value=10, key="reco_topn")
        run = st.button("추천 보기", type="primary", key="reco_run")

    if not run:
        st.info("왼쪽에서 조건을 정한 뒤 **추천 보기**를 눌러주세요.")
        st.stop()

    df = df_all.copy()
    if sel_brands:
        df = df[df["brand"].isin(sel_brands)]
    if sel_fuels and "fuel_type" in df.columns:
        df = df[df["fuel_type"].isin(sel_fuels)]

    df = df[
        (df["price_manwon"] <= max_price) &
        (df["year_int"] >= min_year) &
        (df["mileage_km"] <= max_mileage)
    ].copy()

    if df.empty:
        st.warning("조건에 맞는 매물이 없습니다. 조건을 완화해보세요.")
        st.stop()

    st.info(f"가성비 점수는 가격({int(w_price*100)}%) + 상태(연식·주행, {int(w_cond*100)}%)의 가중합으로 계산됩니다. (후보군 내 상대 점수)")

    # Value score (teammate idea)
    base_year = 2026
    df["age"] = base_year - df["year_int"]
    df["converted_mileage"] = (df["age"] * 22000) + df["mileage_km"]

    p_min, p_max = df["price_manwon"].min(), df["price_manwon"].max()
    m_min, m_max = df["converted_mileage"].min(), df["converted_mileage"].max()

    df["price_score"] = 1 - ((df["price_manwon"] - p_min) / (p_max - p_min + 1e-9))
    df["condition_score"] = 1 - ((df["converted_mileage"] - m_min) / (m_max - m_min + 1e-9))
    df["value_score"] = (df["price_score"] * w_price + df["condition_score"] * w_cond) * 100

    df = df.sort_values("value_score", ascending=False).reset_index(drop=True)
    df["가성비 순위"] = df.index + 1

    c1, c2, c3 = st.columns([1.2, 1.0, 1.0], gap="medium")
    with c1:
        card("조건 매물", f"{len(df):,}개", "필터 적용 결과")
    with c2:
        card("평균 가성비", f"{df['value_score'].mean():.1f}점", "0~100")
    with c3:
        best = df.iloc[0]
        card("1위", f"{best['brand']} / {best['model_family']}", f"{best['price_manwon']:,.0f}만원 · {int(best['year_int'])}년")

    st.divider()

    st.subheader(f"가성비 TOP {top_n}")
    show_cols = ["가성비 순위", "brand", "model_family", "price_manwon", "year_int", "mileage_km", "fuel_type", "region", "value_score"]
    show_cols = [c for c in show_cols if c in df.columns]
    st.dataframe(df.head(int(top_n))[show_cols], use_container_width=True)

    st.divider()
    st.subheader("📈 시장 분포에서 위치 보기")
    st.write("가성비 상위 후보가 시장에서 어느 영역(가격/상태)에 몰려 있는지 빠르게 훑습니다.")

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

# =========================================================
# DISPATCH
# =========================================================
if st.session_state.step == STEP_PRICE_FIT:
    render_price_fit()
elif st.session_state.step == STEP_RECOMMEND:
    render_recommend()
else:
    # unknown step → main
    st.session_state.step = STEP_MAIN
    st.rerun()
