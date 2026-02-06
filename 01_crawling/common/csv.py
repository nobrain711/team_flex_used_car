import pandas as pd

from .paths import DATA_DIR


def load_csv(filename: str, encoding: str = 'utf-8') -> pd.DataFrame:
    """
    프로젝트 data/ 디렉터리의 CSV 파일을 읽어 DataFrame으로 반환합니다.

    - 파일이 없거나
    - CSV 파싱 중 오류가 발생하면
      None을 반환하고 로그를 출력합니다.

    :param filename: CSV 파일명 (확장자 .csv 생략 가능)
    :param encoding: CSV 인코딩
    :return: DataFrame 또는 None
    """

    if not filename.lower().endswith('.csv'):
        filename = f'{filename}.csv'

    file_path = DATA_DIR / filename

    if not file_path.exists():
        print(f'[WARN] CSV not found: {filename}')
        return None

    try:
        df = pd.read_csv(file_path, encoding=encoding)

        if df.empty:
            print(f'[WARN] CSV is empty: {filename}')
            return df

        print(f'[INFO] CSV loaded: {filename}')
        return df

    except Exception as e:
        print(f"[ERROR] Failed to load CSV: {file_path} | {e}")
        raise
