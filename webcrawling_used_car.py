import requests
from bs4 import BeautifulSoup
import pandas as pd
import time
import re
import random
from tqdm import tqdm

# -----------------------------
# 1. 크롤링 대상 설정
# -----------------------------
target_brands = [
    ("현대", 3, 20), ("기아", 49, 20), ("제네시스", 101, 15),
    ("쉐보레", 4, 15), ("르노코리아", 5, 10),
    ("BMW", 6, 15), ("벤츠", 21, 15), ("아우디", 18, 10)
]

base_url_template = "https://www.bobaedream.co.kr/mycar/mycar_list.php?gubun={}&maker_no={}&page={}"

urls = []
for brand_name, maker_no, page_cnt in target_brands:
    gubun = "K" if maker_no in [3, 4, 5, 49, 101] else "I"
    for page in range(1, page_cnt + 1):
        urls.append((brand_name, base_url_template.format(gubun, maker_no, page)))


def clean_number(text):
    if not text: return None
    nums = re.sub(r"[^\d]", "", text)
    return int(nums) if nums else None


# 헤더 정보를 더 실제 브라우저와 비슷하게 보강합니다.
headers = {
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36",
    "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8",
    "Accept-Language": "ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7",
    "Referer": "https://www.bobaedream.co.kr/"
}

cars_data = []

# -----------------------------
# 3. 크롤링 시작
# -----------------------------
print(f"🚀 안정성 강화 모드로 수집을 재시작합니다...")
pbar = tqdm(urls, desc="전체 진행 상황")

for brand_hint, url in pbar:
    try:
        # 목록 페이지 요청
        res = requests.get(url, headers=headers, timeout=10)
        soup = BeautifulSoup(res.text, "lxml")

        # [수정] 보배드림의 여러 리스트 스타일을 모두 체크합니다.
        # 일반 리스트형 혹은 갤러리형 등 구조가 다를 수 있음
        car_items = soup.find_all("li", class_=re.compile("product-item|actual-item"))

        if not car_items:
            # 다른 클래스명 시도
            car_items = soup.select("div.mode-cell.list-data")

        if not car_items:
            continue

        for car in car_items:
            try:
                # 상세 페이지 링크 추출 시도
                a_tag = car.find("a", href=True)
                if not a_tag or 'view' not in a_tag['href']: continue
                link = "https://www.bobaedream.co.kr" + a_tag["href"]

                # 🛑 차단 방지를 위해 매 상세페이지마다 0.7 ~ 1.2초 랜덤 대기
                time.sleep(random.uniform(0.7, 1.2))

                res2 = requests.get(link, headers=headers, timeout=5)
                # 만약 서버가 차단했다면 응답 코드가 200이 아님
                if res2.status_code != 200:
                    continue

                soup2 = BeautifulSoup(res2.text, "lxml")

                # 상세 정보 추출 (태그가 없는 경우 예외 처리 강화)
                name_tag = soup2.find("h3", class_="tit")
                if not name_tag: continue
                name = name_tag.get_text(strip=True)

                state = soup2.find("div", class_="tbl-01 st-low")
                if not state: continue

                # 프로젝트 필수 컬럼
                th_elements = state.find_all("th")
                info_dict = {}
                for th in th_elements:
                    key = th.get_text(strip=True)
                    val = th.find_next_sibling("td").get_text(strip=True) if th.find_next_sibling("td") else ""
                    info_dict[key] = val

                price_tag = soup2.find("span", class_="price")
                price_text = price_tag.get_text(strip=True) if price_tag else "0"

                cars_data.append({
                    "brand": brand_hint,
                    "model": name.replace(brand_hint, "").strip(),
                    "year": clean_number(info_dict.get("연식", "")[:4]),
                    "price_krw": clean_number(price_text) * 10000 if "만" in price_text else clean_number(price_text),
                    "mileage_km": clean_number(info_dict.get("주행거리", "")),
                    "fuel_type": info_dict.get("연료", ""),
                    "transmission": info_dict.get("변속기", ""),
                    "body_type": info_dict.get("차종", ""),
                    "displacement_cc": clean_number(info_dict.get("배기량", "")),
                    "link": link
                })
                pbar.set_postfix(수집건수=len(cars_data))

            except Exception:
                continue

    except Exception as e:
        time.sleep(5)  # 큰 에러 발생 시 길게 휴식
        continue

# -----------------------------
# 4. 최종 데이터 저장
# -----------------------------
if cars_data:
    df = pd.DataFrame(cars_data)
    df = df.drop_duplicates(subset=['link'])
    df.to_csv("used_cars_fix.csv", index=False, encoding="utf-8-sig")
    print(f"\n✅ 성공! 총 {len(df)}건이 저장되었습니다.")
else:
    print("\n❌ 여전히 수집된 데이터가 없습니다. 보배드림 측에서 IP를 일시 차단했을 가능성이 큽니다.")