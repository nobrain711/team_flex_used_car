BRANDS = {
    "현대": 49,
    "제네시스": 1010,
    "기아": 3,
    "쉐보레/대우": 8,
    "르노코리아(삼성)": 26,
    "KG모빌리티(쌍용)": 31,
    "어울림모터스": 1000,

    # 수입차
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

import requests
import time
import pandas as pd
from bs4 import BeautifulSoup
from tqdm import tqdm
from datetime import datetime

BASE_URL = "https://www.bobaedream.co.kr/mycar/mycar_list.php"

HEADERS = {
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"
}

results = []
MAX_EMPTY_PAGES = 3  # 연속 3페이지 빈 페이지면 중단

print("=" * 70)
print("🚗 보배드림 중고차 크롤링 시작 (상세 정보 포함)")
print(f"⏰ 시작 시간: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}")
print("=" * 70)

start_time = time.time()
total_brands = len(BRANDS)
current_brand_num = 0

for brand, maker_no in BRANDS.items():
    current_brand_num += 1

    print(f"\n{'=' * 70}")
    print(f"🚗 [{current_brand_num}/{total_brands}] {brand} 수집 중 (maker_no={maker_no})")
    print(f"{'=' * 70}")

    page = 1
    empty_page_count = 0
    brand_item_count = 0
    brand_start_time = time.time()

    pbar = tqdm(desc=f"{brand} 페이지", unit="page", position=0, leave=True)

    while True:
        try:
            params = {
                "maker_no": maker_no,
                "page": page
            }

            res = requests.get(
                BASE_URL,
                headers=HEADERS,
                params=params,
                timeout=10
            )

            if res.status_code != 200:
                print(f"\n⚠️ {brand} {page}페이지 응답 오류")
                break

            soup = BeautifulSoup(res.text, "html.parser")

            # 실제 HTML 구조: <li class="product-item">
            items = soup.select("li.product-item")

            if not items or len(items) == 0:
                empty_page_count += 1
                pbar.set_postfix({
                    "수집": brand_item_count,
                    "빈페이지": f"{empty_page_count}/{MAX_EMPTY_PAGES}"
                })

                if empty_page_count >= MAX_EMPTY_PAGES:
                    print(f"\n🛑 {brand} 연속 {MAX_EMPTY_PAGES}페이지 데이터 없음, 종료")
                    break

                page += 1
                pbar.update(1)
                time.sleep(0.5)
                continue

            # 데이터 발견 시 빈 페이지 카운터 리셋
            empty_page_count = 0
            page_items_found = 0

            for item in items:
                try:
                    # 차량명 추출 (HTML: <p class="tit"><a>차량명</a></p>)
                    title_elem = item.select_one(".mode-cell.title p.tit a")
                    if not title_elem:
                        continue

                    model_name = title_elem.get_text(strip=True)

                    if not model_name or len(model_name) < 2:
                        continue

                    # 링크 추출
                    car_link = title_elem.get('href', '')
                    if car_link and not car_link.startswith('http'):
                        car_link = "https://www.bobaedream.co.kr" + car_link

                    # 연식 추출 (HTML: <div class="mode-cell year"><span class="text">연식</span></div>)
                    year_elem = item.select_one(".mode-cell.year span.text")
                    year = year_elem.get_text(strip=True) if year_elem else ""

                    # 연료 추출
                    fuel_elem = item.select_one(".mode-cell.fuel span.text")
                    fuel = fuel_elem.get_text(strip=True) if fuel_elem else ""

                    # 주행거리 추출
                    km_elem = item.select_one(".mode-cell.km span.text")
                    mileage = km_elem.get_text(strip=True) if km_elem else ""

                    # 가격 추출 (HTML: <div class="mode-cell price"><b><em class="cr">가격</em>만원</b></div>)
                    price_elem = item.select_one(".mode-cell.price b")
                    price = price_elem.get_text(strip=True) if price_elem else ""

                    # 지역 추출 (HTML: <div class="seller-content"><ul><li><span class="text">지역</span></li></ul></div>)
                    region_elem = item.select_one(".seller-content .content-list .content-item span.text")
                    region = region_elem.get_text(strip=True) if region_elem else ""

                    # 판매자 정보 추출
                    seller_elem = item.select_one(".seller-name a span.text")
                    seller_name = ""
                    seller_type = ""
                    if seller_elem:
                        seller_text = seller_elem.get_text(strip=True)
                        # "김강섭(반복)" 형태를 분리
                        if "(" in seller_text:
                            parts = seller_text.split("(")
                            seller_name = parts[0].strip()
                            seller_type = parts[1].replace(")", "").strip()
                        else:
                            seller_name = seller_text

                    # 등록일 추출
                    reg_date = ""
                    reg_date_items = item.select(".seller-content .content-list .content-item")
                    for reg_item in reg_date_items:
                        title_span = reg_item.select_one("span.title")
                        if title_span and "등록" in title_span.get_text(strip=True):
                            text_span = reg_item.select_one("span.text")
                            if text_span:
                                reg_date = text_span.get_text(strip=True)
                                break

                    # 조회수 추출
                    views = ""
                    view_items = item.select(".seller-content .content-list .content-item")
                    for view_item in view_items:
                        title_span = view_item.select_one("span.title")
                        if title_span and "조회" in title_span.get_text(strip=True):
                            text_span = view_item.select_one("span.text")
                            if text_span:
                                views = text_span.get_text(strip=True)
                                break

                    results.append({
                        "brand": brand,
                        "maker_no": maker_no,
                        "model_name": model_name,
                        "price": price,
                        "year": year,
                        "mileage": mileage,
                        "fuel": fuel,
                        "region": region,
                        "seller_name": seller_name,
                        "seller_type": seller_type,
                        "reg_date": reg_date,
                        "views": views,
                        "link": car_link
                    })

                    brand_item_count += 1
                    page_items_found += 1

                except Exception as e:
                    print(f"\n⚠️ 항목 처리 중 오류: {e}")
                    continue

            pbar.set_postfix({
                "수집": brand_item_count,
                "이번페이지": page_items_found
            })

            page += 1
            pbar.update(1)
            time.sleep(0.5)

        except Exception as e:
            print(f"\n⚠️ {brand} {page}페이지 오류: {e}")
            break

    pbar.close()

    brand_elapsed = time.time() - brand_start_time
    print(f"\n✅ {brand} 완료: {brand_item_count}개 수집 (소요시간: {brand_elapsed:.1f}초)")
    print(f"📊 전체 진행: {len(results)}개 수집 완료")

total_elapsed = time.time() - start_time

print("\n" + "=" * 70)
print("✅ 전체 수집 완료!")
print(f"⏰ 종료 시간: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}")
print(f"⏱️ 총 소요 시간: {total_elapsed / 60:.1f}분")
print(f"📊 총 수집 데이터: {len(results)}건")
print("=" * 70)

# 데이터프레임 생성
df = pd.DataFrame(results)

# CSV 저장
output_file = "used_cars_bobaedream_final.csv"
df.to_csv(
    output_file,
    index=False,
    encoding="utf-8-sig"
)

print(f"\n📁 {output_file} 저장 완료")
print("\n📊 브랜드별 수집 현황:")
brand_counts = df["brand"].value_counts()
for brand_name, count in brand_counts.items():
    print(f"  • {brand_name}: {count}건")

# 데이터 미리보기
print("\n📋 데이터 샘플 (처음 5개):")
print(df.head(5))

# 데이터 요약 정보
print("\n📈 수집된 데이터 품질:")
print(f"  • 총 데이터: {len(df)}건")
print(f"  • 브랜드 수: {df['brand'].nunique()}개")
print(f"  • 가격 정보: {df['price'].notna().sum()}건 ({df['price'].notna().sum() / len(df) * 100:.1f}%)")
print(f"  • 연식 정보: {df['year'].notna().sum()}건 ({df['year'].notna().sum() / len(df) * 100:.1f}%)")
print(f"  • 주행거리 정보: {df['mileage'].notna().sum()}건 ({df['mileage'].notna().sum() / len(df) * 100:.1f}%)")
print(f"  • 지역 정보: {df['region'].notna().sum()}건 ({df['region'].notna().sum() / len(df) * 100:.1f}%)")

print("\n🎉 크롤링 완료!")