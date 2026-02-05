# -------------------------------------------------
# 표준 라이브러리 / 외부 라이브러리 import
# -------------------------------------------------
import re
from pathlib import Path
import pandas as pd
import requests
from bs4 import BeautifulSoup

# 프로젝트 공통 데이터 저장 경로
from paths import DATA_DIR

# 프로젝트 정규식
from pasers.regex_patterns import RE_MODEL_CODE, RE_MAKER_CODE


class BobeCar:
    """
    보배드림 중고차 사이트에서
    제조사/모델/세대모델 정보를 수집하기 위한 클래스
    """

    def __init__(self):
        # 제조사/모델 목록 페이지의 공통 베이스 URL
        self.__BASE_URL = "https://www.bobaedream.co.kr/mycar/mycar_list.php?gubun="

    def fetch_soup(self, url: str) -> BeautifulSoup:
        """
        주어진 URL에 HTTP 요청을 보내 HTML을 가져온 뒤,
        BeautifulSoup 객체로 변환하여 반환합니다.

        - 네트워크 오류
        - HTTP 오류(4xx, 5xx)
        발생 시 예외를 발생시킵니다.

        :param url: 요청할 페이지 URL
        :return: BeautifulSoup 객체
        """

        try:
            # 페이지 요청 (응답이 없으면 10초 후 타임아웃)
            response = requests.get(url, timeout=10)

            # HTTP 상태 코드가 4xx / 5xx 인 경우 예외 발생
            response.raise_for_status()

            # HTML → BeautifulSoup 변환
            html = response.text
            soup = BeautifulSoup(html, "html.parser")
            return soup

        except requests.exceptions.RequestException as e:
            # 요청/네트워크/HTTP 오류 로그 출력 후 예외 재전파
            print(f"[ERROR] Failed to fetch URL: {url} | {e}")
            raise

    def standardize_dataframe(
            self,
            data: dict,
            data_key: str,
            index_col: str | None = None
    ) -> pd.DataFrame:
        """
        dict 안에 들어있는 list[dict] 데이터를 DataFrame으로 변환합니다.
        필요하면 특정 컬럼을 index로 설정합니다.

        :param data: 원본 데이터 딕셔너리
                     예) {"makers": [...], "models": [...]}
        :param data_key: DataFrame으로 변환할 key
                         예) "makers"
        :param index_col: DataFrame index로 사용할 컬럼명 (선택)
        :return: 표준화된 DataFrame
        """

        try:
            # 요청한 key가 data에 없는 경우
            if data_key not in data:
                raise KeyError(f"'{data_key}' not found in data")

            # list[dict] → DataFrame 변환
            df = pd.DataFrame(data[data_key])

            # 데이터가 비어 있는 경우
            if df.empty:
                raise ValueError(f"Data for '{data_key}' is empty")

            # index 설정이 필요한 경우
            if index_col:
                if index_col not in df.columns:
                    raise ValueError(
                        f"index_col '{index_col}' not in columns: {list(df.columns)}"
                    )
                df = df.set_index(index_col)

            return df

        except Exception as e:
            # DataFrame 변환 단계에서 발생한 모든 오류 로그 출력
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
        DataFrame을 CSV 파일로 저장합니다.

        - 기존 CSV 파일이 있으면:
          기존 데이터 + 새 데이터를 병합한 뒤,
          dedup_keys 기준으로 중복 제거 후 저장합니다.
        - 기존 파일이 없으면 새로 생성합니다.

        :param df: 저장할 DataFrame
        :param filename: 저장할 파일명 (확장자 없으면 .csv 자동 추가)
        :param dedup_keys: 중복 제거 기준 컬럼 목록
        :param encoding: CSV 인코딩 방식
        :return: 저장된 CSV 파일 경로 (Path)
        """

        # 저장할 데이터가 없는 경우
        if df is None or df.empty:
            print("[WARN] DataFrame is empty or None. Skip saving.")
            return None

        # 파일명에 .csv 확장자가 없으면 자동 추가
        if not filename.lower().endswith(".csv"):
            filename = f"{filename}.csv"

        # 최종 저장 경로
        file_path = DATA_DIR / filename

        try:
            # 기존 CSV 파일이 있는 경우
            if file_path.exists():
                # 기존 데이터 로드
                old_df = pd.read_csv(file_path, encoding=encoding)

                # 기존 데이터 + 신규 데이터 병합
                merged_df = pd.concat([old_df, df], ignore_index=True)

                # 중복 제거 기준 컬럼 검증
                missing = [k for k in dedup_keys if k not in merged_df.columns]
                if missing:
                    raise ValueError(f"dedup_keys에 없는 컬럼이 포함됨: {missing}")

                # 중복 제거
                merged_df = merged_df.drop_duplicates(
                    subset=dedup_keys,
                    keep="first"
                )
            else:
                # 기존 파일이 없으면 그대로 사용
                merged_df = df

            # CSV 파일 저장 (항상 덮어쓰기)
            merged_df.to_csv(file_path, index=False, encoding=encoding)

            print(f"[INFO] CSV updated: {file_path} (rows={len(merged_df)})")
            return file_path

        except Exception as e:
            # CSV 저장 과정에서 발생한 오류 로그 출력
            print(f"[ERROR] save_df_to_csv failed: {file_path} | {e}")
            raise

    def get_maker_category(self, origin: str) -> dict:
        """
        제조사 목록을 수집하고,
        DataFrame으로 변환한 뒤 CSV 파일로 저장합니다.

        제조사 페이지에서 다음 정보를 수집합니다.
        - maker_name  : 제조사 이름
        - maker_code  : 제조사 코드
        - maker_volume: 제조사 보유 매물 수
        - origin      : 차량 구분 코드 (K / I)

        :param origin: 차량 구분 코드
                       'K' = 국산차
                       'I' = 수입차

        :return:
            {
                "ok": 정상 처리 여부,
                "df": 생성된 제조사 DataFrame,
                "csv_path": 저장된 CSV 파일 경로,
                "count": 제조사 개수
            }
        """

        try:
            # 제조사 페이지 요청 및 HTML 파싱
            origin_url = self.__BASE_URL + origin
            soup = self.fetch_soup(origin_url)

            # 제조사 영역 확인
            car_category_tag = soup.select_one("div", class_="area-maker")
            if car_category_tag is None:
                raise ValueError("제조사 영역(area-maker)을 찾을 수 없습니다.")

            # 제조사 버튼 목록 추출
            car_categories = car_category_tag.select('[onclick^="car_depth_lite"]')
            if not car_categories:
                raise ValueError("제조사 버튼(car_depth_lite)을 찾을 수 없습니다.")

            makers: list[dict] = []

            # 제조사 정보 파싱
            for idx, car_category in enumerate(car_categories, start=1):

                match = RE_MAKER_CODE.search(car_category.get("onclick", ""))
                if not match:
                    raise ValueError(f"[{idx}] 제조사 코드 파싱 실패")
                maker_code = int(match.group(1))

                name_tag = car_category.select_one("span.t1")
                if name_tag is None:
                    raise ValueError(f"[{idx}] 제조사 이름(span.t1) 없음")
                maker_name = name_tag.get_text(strip=True)

                volume_tag = car_category.select_one("span.t2")
                if volume_tag is None:
                    raise ValueError(f"[{idx}] 제조사 매물 수(span.t2) 없음")
                maker_volume = int(volume_tag.get_text(strip=True))

                makers.append({
                    "maker_name": maker_name,
                    "maker_code": maker_code,
                    "maker_volume": maker_volume,
                    "origin": origin,
                })

            # DataFrame 변환 (index = maker_name)
            df = self.standardize_dataframe(
                data={"makers": makers},
                data_key="makers",
                index_col="maker_name",
            )

            # CSV 저장 (기존 데이터와 병합 후 중복 제거)
            csv_path = self.save_df_to_csv(
                df=df.reset_index(),
                filename="makers",
                dedup_keys=["maker_code", "origin"],
            )

            return {
                "ok": True,
                "df": df,
                "csv_path": csv_path,
                "count": len(df),
            }

        except Exception as e:
            print(f"[ERROR] get_maker_category failed (origin={origin}): {e}")
            raise

    def get_maker_models(self, origin: str, maker_code: int) -> dict:
        """
        제조사에서 판매를 모델의 정보 수집하고,
        DataFrame으로 변환한 뒤 CSV 파일로 저장합니다.

        제조사 페이지에서 다음 정보를 수집합니다.
        - maker_code  : 제조사 코드
        - origin      : 차량 구분 코드 (K / I)
        - model_name  : 차량 모델 이름
        - model_code  : 차량 모델 코드
        - model_volume: 차량 모델 등록 대수
        
        :param origin: 차량 구분 코드
                       'K' = 국산차
                       'I' = 수입차
        :param maker_code: 제조사 코드

        :return:
            {
                "ok": 정상 처리 여부,
                "df": 생성된 차량 모델 정보 DataFrame,
                "csv_path": 저장된 CSV 파일 경로,
                "count": 차량 모델 개수
            }
        """
        try:
            # 제조사 차량 페이지 요청 및 HTML 파싱
            maker_url = f'{self.__BASE_URL}{origin}&maker_no={maker_code}'
            soup = self.fetch_soup(maker_url)

            # 차량 모델 영역 확인
            model_category_tag = soup.select_one("div", class_="area-model")
            if model_category_tag is None:
                raise ValueError("차량 모델 영역(area-model)을 찾을 수 없습니다.")

            # 차량 모델 버튼 목록 추출
            model_categories = model_category_tag.select('button')
            if not model_categories:
                raise ValueError("차량 모델 버튼을 찾을 수 없습니다.")

            models: list[dict] = []

            # 차량 모델 정보 파싱
            for idx, model_category in enumerate(model_categories, start=1):

                match = RE_MODEL_CODE.search((model_category.get("onclick", "")))
                if not match:
                    raise ValueError(f"[{idx}] 차량 모델 코드 파싱 실패")
                model_code = int(match.group(1))

                name_tag = model_category.select_one("span.t1")
                if name_tag is None:
                    raise ValueError(f"[{idx}] 차량 모델 이름(span.t1) 없음")
                model_name = name_tag.get_text(strip=True)

                volume_tag = model_category.select_one("span.t2")
                if volume_tag is None:
                    raise ValueError(f"[{idx}] 차량 모델 매물 수(span.t2) 없음")
                model_volume = int(volume_tag.get_text(strip=True))

                models.append({
                    "model_name": model_name,
                    "model_code": model_code,
                    "model_volume": model_volume,
                    "maker_code": maker_code,
                    "origin": origin,
                })

            # DataFrame 변환 (index = model_name)
            df = self.standardize_dataframe(
                data={"models": models},
                data_key="models",
                index_col="model_name",
            )

            # CSV 저장 (기존 데이터와 병합 후 중복 제거)
            csv_path = self.save_df_to_csv(
                df=df.reset_index(),
                filename="models",
                dedup_keys=["model_code", "maker_code", "origin"],
            )

            return {
                "ok": True,
                "df": df,
                "csv_path": csv_path,
                "count": len(df),
            }

        except Exception as e:
            print(f"[ERROR] get_maker_model failed (origin={origin},maker={maker_code}): {e}")
            raise

    def get_model_generation(
            self,
            origin: str,
            maker_code: int,
            model_code: int
    ) -> dict:
        """
    차량 모델의 세대 정보 수집하고,
    DataFrame으로 변환한 뒤 CSV 파일로 저장합니다.

    제조사 페이지에서 다음 정보를 수집합니다.
    - maker_code  : 제조사 코드
    - origin      : 차량 구분 코드 (K / I)
    - model_code  : 차량 모델 코드
    - generation_name : 차량 모델 세대 이름
    - generation_code : 차량 모델 세대 코드
    - generation_volume : 등록된 차량 모델 세대 대수

    :param origin: 차량 구분 코드
                   'K' = 국산차
                   'I' = 수입차
    :param maker_code: 제조사 코드
    :param model_code: 차량 모델 코드

    :return:
        {
            "ok": 정상 처리 여부,
            "df": 생성된 차량 모델 정보 DataFrame,
            "csv_path": 저장된 CSV 파일 경로,
            "count": 차량 모델 세대 개수
        }
    """

        try:
            # 차량 세대 페이지 요청 및 HTML 파싱
            model_url = f'{self.__BASE_URL}{origin}&maker_no={maker_code}&group_no={model_code}'
            soup = self.fetch_soup(model_url)

            # 차량 모델 세대 영역 확인
            generation_category_tag = soup.select_one("div.area-detail dl.group-list")
            if generation_category_tag is None:
                raise ValueError("차량 모델 세대 영역(area-detail)을 찾을 수 없습니다.")

            # 차량 모델 세대 목록 추출
            generation_dds = generation_category_tag.select("dd", recursive=False)
            generation_categories = [
                dd
                for dd in generation_dds
                if "display:none" not in (dd.get("style") or "").replace(" ", "").lower()
            ]
            if not generation_categories:
                raise ValueError("차량 모델 버튼을 찾을 수 없습니다.")

            generations: list[dict] = []

            # 차량 모델 세데 정보 파싱
            for idx, generation_category in enumerate(generation_categories, start=1):

                input_tag = generation_category.select_one('input[name="model_no[]"]')
                if not input_tag or not input_tag.has_attr("value"):
                    raise ValueError(f"[{idx}] 차량 모델 세대 코드 파싱 실패")
                generation_code = int(input_tag.get("value"))

                name_tag = generation_category.select_one("label")
                if name_tag is None:
                    raise ValueError(f"[{idx}] 차량 모델 세대 이름(label) 없음")
                generation_name = name_tag.get_text(strip=True)

                volume_tag = generation_category.select_one("span.t2")
                if volume_tag is None:
                    raise ValueError(f"[{idx}] 차량 모델 매물 수(span.t2) 없음")
                generation_volume = int(volume_tag.get_text(strip=True))

                generations.append({
                    "generation_name": generation_name,
                    "generation_code": generation_code,
                    "generation_volume": generation_volume,
                    "maker_code": maker_code,
                    "model_code": model_code,
                    "origin": origin,
                })

            # DataFrame 변환 (index = model_name)
            df = self.standardize_dataframe(
                data={"generations": generations},
                data_key="generations",
                index_col="generation_name",
            )

            # CSV 저장 (기존 데이터와 병합 후 중복 제거)
            csv_path = self.save_df_to_csv(
                df=df.reset_index(),
                filename="generations",
                dedup_keys=["generation_code", "model_code", "maker_code", "origin"],
            )

            return {
                "ok": True,
                "df": df,
                "csv_path": csv_path,
                "count": len(df),
            }


        except Exception as e:
            print(
                f"[ERROR] get_maker_generation failed (origin={origin},maker={maker_code},model={model_code}): {e}")
            raise
