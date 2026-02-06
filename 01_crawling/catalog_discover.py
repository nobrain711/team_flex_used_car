# ============================================================
# 0. 목적/개요
# - market_price_new.php 페이지에서 국산(K)/수입(I) 카탈로그를 수집한다.
# - 결과는 제조사/모델그룹/세부모델(detail) 단위의 목록(DataFrame)이다.
# ============================================================

import re
import time
import requests
import pandas as pd
from bs4 import BeautifulSoup

from config import MARKET_URL, HEADERS, SLEEP_SEC


# ============================================================
# 1. 정규식/유틸
# - 페이지 onclick/class 등에서 maker_no, group_no, detail group을 추출한다.
# - 숫자 파싱(to_int_num)은 공통으로 사용한다.
# ============================================================

RE_MAKER = re.compile(r"car_depth_lite\('(\d+)',\s*1")
RE_MODEL = re.compile(r"modelSel\((\d+),")
RE_DETAIL_CLASS = re.compile(r"\bc_model_(\d+)\b")
RE_NUM = re.compile(r"[^\d]")


def fetch_html(params: dict) -> str:
    # MARKET_URL에 파라미터를 붙여 HTML을 받아온다.
    r = requests.get(MARKET_URL, params=params, headers=HEADERS, timeout=30)
    r.raise_for_status()
    return r.text


def to_int_num(s: str) -> int | None:
    # 문자열에서 숫자만 남겨 int로 변환한다.
    t = RE_NUM.sub("", s or "")
    return int(t) if t else None


# ============================================================
# 2. 수입차(I) 제조사 파싱
# - 수입차 탭은 재고(매물 수) 있는 제조사만 노출되는 구조라 별도 파서를 둔다.
# ============================================================

def parse_import_makers_only_has_stock(soup: BeautifulSoup) -> list[tuple[int, str]]:
    makers = []
    dl = soup.select_one("div.list-comm.js-tabs dl.group-list")
    if not dl:
        return makers

    for child in dl.find_all(["dd", "dt"], recursive=False):
        # 수입차 영역에서 '그룹 타이틀' 이후는 다른 구획일 수 있어 중단
        if child.name == "dt" and "group-tit" in (child.get("class") or []):
            break
        if child.name != "dd":
            continue

        btn = child.select_one("button[onclick*='car_depth_lite']")
        if not btn:
            continue

        m = RE_MAKER.search(btn.get("onclick", ""))
        if not m:
            continue

        maker_no = int(m.group(1))
        maker_name = btn.select_one("span.t1").get_text(strip=True)

        # 매물 수가 0이면 스킵
        cnt_el = btn.select_one("span.t2")
        cnt = to_int_num(cnt_el.get_text(strip=True)) if cnt_el else 0
        if not cnt or cnt <= 0:
            continue

        makers.append((maker_no, maker_name))

    return makers


# ============================================================
# 3. 카탈로그 수집(제조사 -> 모델그룹 -> 세부모델)
# - gubun(K/I)에 따라 제조사 목록 파싱 방식이 다르다.
# - 제조사 페이지에서 모델그룹 목록을 만들고, detail 영역에서 group_no에 매칭한다.
# ============================================================

def discover_catalog(gubun: str) -> pd.DataFrame:
    """
    return rows:
      { gubun, maker_no, maker_name, group_no, group_name, detail_no, detail_name, detail_count }
    """
    html = fetch_html({"gubun": gubun})
    soup = BeautifulSoup(html, "html.parser")

    # 1) 제조사 목록 추출
    if gubun == "I":
        makers = parse_import_makers_only_has_stock(soup)
    else:
        makers = []
        for btn in soup.select("div.area-maker dl.group-list button[onclick*='car_depth_lite']"):
            m = RE_MAKER.search(btn.get("onclick", ""))
            if not m:
                continue
            maker_no = int(m.group(1))
            maker_name = btn.select_one("span.t1").get_text(strip=True)
            makers.append((maker_no, maker_name))

    catalog_rows = []

    # 2) 제조사별 상세(모델그룹/세부모델) 수집
    for maker_no, maker_name in makers:
        time.sleep(SLEEP_SEC)
        html_m = fetch_html({"gubun": gubun, "maker_no": maker_no})
        soup_m = BeautifulSoup(html_m, "html.parser")

        # 모델그룹(group_no -> group_name) 맵 구성
        models = {}
        for btn in soup_m.select("div.area-model dl.group-list button[onclick*='modelSel']"):
            m = RE_MODEL.search(btn.get("onclick", ""))
            if not m:
                continue
            group_no = int(m.group(1))
            group_name = btn.select_one("span.t1").get_text(strip=True)
            models[group_no] = group_name

        # 세부모델(detail) 추출: dd class에 group_no가 들어있어 모델그룹과 연결
        for dd in soup_m.select("div.area-detail dl.group-list dd"):
            cls = " ".join(dd.get("class", []))
            cm = RE_DETAIL_CLASS.search(cls)
            if not cm:
                continue
            group_no = int(cm.group(1))
            group_name = models.get(group_no, "")

            inp = dd.select_one("input[name='model_no[]']")
            lab = dd.select_one("label")
            cnt = dd.select_one("span.t2")

            if not inp or not lab:
                continue

            detail_no = int(inp.get("value"))
            detail_name = lab.get_text(" ", strip=True)
            detail_count = to_int_num(cnt.get_text(strip=True)) if cnt else None

            catalog_rows.append({
                "gubun": gubun,
                "maker_no": maker_no,
                "maker_name": maker_name,
                "group_no": group_no,
                "group_name": group_name,
                "detail_no": detail_no,
                "detail_name": detail_name,
                "detail_count": detail_count
            })

    return pd.DataFrame(catalog_rows)