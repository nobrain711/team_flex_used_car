-- select database
USE used_car_db;


CREATE TABLE IF NOT EXISTS makers
( /* 자동차 제조사 */
    maker_id     INT          NOT NULL COMMENT '주 식별자',
    maker_name   VARCHAR(100) NOT NULL COMMENT '자동차 제조사 명',
    maker_origin TINYINT      NOT NULL COMMENT '0=수입, 1=국산'
) ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS car_specs
( /* 차량 제원 정보 */
    car_spec_id     INT          NOT NULL COMMENT '주식별자',
    maker_id        INT          NOT NULL COMMENT 'maker table 참조 식별자',
    model_name      VARCHAR(50)  NOT NULL COMMENT '자동차 차량명',
    body_type       VARCHAR(20)  NOT NULL COMMENT '세단/RV/SUV/승합/트럭/버스 (추후 분리 예정)',
    generation_code VARCHAR(20)  NOT NULL COMMENT '세대 구분 코드(없으면 차량명)',
    model_year      VARCHAR(100) NOT NULL COMMENT '판매 연도 (예: 2019~2023, 2019~현재)',
    trim_name       VARCHAR(50)  NOT NULL DEFAULT '' COMMENT '트림명(없으면 공백)',
    drivetrain_type VARCHAR(20)  NOT NULL COMMENT '전륜/후륜/사륜 (추후 확장)',
    fuel_type       VARCHAR(20)  NOT NULL COMMENT '연료 타입',
    fuel_efficiency FLOAT        NOT NULL COMMENT '연비/전비',
    displacement_cc INT          NOT NULL COMMENT '배기량(cc) / EV는 배터리 용량 등 추후 정의',
    transmission    TINYINT      NOT NULL DEFAULT 1 COMMENT '차량 변속기 0은 수동 1은 자동',
    special_note    VARCHAR(100) NULL COMMENT '개조/옵션 등 특이사항'
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS used_cars
( /* 중고차 매매 정보 */
    used_car_id    INT          NOT NULL COMMENT '주식별자',
    car_spec_id    INT          NOT NULL COMMENT 'car_specs 참조 식별자',
    price          INT          NOT NULL COMMENT '중고차 가격 리스가 있을시 인수비용+(월 리스료 * 남은 리스개월)-승계지원금',
    listing_url    VARCHAR(255) NOT NULL COMMENT '중고차 매매 사이트 링크',
    is_lease       TINYINT      NOT NULL DEFAULT 0 COMMENT '0은 리스가 아닌 챠랑 1은 리스(렌트/할부 승계 포함)인 차량',
    mileage_km     INT          NOT NULL COMMENT '챠랑의 운행 거리 Km',
    color_name     VARCHAR(100) NOT NULL COMMENT '차량의 색상',
    car_age_months INT          NOT NULL COMMENT '차량의 연령 서비스 제공 년월 - 차량 들록 년월'
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS leases
(/* 자동차 리스 관련 정보 테이블 */
    lease_id              INT NOT NULL COMMENT '주식별자',
    used_car_id           INT NOT NULL COMMENT 'used_cars 참조 식별자',
    support_amount        INT NOT NULL DEFAULT 0 COMMENT '승계지원금 기본값을 0으로 지정',
    remaining_months      INT NOT NULL DEFAULT 0 COMMENT '남은 리스 계약 개월 기본값을 0으로 지정',
    total_contract_months INT NOT NULL COMMENT '전체 리스 계약 개월',
    monthly_rent_fee      INT NOT NULL DEFAULT 0 COMMENT '월 리스료 기본값을 0으로 지정',
    handling_fee          INT NOT NULL DEFAULT 0 COMMENT '리스 인수료 기본값을 0으로 지정'
) ENGINE = InnoDB;
