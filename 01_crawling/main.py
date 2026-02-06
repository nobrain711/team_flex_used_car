from bobe_car import BobeCar
from run_all import main
from common.progress import register_progress_loggers_once
from common.csv_io import load_csv

PROGRESS_METHODS = {
    "get_soup": "HTML 수집",
    "get_maker_category": "제조사 수집",
    "get_maker_models": "차량 모델 수집",
    "get_model_generation": "차량 모델 세대 수집",
    "get_generation_terms": "차량 모델 세대 트림 수집",
    "get_term_by_grade": "차량 모델 세대 트림 상세 수집",
    "standardize_dataframe": "DF 변환",
    "save_df_to_csv": "CSV 저장",
}

# PROGRESS_METHODS를 register_progress_loggers_once에 등록
register_progress_loggers_once(BobeCar, PROGRESS_METHODS)

if __name__ == "__main__":
    car = BobeCar()

    # # 차량 제조사 정보 추출
    # car.get_maker_category('K')
    # car.get_maker_category('I')

    # # 제조사 차량 모델 정보 추출
    # # maker에서 maker_code만 추출
    # makers = load_csv('makers.csv')
    # # maker_code의 열을 int로 형변환 하면서 list에 저장
    # maker_codes: list[int] = makers["maker_code"].astype(int).tolist()
    # maker_origins: list[str] = makers["origin"].astype(str).tolist()

    # # 차량 모델 세대 정보 추출
    # models = load_csv('models.csv')
    # maker_origins: list[str] = models["origin"].astype(str).tolist()
    # maker_codes: list[int] = models["maker_code"].astype(int).tolist()
    # model_codes: list[int] = models["model_code"].astype(int).tolist()

    # 차량 모델 세대 트림 정보 추출
    models = load_csv('reference/generations.csv')
    maker_origins: list[str] = models["origin"].astype(str).tolist()
    maker_codes: list[int] = models["maker_code"].astype(int).tolist()
    model_codes: list[int] = models["model_code"].astype(int).tolist()
    generation_codes: list[int] = models["generation_code"].astype(int).tolist()

    for maker_origin, maker_code, model_code, generation_code in zip(maker_origins, maker_codes, model_codes, generation_codes):
        car.get_generation_terms(maker_origin, maker_code, model_code, generation_code)

    main()