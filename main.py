from bobe_car import BobeCar
from decorators import register_progress_loggers_once

PROGRESS_METHODS = {
    "get_soup": "HTML 수집",
    "get_maker_category": "제조사 수집",
    "standardize_dataframe": "DF 변환",
    "save_df_to_csv": "CSV 저장",
}

# PROGRESS_METHODS를 register_progress_loggers_once에 등록
register_progress_loggers_once(BobeCar, PROGRESS_METHODS)

car = BobeCar()
car.get_maker_category('K')
car.get_maker_category('I')