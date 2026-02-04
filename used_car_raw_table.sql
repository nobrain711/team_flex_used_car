-- root 계정에서
-- CREATE USER 'usedcar_user'@'localhost' IDENTIFIED BY 'usedcar_user';
-- CREATE DATABASE usedcar_proj DEFAULT CHARACTER SET utf8mb4 DEFAULT COLLATE utf8mb4_0900_ai_ci;
-- GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, ALTER, INDEX, DROP ON usedcar_proj.* TO 'usedcar_user'@'localhost';
-- 이제 usedcar_user 계정 접속후 usedcar_proj db 사용
SELECT USER(), CURRENT_USER(), DATABASE();

DROP TABLE IF EXISTS used_car_raw;

CREATE TABLE used_car_raw (
    id BIGINT AUTO_INCREMENT PRIMARY KEY
        COMMENT 'raw 데이터 PK',

    brand VARCHAR(50)
        COMMENT '브랜드',

    model_name VARCHAR(255)
        COMMENT '모델명 원본 텍스트',

    price VARCHAR(50)
        COMMENT '가격 문자열 (예: 1,350만원)',

    year VARCHAR(50)
        COMMENT '연식 문자열 (예: 18/03)',

    mileage VARCHAR(50)
        COMMENT '주행거리 문자열 (예: 12만km)',

    fuel_type VARCHAR(50)
        COMMENT '연료',

    region VARCHAR(100)
        COMMENT '지역',

    seller VARCHAR(100)
        COMMENT '판매자',

    url VARCHAR(500)
        COMMENT '매물 링크',

    crawled_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        COMMENT '크롤링 시각'
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COMMENT='중고차 크롤링 raw 데이터 (전처리 전)';

DESCRIBE used_car_raw;

USE usedcar_proj;

SELECT COUNT(*) FROM used_car_raw;

SELECT brand, COUNT(*) AS cnt
FROM used_car_raw
GROUP BY brand
ORDER BY cnt DESC;

SELECT * FROM used_car_raw LIMIT 5;









