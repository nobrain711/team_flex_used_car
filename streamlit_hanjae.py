
import numpy as np
import pandas as pd
import streamlit as st
import plotly.express as px
from sqlalchemy import create_engine, text

from usedcar_analysis import (
    add_model_columns,
    build_similarity_cluster,
)

# =========================
# Page + Dark UI (clean)
# =========================
st.set_page_config(page_title="중고차 가격 프리미엄", page_icon="🚗", layout="wide")

st.markdown(
    """
<style>
.stApp{ background:#0B1220; color:#E5E7EB; }
.block-container{ padding-top:0.9rem; padding-bottom:1.1rem; max-width:1200px; }

html, body, [class*="css"]  { font-size: 14px; }
h1{ font-size:1.45rem !important; margin-bottom:0.2rem; }
h2{ font-size:1.1rem !important; }
h3{ font-size:1.0rem !important; }

section[data-testid="stSidebar"] > div{
  background:#0F172A;
  border-right:1px solid rgba(148,163,184,0.15);
}

.card{
  background:rgba(255,255,255,0.06);
  border:1px solid rgba(148,163,184,0.18);
  border-radius:14px;
  padding:12px 14px;
}
.card .k{ color:rgba(229,231,235,0.75); font-size:0.85rem; }
.card .v{ color:#E5E7EB; font-size:1.1rem; font-weight:750; line-height:1.15; margin-top:2px; }
.card .s{ color:rgba(229,231,235,0.7); font-size:0.82rem; margin-top:4px; }

div.stButton > button{
  border-radius: 12px;
  padding: 0.55rem 0.9rem;
  font-weight: 750;
}
iframe { border-radius: 14px; }
</style>
""",
    unsafe_allow_html=True,
)

st.title("🚗 중고차 가격 프리미엄")
st.caption("선택한 모델군에서 **연식·주행거리 유사 매물**로 기대가격을 계산하고, 내 차량의 **프리미엄(실제−기대)** 위치를 히스토그램으로 보여줍니다.")

# =========================
# DB
# =========================
ENGINE = create_engine(
    "mysql+pymysql://usedcar_user:usedcar_user@127.0.0.1:3306/usedcar_proj?charset=utf8mb4"
)

@st.cache_data(ttl=3600)
def load_data() -> pd.DataFrame:
    query = """
    SELECT
      b.brand_name AS brand,
      f.model_name_raw,
      f.year_int,
      f.mileage_km,
      f.price_manwon
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

df_all = load_data()

# =========================
# Helpers
# =========================
MIN_CLUSTER_N = 10
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

# =========================
# Sidebar inputs (with examples)
# =========================
with st.sidebar:
    st.header("입력")

    brands = sorted(df_all["brand"].dropna().unique())
    brand = st.selectbox("브랜드", brands)

    sub = df_all[df_all["brand"] == brand]
    models = sorted(sub["model_family"].dropna().unique())
    model = st.selectbox("모델(대분류)", models)

    st.divider()
    st.subheader("내 차량")
    year_s = st.text_input("연식(년)", value="", placeholder="예: 2019")
    mileage_s = st.text_input("주행거리(km)", value="", placeholder="예: 50000")
    price_s = st.text_input("가격(만원)", value="", placeholder="예: 1500")

    run = st.button("분석 실행", type="primary")

if not run:
    st.info("왼쪽 입력 후 **분석 실행**을 눌러주세요.")
    st.stop()

# =========================
# Validate
# =========================
try:
    year = parse_int("연식", year_s, 1990, 2035)
    mileage = parse_float("주행거리(km)", mileage_s, 0, 500000)
    price = parse_float("가격(만원)", price_s, 0, 200000)
except ValueError as e:
    st.error(str(e))
    st.stop()

target = {
    "model_family": model,
    "year_int": year,
    "mileage_km": mileage,
    "price_manwon": price,
}

# =========================
# Cluster
# =========================
cluster = build_similarity_cluster(df_all, target, key_col="model_family")

if cluster is None or len(cluster) < MIN_CLUSTER_N:
    st.warning(f"비교군 최소 {MIN_CLUSTER_N}개가 필요합니다. 현재: {0 if cluster is None else len(cluster)}개")
    st.stop()

# =========================
# Premium calc (simple regression)
# =========================
X = cluster[["year_int", "mileage_km"]].to_numpy(dtype=float)
y = cluster["price_manwon"].to_numpy(dtype=float)

X_ = np.c_[np.ones(len(X)), X]
beta, *_ = np.linalg.lstsq(X_, y, rcond=None)

expected = float(np.array([1.0, year, mileage]) @ beta)
premium = float(price - expected)

pred_all = X_ @ beta
premium_series = y - pred_all

q1, q3 = np.quantile(premium_series, [0.25, 0.75])
med = float(np.median(premium_series))

if premium < q1:
    label = "저렴"
elif premium > q3:
    label = "비쌈"
else:
    label = "적정"

# =========================
# Top numbers (keep visible)
# =========================
c1, c2, c3, c4 = st.columns([1.6, 1.0, 1.1, 1.0], gap="medium")
with c1:
    card("선택", f"{brand} / {model}", f"비교군 {len(cluster)}개 (유사도 기반)")
with c2:
    card("기대가격", f"{expected:,.0f}만원", "연식+주행 기준")
with c3:
    sign = "+" if premium > 0 else ""
    card("프리미엄", f"{sign}{premium:,.0f}만원", "실제 − 기대")
with c4:
    card("판정", label, "Q1~Q3 기준")

st.markdown("---")

# =========================
# Histogram + colored zones
# =========================
st.subheader("프리미엄 분포 (실제 − 기대)")
st.write(
    "유사 매물의 프리미엄 분포에서 내 차량이 어느 위치인지 보여줍니다.\n"
    "- **초록(저렴)**: Q1보다 낮음  /  **파랑(적정)**: Q1~Q3  /  **빨강(비쌈)**: Q3보다 높음\n"
    f"- 노란 점선 = 내 차량 (**{premium:+,.0f}만원**)  ·  파란 점선 = 중앙값"
)

fig = px.histogram(pd.DataFrame({"premium": premium_series}), x="premium", nbins=28, opacity=0.95)

xmin = float(np.min(premium_series))
xmax = float(np.max(premium_series))

fig.add_vrect(x0=xmin, x1=q1, fillcolor="rgba(34,197,94,0.18)", line_width=0, annotation_text="저렴", annotation_position="top left")
fig.add_vrect(x0=q1, x1=q3, fillcolor="rgba(56,189,248,0.12)", line_width=0, annotation_text="적정", annotation_position="top")
fig.add_vrect(x0=q3, x1=xmax, fillcolor="rgba(239,68,68,0.16)", line_width=0, annotation_text="비쌈", annotation_position="top right")

fig.add_vline(x=premium, line_dash="dash", line_color=COLOR_ME, line_width=3, annotation_text="내 차량", annotation_position="top left")
fig.add_vline(x=med, line_dash="dot", line_color=COLOR_MED, line_width=2, annotation_text="중앙값", annotation_position="top right")

fig.update_layout(
    height=520,
    xaxis_title="프리미엄(만원) = 실제 − 기대  (오른쪽일수록 비쌈)",
    yaxis_title="매물 수",
    plot_bgcolor="rgba(0,0,0,0)",
    paper_bgcolor="rgba(0,0,0,0)",
    font=dict(color="#E5E7EB"),
    bargap=0.08,
)

st.plotly_chart(fig, use_container_width=True)
