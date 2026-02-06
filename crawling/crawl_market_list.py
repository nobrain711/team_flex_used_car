# ============================================================
# 0. 목적/개요
# - mycar_list.php(목록)에서 매물 URL 목록을 수집하고,
#   mycar_view.php(상세)에서 가격/렌트정보/스펙을 파싱해 레코드로 만든다.
# - crawl_one_detail()은 "세부모델(detail_no)" 단위로 페이지를 순회한다.
# ============================================================

import re
import time
import requests
from bs4 import BeautifulSoup
from urllib.parse import urljoin
from config import BASE, MARKET_URL, LIST_URL, HEADERS, VIEW_SIZE, SLEEP_SEC


# ============================================================
# 1. 유틸(숫자 파싱)
# ============================================================

RE_NUM = re.compile(r"[^\d]")


def to_int_num(s: str) -> int | None:
    # "12,345" 같은 문자열에서 숫자만 남겨 int로 변환한다.
    if not s:
        return None
    t = RE_NUM.sub("", s)
    return int(t) if t else None


# ============================================================
# 2. 네트워크 요청(fetch)
# - requests.get으로 페이지를 받아 soup로 반환한다.
# - 상태코드/최종 URL을 출력하고, 오류는 예외로 올린다.
# ============================================================

def fetch(url: str, params: dict | None = None) -> BeautifulSoup:
    r = requests.get(url, params=params, headers=HEADERS, timeout=30, allow_redirects=True)
    print("[HTTP]", r.status_code, r.url)
    r.raise_for_status()
    return BeautifulSoup(r.text, "html.parser")


# ============================================================
# 3. 목록 페이지 파라미터/파싱
# - build_list_params: 목록 조회 파라미터 구성(세부모델은 model_no[]로 지정)
# - parse_list_page:
#   1) 매물 링크(/mycar/mycar_view...)를 찾아 detail_url로 정규화
#   2) 렌트/리스 여부를 텍스트 기반으로 1차 판정
#   3) 페이징 영역에서 마지막 페이지 추정
# ============================================================

def build_list_params(gubun: str, maker_no: int, group_no: int, detail_no: int, page: int) -> dict:
    return {
        "gubun": gubun,
        "maker_no": maker_no,
        "group_no": group_no,
        "model_no[]": detail_no,
        "page": page,
        "order": "S11",
        "view_size": VIEW_SIZE,
    }


def parse_list_page(soup: BeautifulSoup) -> tuple[list[dict], int]:
    items = []

    # 목록 DOM은 케이스가 달라질 수 있어 선택자를 넓게 잡되,
    # 실제로는 mycar_view 링크가 있는 li만 수집한다.
    for li in soup.select("ul.list-car > li, div.list-body ul > li, li"):
        a = li.select_one("div.mode-cell.title a[href^='/mycar/mycar_view']")
        if not a:
            continue

        detail_link = a.get("href")
        title = a.get_text(strip=True)

        li_text = li.get_text(" ", strip=True)
        rent_yn = ("렌트" in li_text) or ("렌트승계" in li_text) or ("리스" in li_text)

        # 목록 가격(만원) 파싱: 가격 셀 우선, 실패 시 li 전체 텍스트에서 재탐색
        list_price_wan = None
        price_cell = li.select_one("div.mode-cell.price b, div.mode-cell.price, .price, .mode-cell.price")
        if price_cell:
            txt = price_cell.get_text(" ", strip=True)
            m = re.search(r"([\d,]+)\s*만원", txt)
            if m:
                list_price_wan = to_int_num(m.group(1))

        if list_price_wan is None:
            m = re.search(r"([\d,]+)\s*만원", li_text)
            if m:
                list_price_wan = to_int_num(m.group(1))

        items.append({
            "model_name_list": title,
            "detail_link": detail_link,
            "detail_url": urljoin(BASE, detail_link),
            "rent_yn": rent_yn,
            "list_price_wan": list_price_wan,
        })

    # detail_url 기준으로 중복 제거
    uniq = {}
    for it in items:
        uniq[it["detail_url"]] = it
    items = list(uniq.values())

    # 마지막 페이지 추정(페이징 링크들 중 max page)
    last_page = 1
    paging = soup.select_one("div.paging-inner, div.paging, div.pagination")
    if paging:
        pages = []
        for link in paging.select("a[href*='page=']"):
            href = link.get("href", "")
            m = re.search(r"[?&]page=(\d+)", href)
            if m:
                pages.append(int(m.group(1)))
        strong = paging.select_one("strong")
        if strong and strong.get_text(strip=True).isdigit():
            pages.append(int(strong.get_text(strip=True)))
        if pages:
            last_page = max(pages)

    return items, last_page


# ============================================================
# 4. 상세 페이지 파싱 보조(리스/렌트 개월수)
# - "36 / 48개월" 형태에서 (remain, total)을 최대한 견고하게 추출한다.
# ============================================================

def parse_remain_total_months(text: str) -> tuple[int | None, int | None]:
    """
    "36 / 48개월", "36/48", "36 개월 / 48 개월" 등 대응
    """
    if not text:
        return None, None
    t = text.replace("개월", "").strip()

    nums = re.findall(r"\d+", t)
    if len(nums) >= 2:
        return int(nums[0]), int(nums[1])
    if len(nums) == 1:
        return int(nums[0]), None
    return None, None


# ============================================================
# 5. 상세 페이지 파싱(parse_detail_page)
# - 가격 박스(info-price)에서 일반 매물 가격 또는 렌트/리스 항목을 파싱한다.
# - 스펙 테이블(table)에서 연식/주행거리/연료/변속기/색상/배기량을 파싱한다.
# - 최초등록일(dd.txt-bar.cg)도 있으면 추출한다.
# ============================================================

def parse_detail_page(detail_url: str) -> dict:
    soup = fetch(detail_url)

    title = None
    price_wan = None

    rent_yn_detail = False
    support_money_wan = None
    acquisition_cost_wan = None
    monthly_rent_wan = None

    remain_months = None
    total_months = None
    remain_months_text = None

    box = soup.select_one("div.info-price.box")
    if box:
        h3 = box.select_one("h3.tit")
        if h3:
            title = h3.get_text(strip=True)

        # 렌트/리스 항목(인수비용/지원금/월렌트료/잔여개월 등)
        for dd in box.select("div.price-area dl dd"):
            stit = dd.select_one("span.stit")
            bcr = dd.select_one("span.price b.cr")
            if not stit or not bcr:
                continue

            k = stit.get_text(" ", strip=True)
            v = bcr.get_text(" ", strip=True)

            if k == "인수비용":
                rent_yn_detail = True
                acquisition_cost_wan = to_int_num(v)

            elif k == "승계지원금" or k == "지원금":
                rent_yn_detail = True
                support_money_wan = to_int_num(v)

            elif k == "월렌트료" or k == "월리스료":
                rent_yn_detail = True
                monthly_rent_wan = to_int_num(v)

            elif k == "잔여개월":
                rent_yn_detail = True
                remain_months_text = v
                remain_months, total_months = parse_remain_total_months(v)

        # 일반 매물 가격(b.cr 중 dd 바깥에 있는 값)
        if not rent_yn_detail:
            for b in box.select("b.cr"):
                if b.find_parent("dd") is None:
                    price_wan = to_int_num(b.get_text(strip=True))
                    break

    # 스펙 테이블 파싱
    year_month = mileage_km = fuel_type = transmission = color = None
    displacement_cc = None

    table = soup.select_one("table")
    if table:
        for th in table.select("th"):
            key = th.get_text(" ", strip=True)
            td = th.find_next_sibling("td")
            val = td.get_text(" ", strip=True) if td else ""

            if key == "연식":
                year_month = val
            elif key == "주행거리":
                mileage_km = to_int_num(val)
            elif key == "연료":
                fuel_type = val
            elif key == "변속기":
                transmission = val
            elif key == "색상":
                color = val
            elif key == "배기량":
                m = re.search(r"([\d,]+)\s*cc", val)
                if m:
                    displacement_cc = to_int_num(m.group(1))

    # 최초등록일(있을 때만)
    reg_date = None
    dd_reg = soup.select_one("dd.txt-bar.cg")
    if dd_reg:
        txt = dd_reg.get_text(" ", strip=True)
        m = re.search(r"최초등록\s*([0-9]{2}/[0-9]{2}/[0-9]{2})", txt)
        if m:
            reg_date = m.group(1)

    return {
        "model_name": title,
        "price_wan": price_wan,

        "rent_yn_detail": rent_yn_detail,
        "support_money_wan": support_money_wan,
        "acquisition_cost_wan": acquisition_cost_wan,
        "monthly_rent_wan": monthly_rent_wan,

        "remain_months": remain_months,
        "total_months": total_months,

        # 원문 보관이 필요 없으면 저장 단계에서 drop 가능
        "remain_months_text": remain_months_text,

        "year_month": year_month,
        "mileage_km": mileage_km,
        "fuel_type": fuel_type,
        "transmission": transmission,
        "color": color,
        "displacement_cc": displacement_cc,
        "reg_date": reg_date,
    }


# ============================================================
# 6. detail_no 단위 수집(crawl_one_detail)
# - 1) 1페이지를 요청해 last_page를 추정
# - 2) 2..last_page까지 목록을 순회하며 detail_url 목록을 누적
# - 3) 각 detail_url을 상세 파싱해 row를 만들고, 카탈로그 계층 ID를 붙여 반환
# ============================================================

def crawl_one_detail(
    gubun: str,
    maker_no: int,
    group_no: int,
    detail_no: int,
    max_pages: int | None = None
) -> list[dict]:
    params = build_list_params(gubun, maker_no, group_no, detail_no, page=1)
    soup = fetch(LIST_URL, params=params)
    items, last_page = parse_list_page(soup)

    if max_pages is not None:
        last_page = min(last_page, max_pages)

    for p in range(2, last_page + 1):
        time.sleep(SLEEP_SEC)
        params = build_list_params(gubun, maker_no, group_no, detail_no, page=p)
        soup_p = fetch(LIST_URL, params=params)
        page_items, _ = parse_list_page(soup_p)
        items.extend(page_items)

    rows = []
    for i, it in enumerate(items, 1):
        time.sleep(SLEEP_SEC)
        detail = parse_detail_page(it["detail_url"])

        row = {**it, **detail}

        # 카탈로그 계층 ID 저장(후속 DB 적재/조인용)
        row["gubun"] = gubun
        row["maker_no"] = maker_no
        row["group_no"] = group_no
        row["detail_no"] = detail_no

        # 목록 기반 rent_yn 대신 상세 기반 rent_yn_detail을 우선
        row["rent_yn"] = bool(row.get("rent_yn_detail"))

        rows.append(row)

        if i % 20 == 0:
            print(f"[DETAIL {detail_no}] {i}/{len(items)} 상세 수집중...")

    return rows