import streamlit as st
import pandas as pd
import numpy as np
import plotly.express as px

# [설정] 웹 페이지 제목 및 레이아웃을 넓게(wide) 설정
st.set_page_config(page_title="Used Car Value Analyzer", layout="wide")


# [데이터 처리] 캐싱 기능을 사용하여 매번 파일을 읽지 않고 속도를 최적화
@st.cache_data
def load_and_clean_data():
    try:
        # 보배드림에서 크롤링한 원본 CSV 데이터 로드
        raw_data = pd.read_csv('used_cars_bobaedream_final.csv')

        # 1. 가격 데이터 전처리: '만원', ',' 문자 제거 후 숫자만 추출하여 float 형태로 저장
        raw_data['price_numeric'] = raw_data['price'].str.replace('만원', '').str.replace(',', '').str.extract(
            '(\d+)').astype(float).fillna(0)

        # 100억원 이상의 이상치 데이터 제거 (데이터 정제)
        cleaned_data = raw_data[raw_data['price_numeric'] < 1000000].copy()

        # 2. 주행거리 데이터 전처리: '만km'를 숫자로 변환 (예: 1.5만km -> 15000)
        cleaned_data['mileage_numeric'] = cleaned_data['mileage'].str.replace('만km', '0000').str.replace('km',
                                                                                                         '').str.replace(
            ',', '').str.extract('(\d+)').astype(float).fillna(0)

        # 3. 연식 데이터 전처리: '21/05' 형태에서 연도 2자리를 추출하여 2000년대 연도로 변환
        cleaned_data['year_numeric'] = cleaned_data['year'].str[:2].astype(int).apply(
            lambda x: 2000 + x if x < 30 else 1900 + x)

        # 4. 결측치 처리: 브랜드, 모델명, 연료 정보가 없는 경우 기본값 할당
        cleaned_data['brand'] = cleaned_data['brand'].fillna("기타")
        cleaned_data['model_name'] = cleaned_data['model_name'].fillna("기타")
        cleaned_data['fuel'] = cleaned_data['fuel'].fillna("미분류")

        df = cleaned_data.copy()

        # 가격 정보가 정상적으로 있는 매물들만 추려 가성비 계산 진행
        calc_df = df[df['price_numeric'] > 0].copy()

        if not calc_df.empty:
            # [가성비 알고리즘]
            base_year = 2026  # 현재 분석 시점 기준 연도
            # 차량 연령 계산
            calc_df['age'] = base_year - calc_df['year_numeric']

            # 환산 주행거리: 연식에 따른 가치 하락을 주행거리(1년당 2.2만km)로 치환하여 합산
            calc_df['converted_mileage'] = (calc_df['age'] * 22000) + calc_df['mileage_numeric']

            # 가격 점수: 검색 결과 내 최저가에 가까울수록 1점, 최고가에 가까울수록 0점 (정규화)
            p_min, p_max = calc_df['price_numeric'].min(), calc_df['price_numeric'].max()
            calc_df['price_score'] = 1 - ((calc_df['price_numeric'] - p_min) / (p_max - p_min + 1))

            # 상태 점수: 환산 주행거리가 짧을수록 1점, 길수록 0점 (정규화)
            m_min, m_max = calc_df['converted_mileage'].min(), calc_df['converted_mileage'].max()
            calc_df['condition_score'] = 1 - ((calc_df['converted_mileage'] - m_min) / (m_max - m_min + 1))

            # 최종 가성비 점수: 가격 점수(50%)와 상태 점수(50%)를 합산하여 100점 만점으로 계산
            calc_df['value_score'] = (calc_df['price_score'] * 0.5 + calc_df['condition_score'] * 0.5) * 100

        # 계산된 가성비 지표를 원본 데이터프레임과 병합
        df = df.merge(calc_df[['value_score', 'age']], left_index=True, right_index=True, how='left')
        df['value_score'] = df['value_score'].fillna(0)
        df['age'] = df['age'].fillna(0)
        return df
    except Exception as e:
        st.error(f"데이터 로드 오류: {e}")
        return pd.DataFrame()


# [포맷 함수] 금액을 한국 통화 단위(억, 만원)로 예쁘게 표시
def format_currency(amount):
    if amount >= 10000:
        return f"{int(amount // 10000)}억 {int(amount % 10000):,}만원"
    return f"{int(amount):,}만원"


# [세션 상태] 사용자가 메인 화면인지 분석 화면인지 상태를 유지
if 'step' not in st.session_state:
    st.session_state.step = 'main'

# --- 1. 메인 첫 화면 (중앙 정렬 가이드) ---
if st.session_state.step == 'main':
    # CSS 스타일: 버튼 및 텍스트 중앙 정렬과 애니메이션 효과 부여
    st.markdown(
        """
        <style>
        header {visibility: hidden;}
        footer {visibility: hidden;}
        .main .block-container {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
            padding: 0;
        }
        @keyframes slideDown {
            0% { transform: translateY(-20px); opacity: 0; }
            100% { transform: translateY(0); opacity: 1; }
        }
        .main-title { text-align: center; font-size: 3.5rem; font-weight: bold; animation: slideDown 0.8s ease-out forwards; }
        .sub-question { text-align: center; font-size: 1.6rem; margin-top: 1rem; margin-bottom: 2.5rem; opacity: 0; animation: slideDown 0.8s ease-out 0.8s forwards; }
        [data-testid="stHorizontalBlock"] { display: flex !important; justify-content: center !important; gap: 15px !important; opacity: 0; animation: slideDown 0.8s ease-out 1.6s forwards; }
        div.stButton > button { width: 120px !important; height: 50px !important; font-size: 1.1rem !important; border-radius: 10px; transition: all 0.3s ease; }
        div.stButton > button:hover { border-color: #ff4b4b; color: #ff4b4b; }
        </style>
        """,
        unsafe_allow_html=True
    )

    st.markdown('<div class="main-title">🚗 중고차 구매 가이드</div>', unsafe_allow_html=True)
    st.markdown('<div class="sub-question">구매하고자 하는 중고차가 명확하신가요?</div>', unsafe_allow_html=True)

    # 버튼 배치 (예: 상세 모델 검색 / 아니오: 대시보드 분석)
    empty1, col1, col2, empty2 = st.columns([0.42, 0.1, 0.1, 0.38])
    with col1:
        if st.button("예"):
            st.session_state.step = 'yes_route'
            st.rerun()
    with col2:
        if st.button("아니오"):
            st.session_state.step = 'no_route'
            st.rerun()

# --- 2. '예' 노선 (상세 모델 검색 - 준비 중) ---
elif st.session_state.step == 'yes_route':
    st.title("✅ 맞춤형 매물 분석")
    if st.button("⬅ 처음으로 돌아가기"):
        st.session_state.step = 'main'
        st.rerun()

# --- 3. '아니오' 노선 (종합 분석 대시보드) ---
elif st.session_state.step == 'no_route':
    car_list = load_and_clean_data()

    if st.button("⬅ 처음으로 돌아가기"):
        st.session_state.step = 'main'
        st.rerun()

    st.title("📊 중고차 분석 대시보드")

    # [사이드바 필터] 사용자가 가격, 브랜드 등을 직접 선택하는 영역
    with st.sidebar:
        st.header("🔍 검색 및 필터")
        min_p = st.number_input("최소 금액 (만원)", value=int(car_list['price_numeric'].min()))
        max_p = st.number_input("최대 금액 (만원)", value=int(car_list['price_numeric'].max()))
        inc_consult = st.checkbox("상담 가격 포함")


        # 필터링 로직: 금액 범위를 만족하거나 '상담' 상태인 매물 필터링
        def apply_price_logic(target_df):
            if inc_consult:
                return target_df[(target_df['price_numeric'].between(min_p, max_p)) | (target_df['price_numeric'] == 0)]
            return target_df[target_df['price_numeric'].between(min_p, max_p)]


        # 연쇄 필터: 브랜드 선택 시 해당 브랜드 모델만 나오도록 설정
        b_calc = apply_price_logic(car_list)
        b_ui = st.multiselect("차량 브랜드", options=sorted(car_list['brand'].unique()))
        m_calc = b_calc[b_calc['brand'].isin(b_ui)] if b_ui else b_calc
        m_ui = st.multiselect("차량 모델", options=sorted(m_calc['model_name'].unique()))
        f_calc = m_calc[m_calc['model_name'].isin(m_ui)] if m_ui else m_calc
        f_ui = st.multiselect("연료 타입", options=sorted(f_calc['fuel'].unique()))

    # 모든 필터 조건이 적용된 최종 결과 생성
    final_result = apply_price_logic(car_list)
    if b_ui: final_result = final_result[final_result['brand'].isin(b_ui)]
    if m_ui: final_result = final_result[final_result['model_name'].isin(m_ui)]
    if f_ui: final_result = final_result[final_result['fuel'].isin(f_ui)]

    # 가성비 점수 기준 내림차순 정렬 후 순위 부여
    final_result = final_result.sort_values(by='value_score', ascending=False)
    final_result['가성비 순위'] = range(1, len(final_result) + 1)

    # [대시보드 상단] 검색 통계 및 추천 리스트
    col_stats, col_main_graph = st.columns([1, 2])
    with col_stats:
        st.subheader("📌 검색 요약")
        if not final_result.empty:
            st.metric("필터링된 매물", f"{len(final_result)} 대")
            valid_p = final_result[final_result['price_numeric'] > 0]['price_numeric']
            if not valid_p.empty: st.metric("평균 시세", format_currency(int(valid_p.mean())))

            # 점수 기반 상위 3개 매물 카드 출력
            st.write("---")
            st.success("🏆 실시간 가성비 추천 Top 3")
            for i, row in final_result.head(3).iterrows():
                st.write(f"**{row['가성비 순위']}위.** {row['brand']} {row['model_name']}")
                st.caption(f"가격: {row['price']} / 주행거리: {row['mileage']}")
        else:
            st.info("필터를 선택해주세요.")

    # [대시보드 중단] 산점도 그래프: 전체 시장 대비 선택 매물의 위치 시각화
    with col_main_graph:
        st.subheader("📈 주행거리 대비 연식 관계")
        # 선택된 매물은 빨간색, 나머지는 연한 회색으로 표시
        analysis_df = car_list.copy()
        analysis_df['status'] = np.where(analysis_df.index.isin(final_result.index), '선택됨', '기타')

        fig = px.scatter(
            analysis_df,
            x='mileage_numeric',
            y='year_numeric',
            color='status',
            color_discrete_map={'선택됨': '#FF4B4B', '기타': '#E5ECF6'},
            labels={'mileage_numeric': '주행거리 (km)', 'year_numeric': '연식 (년)'},
            hover_data=['brand', 'model_name', 'price'],
            template='plotly_white'
        )
        # 연식 축을 반전시켜서 최신 연식이 그래프 상단에 오도록 시각화
        fig.update_yaxes(autorange="reversed")
        st.plotly_chart(fig, use_container_width=True)

    st.divider()
    # [대시보드 하단] 상세 데이터 표 출력
    st.subheader("📑 가성비 랭킹 상세 리스트")
    st.dataframe(final_result[['가성비 순위', 'brand', 'model_name', 'fuel', 'price', 'year', 'mileage', 'region']],
                 use_container_width=True)

    # streamlit run Streamlit_EX.py