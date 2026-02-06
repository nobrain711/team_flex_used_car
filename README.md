# 데이터 기반 중고차 구매 의사결정 지원 서비스

본 프로젝트는 사용자가 구매를 고려 중인 중고차 매물의 가격이 시장 대비 합리적인지 분석하고,  
동일 조건 내 더 나은 대안을 함께 탐색할 수 있도록 돕는 **데이터 기반 의사결정 지원 서비스**입니다.

- 가격 적정도 분석: 유사 매물 기반 기대가격 산출 → 분위수(Q1~Q3)로 “저평가/적정/고평가” 판정  
- 조건 기반 탐색 추천: 예산·연식·주행 조건 기반 후보군 구성 → 가성비 점수로 TOP 추천

---

## 팀 구성

| 이름 | 역할 |
|------|------|
| 장한재 | 서비스 설계·데이터 분석·룰 기반 모델 설계·Streamlit 구현·레포/브랜치 관리·문서화 |
| 박민선 |  |
| 홍완기 | Streamlit layout 설계 및 구현 |
| 조동휘 |  |
| 임승현 | 개념모델링, 논리설계, 데이터적재, API 조사 |
| 윤찬호 | 웹크롤링 설계/구현, 데이터 수집/전처리/정제 |

---

## 구현 화면 (Demo)

본 서비스는 “가격 적정도 분석”과 “조건 기반 탐색 추천” 두 흐름으로 구성되어 있습니다.  
아래는 주요 서비스 화면입니다.

### 1) 초기 화면
<img width="1478" height="471" alt="image" src="https://github.com/user-attachments/assets/2b6007a2-85bf-435f-b024-95fde8d4640b" />

> 서비스 진입 화면으로, 가격 적정도 분석과 추천/탐색 기능으로 이동할 수 있습니다.

---

### 2) 가격 적정도 분석 화면
<img width="1908" height="847" alt="image" src="https://github.com/user-attachments/assets/310f0cf8-6304-4e58-9549-8215098c53a4" />

> 선택한 모델군 내 유사 매물을 기반으로 기대가격을 산출하고, 분위수(Q1~Q3) 기준으로 가격 적정도를 판정합니다.

---

### 3) 추천 / 탐색 화면
<img width="1911" height="836" alt="image" src="https://github.com/user-attachments/assets/3a501b26-bc66-4303-b004-89580dd41dcb" />

> 예산·연식·주행거리 조건 기반 후보를 구성한 뒤, 환산주행거리와 가격 경쟁력을 반영한 가성비 점수로 추천합니다.

---

## 📚 Documentation (Wiki)

프로젝트의 상세 문서(설계/DB/분석 프레임워크/브랜치 운영)는 Wiki에 정리되어 있습니다.

- Home: [WIKI_URL_HOME](https://github.com/rusidian/team_flex_used_car/wiki)
- Project Overview: [WIKI_URL_PROJECT_OVERVIEW](https://github.com/rusidian/team_flex_used_car/wiki/Project-Overview)
- Architecture & Pipeline: [WIKI_URL_ARCHITECTURE](https://github.com/rusidian/team_flex_used_car/wiki/Architecture-&-Pipeline)
- Database: [WIKI_URL_DATABASE](https://github.com/rusidian/team_flex_used_car/wiki/Database)
- Analytical Framework & Metrics: [WIKI_URL_ANALYTICAL](https://github.com/rusidian/team_flex_used_car/wiki/Analytical-Framework-&-Metrics)
- Branching & Release Guide: [WIKI_URL_BRANCHING](https://github.com/rusidian/team_flex_used_car/wiki/Branching-&-Release-Guide)

---

## 실행 방법 (How to Run)

> 팀원 코드(크롤링/스키마/적재)가 완성되면, 여기 실행 절차를 최종 버전으로 확정합니다.

1) DB 준비
- MySQL 실행
- 스키마 생성: `02_database_schema/`
- 데이터 적재/전처리: `03_data_pipeline/`

2) Streamlit 실행
```bash
cd 05_streamlit_app
streamlit run app.py

3. (필요 시) 환경변수 설정
- DB_HOST, DB_PORT, DB_USER, DB_PASSWORD, DB_NAME 등
- 환경변수/설정 파일 위치는 팀 최종 구성에 맞춰 업데이트합니다.

## GitHub 폴더 구조

본 프로젝트는 데이터 수집부터 분석·서비스 구현까지의 전체 파이프라인이 단계별로 구분되도록 폴더를 구성했습니다.

```
project/
|-- 01_crawling/        # 보배드림 매물 크롤링
|-- 02_database_schema/ # MySQL 테이블 생성 및 스키마
|-- 03_data_pipeline/   # 데이터 적재 및 전처리
|-- 04_algorithm/       # 유사도·기대가격 알고리즘
|-- 05_streamlit_app/   # 서비스 UI
`-- README.md
```

---


