# import model
import re
from pathlib import Path

import pandas as pd
import requests
from bs4 import BeautifulSoup

from paths import DATA_DIR


class BobeCar:
    def __init__(self):
        self.__BASE_URL = "https://www.bobaedream.co.kr/mycar/mycar_list.php?gubun="

    def fetch_soup(self, url: str) -> BeautifulSoup:
        """
        주어진 URL의 HTML을 요청하여 BeautifulSoup 객체로 반환합니다.

        - 요청 실패, 네트워크 오류, HTTP 오류 발생 시 예외를 발생시킵니다.
        """

        try:
            response = requests.get(url, timeout=10)
            response.raise_for_status()  # 4xx / 5xx 처리

            html = response.text
            soup = BeautifulSoup(html, "html.parser")
            return soup

        except requests.exceptions.RequestException as e:
            print(f"[ERROR] Failed to fetch URL: {url} | {e}")
            raise

    def standardize_dataframe(self, data: dict, data_key: str, index_col: str | None = None) -> pd.DataFrame:
        """dict의 list[dict]를 DataFrame으로 변환합니다. 필요 시 index 설정."""
        try:
            if data_key not in data:
                raise KeyError(f"'{data_key}' not found in data")

            df = pd.DataFrame(data[data_key])
            if df.empty:
                raise ValueError(f"Data for '{data_key}' is empty")

            if index_col:
                if index_col not in df.columns:
                    raise ValueError(f"index_col '{index_col}' not in columns: {list(df.columns)}")
                df = df.set_index(index_col)

            return df

        except Exception as e:
            print(f"[ERROR] standardize_dataframe failed: {e}")
            raise

    def save_df_to_csv(
            self,
            df: pd.DataFrame,
            filename: str,
            dedup_keys: list[str],
            encoding: str = "utf-8",
    ) -> Path | None:
        """
        기존 CSV가 있으면 병합 후 dedup_keys 기준으로 중복 제거하여 저장합니다.
        실패 시 예외를 발생시킵니다.
        """
        if df is None or df.empty:
            print("[WARN] DataFrame is empty or None. Skip saving.")
            return None

        if not filename.lower().endswith(".csv"):
            filename = f"{filename}.csv"

        file_path = DATA_DIR / filename

        try:
            if file_path.exists():
                old_df = pd.read_csv(file_path, encoding=encoding)
                merged_df = pd.concat([old_df, df], ignore_index=True)

                missing = [k for k in dedup_keys if k not in merged_df.columns]
                if missing:
                    raise ValueError(f"dedup_keys에 없는 컬럼이 포함됨: {missing}")

                merged_df = merged_df.drop_duplicates(subset=dedup_keys, keep="first")
            else:
                merged_df = df

            merged_df.to_csv(file_path, index=False, encoding=encoding)
            print(f"[INFO] CSV updated: {file_path} (rows={len(merged_df)})")
            return file_path

        except Exception as e:
            print(f"[ERROR] save_df_to_csv failed: {file_path} | {e}")
            raise

    def get_maker_category(self, origin: str):
        """
        제조사 목록을 수집하고, DataFrame 및 CSV로 저장한 뒤
        처리 결과를 dict 형태로 반환합니다.

        처리 흐름:
        1. 제조사 페이지 HTML 요청
        2. 제조사 목록 파싱 (maker_name, maker_code, maker_volume)
        3. DataFrame 생성
        4. 기존 CSV와 병합 + 중복 제거 후 저장
        5. 처리 결과를 반환

        :param origin: 차량 구분 코드
                       'K' = 국산차, 'I' = 수입차

        :return:
            {
                "ok": True,              # 정상 처리 여부
                "df": DataFrame,         # 최종 제조사 DataFrame
                "csv_path": Path,        # 저장된 CSV 경로
                "count": int             # 제조사 개수
            }
        """

        # -------------------------------------------------
        # 1️⃣ 제조사 페이지 HTML 요청
        # -------------------------------------------------
        origin_url = self.__BASE_URL + origin
        soup = self.fetch_soup(origin_url)

        # -------------------------------------------------
        # 2️⃣ 제조사 영역(area-maker) 확인
        # -------------------------------------------------
        car_category_tag = soup.find("div", class_="area-maker")
        if car_category_tag is None:
            raise ValueError("제조사 영역(area-maker)을 찾을 수 없습니다.")

        # 제조사 버튼 목록 추출
        car_categories = car_category_tag.select('[onclick^="car_depth_lite"]')
        if not car_categories:
            raise ValueError("제조사 버튼(car_depth_lite)을 찾을 수 없습니다.")

        makers: list[dict] = []

        # -------------------------------------------------
        # 3️⃣ 각 제조사 정보 파싱
        # -------------------------------------------------
        for idx, car_category in enumerate(car_categories, start=1):

            # (1) 제조사 코드 추출
            onclick = car_category.get("onclick", "")
            match = re.search(r"car_depth_lite\('(\d+)'", onclick)
            if not match:
                raise ValueError(f"[{idx}] 제조사 코드 파싱 실패")

            maker_code = int(match.group(1))

            # (2) 제조사 이름 추출
            name_tag = car_category.select_one("span.t1")
            if name_tag is None:
                raise ValueError(f"[{idx}] 제조사 이름(span.t1) 없음")

            maker_name = name_tag.get_text(strip=True)

            # (3) 매물 수(제조사 보유 차량 수) 추출
            volume_tag = car_category.select_one("span.t2")
            if volume_tag is None:
                raise ValueError(f"[{idx}] 제조사 매물 수(span.t2) 없음")

            maker_volume = int(volume_tag.get_text(strip=True))

            # (4) 제조사 정보 저장
            makers.append({
                "maker_name": maker_name,
                "maker_code": maker_code,
                "maker_volume": maker_volume,
                "origin": origin,
            })

        # -------------------------------------------------
        # 4️⃣ DataFrame 생성 (index = maker_name)
        # -------------------------------------------------
        df = self.standardize_dataframe(
            data={"makers": makers},
            data_key="makers",
            index_col="maker_name",
        )

        # -------------------------------------------------
        # 5️⃣ CSV 저장 (기존 데이터와 병합 + 중복 제거)
        # -------------------------------------------------
        csv_path = self.save_df_to_csv(
            df=df.reset_index(),  # CSV에는 index 미포함
            filename="makers",
            dedup_keys=["maker_code", "origin"],
        )

        # -------------------------------------------------
        # 6️⃣ 처리 결과 반환
        # -------------------------------------------------
        return {
            "ok": True,  # 정상 처리 완료
            "df": df,  # 최종 DataFrame
            "csv_path": csv_path,  # 저장된 CSV 경로
            "count": len(df),  # 제조사 개수
        }
