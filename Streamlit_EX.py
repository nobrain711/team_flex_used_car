#pip install streamlit pandas numpy

import streamlit as st
import pandas as pd
import numpy as np

# 1. 페이지 레이아웃 설정
st.set_page_config(page_title="Used Car Search", layout="wide")


@st.cache_data
def load_and_clean_data():
    """
    CSV 파일을 읽어오고 숫자 계산이 가능하도록 데이터를 정제하는 함수입니다.
    """
    # 원본 데이터 로드
    raw_data = pd.read_csv('used_cars_bobaedream_final.csv')

    # [가격 정제] '만원' 글자를 지우고 숫자로 변환합니다.
    raw_data['price_numeric'] = raw_data['price'].str.replace('만원', '').str.replace(',', '').str.extract(
        '(\d+)').astype(float).fillna(0)

    # [이상치 제거] 가격 데이터 오류(예: 100억 이상)를 필터링합니다.
    cleaned_data = raw_data[raw_data['price_numeric'] < 1000000].copy()

    # [주행거리 정제] '만km' 단위를 숫자로 바꿉니다 (예: 1.5만km -> 15000).
    cleaned_data['mileage_numeric'] = cleaned_data['mileage'].str.replace('만km', '0000').str.replace('km',
                                                                                                     '').str.replace(
        ',', '').str.extract('(\d+)').astype(float).fillna(0)

    # [연식 정제] '24/10' 형태에서 연도만 추출해 정렬용 숫자를 만듭니다.
    cleaned_data['year_numeric'] = cleaned_data['year'].str[:2].astype(int).apply(
        lambda x: 2000 + x if x < 30 else 1900 + x)

    # [결측치 처리] 비어있는 값들을 '기타' 혹은 '미분류'로 채워 에러를 방지합니다.
    cleaned_data['brand'] = cleaned_data['brand'].fillna("기타")
    cleaned_data['model_name'] = cleaned_data['model_name'].fillna("기타")
    cleaned_data['fuel'] = cleaned_data['fuel'].fillna("미분류")

    return cleaned_data


def format_currency(amount):
    """
    숫자를 한국식 '억/만원' 단위 문자열로 변환해주는 함수입니다.
    """
    if amount >= 10000:
        return f"{int(amount // 10000)}억 {int(amount % 10000):,}만원"
    return f"{int(amount):,}만원"


# 정제된 전체 데이터 로드
car_list = load_and_clean_data()

st.title("🚗 Intelligent Car Search System")

# --- 사이드바 검색 필터 영역 ---
with st.sidebar:
    st.header("Search Filters")

    # [중요] 세션 상태 초기화: 사용자가 선택한 값들을 저장하여 화면 갱신 시 유지합니다.
    if 'brand_sel' not in st.session_state: st.session_state.brand_sel = []
    if 'model_sel' not in st.session_state: st.session_state.model_sel = []
    if 'fuel_sel' not in st.session_state: st.session_state.fuel_sel = []

    # 1. 금액 범위 설정
    min_p = st.number_input("Min Price (만원)", value=int(car_list['price_numeric'].min()))
    max_p = st.number_input("Max Price (만원)", value=int(car_list['price_numeric'].max()))
    inc_consult = st.checkbox("Include 'Consulting' items")


    def apply_price_logic(target_df):
        """
        입력된 금액 범위와 상담 매물 포함 여부를 데이터에 적용하는 내부 함수입니다.
        """
        if inc_consult:
            return target_df[(target_df['price_numeric'].between(min_p, max_p)) | (target_df['price_numeric'] == 0)]
        return target_df[target_df['price_numeric'].between(min_p, max_p)]


    # --- 실시간 상호작용 옵션 계산 (Cross-Interaction) ---

    # [A. 브랜드 목록] 가격 + 현재 선택된 모델 + 엔진 조건의 교집합 대수를 계산합니다.
    b_calc = apply_price_logic(car_list)
    if st.session_state.model_sel: b_calc = b_calc[b_calc['model_name'].isin(st.session_state.model_sel)]
    if st.session_state.fuel_sel: b_calc = b_calc[b_calc['fuel'].isin(st.session_state.fuel_sel)]

    b_counts = b_calc['brand'].value_counts()
    b_options = [f"{b} ({b_counts.get(b, 0)})" for b in sorted(car_list['brand'].unique())]
    b_ui = st.multiselect("Brand", options=b_options, key='brand_input')
    st.session_state.brand_sel = [val.split(" (")[0] for val in b_ui]

    # [B. 모델 목록] 가격 + 현재 선택된 브랜드 + 엔진 조건의 교집합 대수를 계산합니다.
    m_calc = apply_price_logic(car_list)
    if st.session_state.brand_sel: m_calc = m_calc[m_calc['brand'].isin(st.session_state.brand_sel)]
    if st.session_state.fuel_sel: m_calc = m_calc[m_calc['fuel'].isin(st.session_state.fuel_sel)]

    m_counts = m_calc['model_name'].value_counts()
    m_options = [f"{m} ({m_counts.get(m, 0)})" for m in sorted(m_calc['model_name'].unique())]
    m_ui = st.multiselect("Model", options=m_options, key='model_input')
    st.session_state.model_sel = [val.split(" (")[0] for val in m_ui]

    # [C. 엔진 목록] 가격 + 현재 선택된 브랜드 + 모델 조건의 교집합 대수를 계산합니다.
    f_calc = apply_price_logic(car_list)
    if st.session_state.brand_sel: f_calc = f_calc[f_calc['brand'].isin(st.session_state.brand_sel)]
    if st.session_state.model_sel: f_calc = f_calc[f_calc['model_name'].isin(st.session_state.model_sel)]

    f_counts = f_calc['fuel'].value_counts()
    f_options = [f"{f} ({f_counts.get(f, 0)})" for f in sorted(f_calc['fuel'].unique())]
    f_ui = st.multiselect("Fuel Type", options=f_options, key='fuel_input')
    st.session_state.fuel_sel = [val.split(" (")[0] for val in f_ui]

# --- 최종 필터링 결과 도출 ---
# 사이드바에서 설정된 모든 최종 조건들을 원본 데이터에 적용합니다.
final_result = apply_price_logic(car_list)
if st.session_state.brand_sel: final_result = final_result[final_result['brand'].isin(st.session_state.brand_sel)]
if st.session_state.model_sel: final_result = final_result[final_result['model_name'].isin(st.session_state.model_sel)]
if st.session_state.fuel_sel: final_result = final_result[final_result['fuel'].isin(st.session_state.fuel_sel)]

# [정렬] 연식은 최신순(내림차순), 주행거리는 짧은순(오름차순)으로 정렬합니다.
sorted_display = final_result.sort_values(by=['year_numeric', 'mileage_numeric'], ascending=[False, True])

# --- 화면 출력 영역 ---
st.subheader(f"📄 Results ({len(sorted_display)} cars)")
st.dataframe(sorted_display[['brand', 'model_name', 'price', 'year', 'mileage', 'fuel', 'region', 'link']],
             use_container_width=True)

# 하단 요약 지표
if not sorted_display.empty:
    st.divider()
    # 가격 정보가 있는 매물로만 평균/최고/최저가를 계산합니다.
    stats_data = sorted_display[sorted_display['price_numeric'] > 0]['price_numeric']
    if not stats_data.empty:
        col1, col2, col3 = st.columns(3)
        col1.metric("Average", format_currency(int(stats_data.mean())))
        col2.metric("Highest", format_currency(stats_data.max()))
        col3.metric("Lowest", format_currency(stats_data.min()))


# streamlit run Streamlit_EX.py