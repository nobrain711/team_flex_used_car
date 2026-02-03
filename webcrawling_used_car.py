import requests
import time
import pandas as pd
from bs4 import BeautifulSoup
from tqdm import tqdm

# =========================
# 1. 브랜드 + maker_no
# =========================
BRANDS = {
    "현대": 49,
    "제네시스": 1010,
    "기아": 3,
    "쉐보레/대우": 8,
    "르노코리아(삼성)": 26,
    "KG모빌리티(쌍용)": 31,
    "BMW": 1,
    "벤츠": 21,
    "아우디": 32,
    "폭스바겐": 44,
    "포르쉐": 43,
    "테슬라": 1006,
    "토요타": 9,
    "렉서스": 13,
    "혼다": 50,
    "닛산": 5,
    "포드": 42,
    "지프": 96,
    "볼보": 23,
    "랜드로버": 12,
    "재규어": 37,
    "미니": 97,
}

BASE_URL = "https://www.bobaedream.co.kr/mycar/mycar_list.php"

HEADERS = {
    "User-Agent": "Mozilla/5.0"
}

results = []

# =========================
# 2. 크롤링 시작
# =========================
print("📡 보배드림 중고차 크롤링 시작\n")

for brand, maker_no in BRANDS.items():
    print(f"🚗 {brand} 수집 시작 (maker_no={maker_no})")

    page = 1
    while True:
        params = {
            "maker_no": maker_no,
            "page": page
        }

        res = requests.get(BASE_URL, headers=HEADERS, params=params)
        soup = BeautifulSoup(res.text, "html.parser")

        items = soup.select("tr")

        if not items:
            break

        collected = 0

        for item in items:
            # =========================
            # 모델명
            # =========================
            model_el = item.select_one("td.title a")
            if not model_el:
                continue

            model = model_el.text.strip()

            # =========================
            # 가격
            # =========================
            price_el = item.select_one("em.cr")
            if not price_el:
                continue

            price = int(price_el.text.replace(",", ""))

            # =========================
            # 연식 / 주행거리 / 연료
            # =========================
            texts = item.select("span.text")

            year = None
            mileage = None
            fuel = None

            if len(texts) >= 1:
                year = texts[0].get_text(strip=True)

            if len(texts) >= 2:
                mileage = (
                    texts[1].text
                    .replace("만km", "0000")
                    .replace("km", "")
                    .replace(",", "")
                    .strip()
                )

            if len(texts) >= 3:
                fuel = texts[2].text.strip()

            results.append({
                "brand": brand,
                "model": model,
                "year": year,
                "price": price,
                "mileage": mileage,
                "fuel_type": fuel
            })

            collected += 1

        if collected == 0:
            break

        page += 1
        time.sleep(0.3)

# =========================
# 3. CSV 저장
# =========================
df = pd.DataFrame(results)
df.to_csv("used_cars_bobaedream_final.csv", index=False, encoding="utf-8-sig")

print("\n✅ 수집 완료:", len(df), "건")
print("📁 used_cars_bobaedream_final.csv 저장 완료\n")

# =========================
# 4. 브랜드별 수집 검증
# =========================
print(df["brand"].value_counts())
