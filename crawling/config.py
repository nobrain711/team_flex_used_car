# ============================================================
# 0. 목적/개요
# - 크롤링에 필요한 고정 설정(베이스 URL, 엔드포인트, 헤더, 슬립 등)을 모아둔다.
# - 파일명(CATALOG_CSV/OUT_CSV)은 고정값으로 관리한다.
# ============================================================

BASE = "https://bobaedream.co.kr"
MARKET_URL = f"{BASE}/dealguide/market_price_new.php"
LIST_URL = f"{BASE}/mycar/mycar_list.php"

# 카탈로그/결과 CSV 파일명
CATALOG_CSV = "catalog_all.csv"
OUT_CSV = "bobaedream_all.csv"

# 목록 페이지 조회 옵션
VIEW_SIZE = 20

# 요청 헤더
HEADERS = {
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36",
    "Accept-Language": "ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7",
    "Referer": BASE,
}

# 요청 간격(서버 부하/차단 방지용)
SLEEP_SEC = 0.25