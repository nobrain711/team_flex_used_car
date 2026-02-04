# 🚗 중고차 의사결정 지원 시스템  
Crawling Data 기반 중고차 시세 판단 및 대안 추천 프로젝트

---

## 1. 프로젝트 기획

### 1.1 기획 배경
중고차 시장에서는 동일 모델이라도 연식, 주행거리, 가격 조합에 따라
매물의 합리성이 크게 달라진다.  
그러나 기존 중고차 플랫폼은 가격 또는 주행거리 기준의 단순 정렬 기능만 제공하며,
구매자가 해당 매물이 좋은 선택인지 판단할 수 있는 근거를 제공하지 않는다.

본 프로젝트는 이러한 한계를 해결하기 위해
데이터 기반으로 중고차 매물의 합리성을 판단하고,
더 나은 대안을 제시하는 의사결정 지원 시스템을 구현하는 것을 목표로 한다.

---

### 1.2 프로젝트 목표
- 크롤링한 중고차 매물 데이터를 구조적으로 저장
- 중복과 갱신 이상을 고려한 데이터베이스 정규화
- 사용자가 입력한 조건 대비 합리성 판단 로직 구현
- 단순 정렬이 아닌 비교·통계 기반 판단 제공
- 머신러닝 없이 구현 가능한 분석 파이프라인 구축

---

### 1.3 구현 가능성 및 기술 범위
| 구분 | 사용 기술 |
|---|---|
| 데이터 수집 | Python 웹 크롤링 |
| 데이터 저장 | MySQL |
| 정규화 | SQL |
| 분석 로직 | Python (pandas) |
| 시각화 | Streamlit |
| 형상 관리 | GitHub |


---

## 2. 수집 데이터

### 2.1 수집 데이터 개요
- 수집 대상: 중고차 매물 정보
- 수집 방식: 웹 크롤링(보배드림 중고차 사이트)
- 저장 형태: CSV → MySQL 적재

---

### 2.2 수집 컬럼 정의
| 컬럼명 | 설명 |
|---|---|
| brand | 차량 브랜드 |
| model_name | 모델명(원본 텍스트) |
| price | 가격 문자열 |
| year | 연식 문자열 |
| mileage | 주행거리 문자열 |
| fuel | 연료 |
| region | 지역 |
| link | 매물 상세 URL |

---

## 3. 데이터베이스 설계 문서

### 3.1 설계 원칙
- 원본 데이터 보존을 위해 raw 테이블 유지
- 분석 및 서비스용 데이터는 clean 테이블로 분리
- 반복과 갱신 이상이 큰 속성만 정규화
- 분석 및 판단 로직은 Python에서 수행

---

### 3.2 ERD

```mermaid
erDiagram
    DIM_BRAND ||--o{ FACT_CAR_LISTING : has

    DIM_BRAND {
        INT brand_id
        VARCHAR brand_name
    }

    FACT_CAR_LISTING {
        BIGINT listing_id
        INT brand_id
        VARCHAR model_name_raw
        INT year_int
        INT mileage_km
        INT price_manwon
        VARCHAR fuel_type
        VARCHAR region
        VARCHAR url
        BIGINT raw_id
        TIMESTAMP created_at
    }
