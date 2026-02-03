
---

## 📊 데이터 설명

### `data/used_cars_fix.csv`
- 크롤링으로 수집한 **중고차 데이터 CSV 파일**
- 팀원 모두 동일한 데이터를 사용하기 위해 GitHub로 공유
- 데이터는 크롤링 재실행 및 전처리에 따라 **버전 관리**됩니다

**주요 컬럼 예시**
- 제조사
- 차량명
- 연식
- 주행거리
- 가격  
(※ 실제 컬럼은 CSV 파일 기준)

---

## 🔄 데이터 버전 관리 방식
- CSV 파일은 GitHub를 통해 관리합니다.
- 데이터가 변경될 경우:
  1. CSV 파일 수정
  2. commit 메시지에 변경 내용 명시
  3. push

👉 이전 데이터는 GitHub의 **History** 기능으로 언제든 확인 가능합니다.

---

## 🛠 사용 방법 (팀원 기준)

### 1️⃣ 저장소 클론
```bash
git clone https://github.com/rusidian/team_flex_used_car.git
