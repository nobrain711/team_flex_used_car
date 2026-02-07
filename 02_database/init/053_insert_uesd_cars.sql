-- =========================================================
-- 1) select database car_used_db
-- =========================================================
USE used_car_db;

-- =========================================================
-- 2) insert data for car_space table
-- =========================================================
-- SAFE INSERT: car_spec 매칭 실패 행은 자동으로 스킵(0 rows inserted)
-- price는 '만원 단위' (예: 3500 = 3,500만원)

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 580, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255878&gubun=K', 0, 141083, '은색', 148
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = 'i40'
  AND cs.generation_name = 'i40'
  AND cs.model_year = '14년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1685
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 200, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253465&gubun=K', 1, 1200, '검정색', 4
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저'
  AND cs.generation_name = '디 올 뉴 그랜저'
  AND cs.model_year = '26년형'
  AND cs.trim_name = '익스클루시브'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3500, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2250573&gubun=K', 0, 274, '진회색 (녹턴그레이)', 7
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저'
  AND cs.generation_name = '디 올 뉴 그랜저'
  AND cs.model_year = '26년형'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3900, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256762&gubun=K', 0, 26237, '흰색', 29
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저'
  AND cs.generation_name = '디 올 뉴 그랜저'
  AND cs.model_year = '2023.09'
  AND cs.trim_name = '캘리그래피'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4180, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256955&gubun=K', 0, 11598, '검정색', 14
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저'
  AND cs.generation_name = '디 올 뉴 그랜저'
  AND cs.model_year = '25년형'
  AND cs.trim_name = '캘리그래피'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4130, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257266&gubun=K', 0, 10356, '흰색', 16
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저'
  AND cs.generation_name = '디 올 뉴 그랜저'
  AND cs.model_year = '25년형'
  AND cs.trim_name = '캘리그래피'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256142&gubun=K', 1, 20319, '검정색', 32
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저'
  AND cs.generation_name = '디 올 뉴 그랜저'
  AND cs.model_year = '2023.06'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257160&gubun=K', 1, 30, '검정색', 1
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저'
  AND cs.generation_name = '디 올 뉴 그랜저'
  AND cs.model_year = '2026.01'
  AND cs.trim_name = '아너스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257300&gubun=K', 1, 30, '흰색', 1
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저'
  AND cs.generation_name = '디 올 뉴 그랜저'
  AND cs.model_year = '2026.01'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 350, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253528&gubun=K', 1, 50, '흰색', 4
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저'
  AND cs.generation_name = '디 올 뉴 그랜저'
  AND cs.model_year = '26년형'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251865&gubun=K', 1, 20, '검정색', 10
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저'
  AND cs.generation_name = '디 올 뉴 그랜저'
  AND cs.model_year = '2025.04'
  AND cs.trim_name = '캘리그래피'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 400, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256668&gubun=K', 1, 12000, '검정색', 14
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저'
  AND cs.generation_name = '디 올 뉴 그랜저'
  AND cs.model_year = '25년형'
  AND cs.trim_name = '익스클루시브'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4150, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256869&gubun=K', 0, 11515, '검정색', 16
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저'
  AND cs.generation_name = '디 올 뉴 그랜저'
  AND cs.model_year = '25년형'
  AND cs.trim_name = '캘리그래피'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3850, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256288&gubun=K', 0, 30030, '검정색', 17
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저'
  AND cs.generation_name = '디 올 뉴 그랜저'
  AND cs.model_year = '2024.09'
  AND cs.trim_name = '익스클루시브'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4100, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253719&gubun=K', 0, 3200, '흰색', 10
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저'
  AND cs.generation_name = '디 올 뉴 그랜저'
  AND cs.model_year = '2025.04'
  AND cs.trim_name = '캘리그래피'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3950, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253500&gubun=K', 0, 8101, '검정색', 25
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저'
  AND cs.generation_name = '디 올 뉴 그랜저'
  AND cs.model_year = '2024.01'
  AND cs.trim_name = '익스클루시브'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 300, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257068&gubun=K', 1, 45000, '검정색', 20
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저'
  AND cs.generation_name = '디 올 뉴 그랜저'
  AND cs.model_year = '2024.06'
  AND cs.trim_name = '익스클루시브'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 300, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256407&gubun=K', 1, 13000, '흰색', 8
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저'
  AND cs.generation_name = '디 올 뉴 그랜저'
  AND cs.model_year = '26년형'
  AND cs.trim_name = '캘리그래피'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252588&gubun=K', 1, 10, '흰색', 5
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저'
  AND cs.generation_name = '디 올 뉴 그랜저'
  AND cs.model_year = '26년형'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252811&gubun=K', 1, 10, '검정색', 5
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저'
  AND cs.generation_name = '디 올 뉴 그랜저'
  AND cs.model_year = '26년형'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 300, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255806&gubun=K', 1, 1760, '검정색', 2
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저'
  AND cs.generation_name = '디 올 뉴 그랜저'
  AND cs.model_year = '26년형'
  AND cs.trim_name = '캘리그래피'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 200, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252247&gubun=K', 1, 14500, '검정색', 14
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저'
  AND cs.generation_name = '디 올 뉴 그랜저'
  AND cs.model_year = '25년형'
  AND cs.trim_name = '캘리그래피'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3800, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256560&gubun=K', 0, 66400, '흰색', 32
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저'
  AND cs.generation_name = '디 올 뉴 그랜저'
  AND cs.model_year = '2023.06'
  AND cs.trim_name = '캘리그래피'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254299&gubun=K', 1, 2650, '검정색', 9
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저'
  AND cs.generation_name = '디 올 뉴 그랜저'
  AND cs.model_year = '2025.05'
  AND cs.trim_name = '캘리그래피'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2399, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255060&gubun=K', 0, 91729, '흰색', 45
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저'
  AND cs.generation_name = '더 뉴 그랜저'
  AND cs.model_year = '2022.05'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2499, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255061&gubun=K', 0, 70897, '흰색', 44
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저'
  AND cs.generation_name = '더 뉴 그랜저'
  AND cs.model_year = '23년형'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2699, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255922&gubun=K', 0, 73122, '청색', 51
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저'
  AND cs.generation_name = '더 뉴 그랜저'
  AND cs.model_year = '22년형'
  AND cs.trim_name = '르블랑'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3170, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253779&gubun=K', 0, 49227, '흰색', 66
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저'
  AND cs.generation_name = '더 뉴 그랜저'
  AND cs.model_year = '2020.08'
  AND cs.trim_name = '캘리그래피'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2970, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256564&gubun=K', 0, 36656, '흰색', 73
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저'
  AND cs.generation_name = '더 뉴 그랜저'
  AND cs.model_year = '2020.01'
  AND cs.trim_name = '익스클루시브'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3030, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254415&gubun=K', 0, 44016, '흰색', 72
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저'
  AND cs.generation_name = '더 뉴 그랜저'
  AND cs.model_year = '2020.02'
  AND cs.trim_name = '캘리그래피'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2550, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254534&gubun=K', 0, 56324, '흰색', 70
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저'
  AND cs.generation_name = '더 뉴 그랜저'
  AND cs.model_year = '2020.04'
  AND cs.trim_name = '익스클루시브'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2390, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254733&gubun=K', 0, 67548, '흰색', 74
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저'
  AND cs.generation_name = '더 뉴 그랜저'
  AND cs.model_year = '20년형'
  AND cs.trim_name = '캘리그래피'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2820, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255627&gubun=K', 0, 48675, '검정색', 43
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저'
  AND cs.generation_name = '더 뉴 그랜저'
  AND cs.model_year = '23년형'
  AND cs.trim_name = '르블랑'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2970, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255786&gubun=K', 0, 67798, '흰색', 49
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저'
  AND cs.generation_name = '더 뉴 그랜저'
  AND cs.model_year = '2022.01'
  AND cs.trim_name = '캘리그래피'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2920, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255925&gubun=K', 0, 25151, '흰색', 71
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저'
  AND cs.generation_name = '더 뉴 그랜저'
  AND cs.model_year = '2020.03'
  AND cs.trim_name = '익스클루시브'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2950, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256123&gubun=K', 0, 21804, '검정색', 44
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저'
  AND cs.generation_name = '더 뉴 그랜저'
  AND cs.model_year = '23년형'
  AND cs.trim_name = '르블랑'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3270, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256159&gubun=K', 0, 42447, '검정색', 41
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저'
  AND cs.generation_name = '더 뉴 그랜저'
  AND cs.model_year = '23년형'
  AND cs.trim_name = '캘리그래피'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2570, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256731&gubun=K', 0, 65816, '검정색', 59
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저'
  AND cs.generation_name = '더 뉴 그랜저'
  AND cs.model_year = '2021.03'
  AND cs.trim_name = '캘리그래피'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3342
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2790, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256789&gubun=K', 0, 54130, '검정색', 50
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저'
  AND cs.generation_name = '더 뉴 그랜저'
  AND cs.model_year = '22년형'
  AND cs.trim_name = '익스클루시브'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2780, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257184&gubun=K', 0, 49891, '검정색', 71
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저'
  AND cs.generation_name = '더 뉴 그랜저'
  AND cs.model_year = '2020.03'
  AND cs.trim_name = '캘리그래피'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2600, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257231&gubun=K', 0, 50434, '흰색', 51
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저'
  AND cs.generation_name = '더 뉴 그랜저'
  AND cs.model_year = '22년형'
  AND cs.trim_name = '르블랑'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2999, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257267&gubun=K', 0, 28032, '검정색', 71
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저'
  AND cs.generation_name = '더 뉴 그랜저'
  AND cs.model_year = '2020.03'
  AND cs.trim_name = '캘리그래피'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3120, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253707&gubun=K', 0, 29193, '검정색', 70
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저'
  AND cs.generation_name = '더 뉴 그랜저'
  AND cs.model_year = '2020.04'
  AND cs.trim_name = '캘리그래피'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2690, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256181&gubun=K', 0, 21163, '검정색', 56
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저'
  AND cs.generation_name = '더 뉴 그랜저'
  AND cs.model_year = '2021.06'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 250, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2226859&gubun=K', 1, 12000, '검정색', 27
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저'
  AND cs.generation_name = '더 뉴 그랜저'
  AND cs.model_year = '2023.11'
  AND cs.trim_name = '캘리그래피'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 2400
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 250, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2226925&gubun=K', 1, 18000, '검정색', 31
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저'
  AND cs.generation_name = '더 뉴 그랜저'
  AND cs.model_year = '2023.07'
  AND cs.trim_name = '익스클루시브'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 300, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2234192&gubun=K', 1, 26208, '은색', 33
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저'
  AND cs.generation_name = '더 뉴 그랜저'
  AND cs.model_year = '2023.05'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3050, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256303&gubun=K', 0, 59532, '흰색', 66
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저'
  AND cs.generation_name = '더 뉴 그랜저'
  AND cs.model_year = '2020.08'
  AND cs.trim_name = '캘리그래피'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 2359
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3320, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257029&gubun=K', 0, 42332, '흰색', 64
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저'
  AND cs.generation_name = '더 뉴 그랜저'
  AND cs.model_year = '2020.10'
  AND cs.trim_name = '캘리그래피'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 2359
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3150, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257142&gubun=K', 0, 29119, '진회색', 56
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저'
  AND cs.generation_name = '더 뉴 그랜저'
  AND cs.model_year = '22년형'
  AND cs.trim_name = '캘리그래피'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 2359
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3120, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257183&gubun=K', 0, 24270, '흰색', 43
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저'
  AND cs.generation_name = '더 뉴 그랜저'
  AND cs.model_year = '23년형'
  AND cs.trim_name = '르블랑'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 2359
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1270, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256427&gubun=K', 0, 107166, '검정색', 94
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저IG'
  AND cs.generation_name = '그랜저IG'
  AND cs.model_year = '2018.04'
  AND cs.trim_name = '모던'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 2999
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1750, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257191&gubun=K', 0, 92026, '흰색', 77
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저IG'
  AND cs.generation_name = '그랜저IG'
  AND cs.model_year = '2019.09'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2359
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1080, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255558&gubun=K', 0, 136600, '회색', 110
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저IG'
  AND cs.generation_name = '그랜저IG'
  AND cs.model_year = '17년형'
  AND cs.trim_name = '모던'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 2999
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1490, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2249770&gubun=K', 0, 137633, '검정색', 103
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저IG'
  AND cs.generation_name = '그랜저IG'
  AND cs.model_year = '18년형'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2359
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 499, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256563&gubun=K', 0, 160350, '검정색', 167
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저HG'
  AND cs.generation_name = '그랜저HG'
  AND cs.model_year = '2012.03'
  AND cs.trim_name = '럭셔리'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2359
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 499, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256641&gubun=K', 0, 173611, '검정색', 163
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저HG'
  AND cs.generation_name = '그랜저HG'
  AND cs.model_year = '2012.07'
  AND cs.trim_name = '럭셔리'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2359
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1130, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251991&gubun=K', 0, 126221, '검정색', 114
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저HG'
  AND cs.generation_name = '그랜저HG'
  AND cs.model_year = '2016.08'
  AND cs.trim_name = '익스클루시브'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 2999
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 400, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256476&gubun=K', 0, 167602, '검정색', 175
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저HG'
  AND cs.generation_name = '그랜저HG'
  AND cs.model_year = '2011.07'
  AND cs.trim_name = '럭셔리'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2359
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 820, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257116&gubun=K', 0, 93534, '검정색', 109
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저HG'
  AND cs.generation_name = '그랜저HG'
  AND cs.model_year = '2017.01'
  AND cs.trim_name = '모던'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2359
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 530, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251329&gubun=K', 0, 245000, '검정색', 119
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저HG'
  AND cs.generation_name = '그랜저HG'
  AND cs.model_year = '2016.03'
  AND cs.trim_name = '모던'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 2999
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 620, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251330&gubun=K', 0, 151456, '검정색', 134
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저HG'
  AND cs.generation_name = '그랜저HG'
  AND cs.model_year = '15년형'
  AND cs.trim_name = '모던'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 2999
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 400, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255934&gubun=K', 0, 262710, '검정색', 140
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저HG'
  AND cs.generation_name = '그랜저HG'
  AND cs.model_year = '2014.06'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 2999
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 770, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254663&gubun=K', 0, 51183, '회색', 155
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저HG'
  AND cs.generation_name = '그랜저HG'
  AND cs.model_year = '2013.03'
  AND cs.trim_name = '모던'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2359
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 600, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255263&gubun=K', 0, 122529, '검정색', 169
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저HG'
  AND cs.generation_name = '그랜저HG'
  AND cs.model_year = '2012.01'
  AND cs.trim_name = '럭셔리'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2359
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 770, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255650&gubun=K', 0, 73386, '검정색', 148
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저HG'
  AND cs.generation_name = '그랜저HG'
  AND cs.model_year = '14년형'
  AND cs.trim_name = '모던'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2359
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 359, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251364&gubun=K', 0, 164758, '검정색', 164
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저HG'
  AND cs.generation_name = '그랜저HG'
  AND cs.model_year = '2012.06'
  AND cs.trim_name = '럭셔리'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2359
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 319, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252332&gubun=K', 0, 184684, '검정색', 174
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저HG'
  AND cs.generation_name = '그랜저HG'
  AND cs.model_year = '2011.08'
  AND cs.trim_name = '럭셔리'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2359
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 450, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256944&gubun=K', 0, 173691, '검정색', 169
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저HG'
  AND cs.generation_name = '그랜저HG'
  AND cs.model_year = '2012.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2999
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 580, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256069&gubun=K', 0, 114502, '검정색', 159
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저HG'
  AND cs.generation_name = '그랜저HG'
  AND cs.model_year = '2012.11'
  AND cs.trim_name = '럭셔리'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2359
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 550, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256591&gubun=K', 0, 160503, '흰색', 177
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저HG'
  AND cs.generation_name = '그랜저HG'
  AND cs.model_year = '2011.05'
  AND cs.trim_name = '럭셔리'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2359
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 360, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257339&gubun=K', 0, 207152, '은색', 157
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저HG'
  AND cs.generation_name = '그랜저HG'
  AND cs.model_year = '2013.01'
  AND cs.trim_name = '모던'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2359
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 900, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257255&gubun=K', 0, 127375, '검정색', 123
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저HG'
  AND cs.generation_name = '그랜저HG'
  AND cs.model_year = '16년형'
  AND cs.trim_name = '익스클루시브'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2999
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 800, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257106&gubun=K', 0, 159500, '흰색', 133
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저HG'
  AND cs.generation_name = '그랜저HG'
  AND cs.model_year = '2015.01'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 620, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256857&gubun=K', 0, 109000, '검정색', 168
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저HG'
  AND cs.generation_name = '그랜저HG'
  AND cs.model_year = '2012.02'
  AND cs.trim_name = '럭셔리'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2359
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 199, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256497&gubun=K', 0, 130600, '검정색', 200
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '더'
  AND cs.generation_name = '더'
  AND cs.model_year = '2009.06'
  AND cs.trim_name = '럭셔리'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2656
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 250, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257181&gubun=K', 0, 220000, '검정색', 229
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저TG'
  AND cs.generation_name = '그랜저TG'
  AND cs.model_year = '2007.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2656
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 270, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255783&gubun=K', 0, 27, '검정색', 221
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜저TG'
  AND cs.generation_name = '그랜저TG'
  AND cs.model_year = '08년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2656
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 300, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253919&gubun=K', 0, 213688, '검정색', 351
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '뉴그랜져'
  AND cs.generation_name = '뉴그랜져'
  AND cs.model_year = '1996.11'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1997
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2230, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2250341&gubun=K', 0, 61363, '흰색', 35
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '넥쏘'
  AND cs.generation_name = '넥쏘'
  AND cs.model_year = '24년형'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '수소'
  AND cs.displacement_cc = 0
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1020, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256117&gubun=K', 0, 218932, '은색', 152
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '맥스크루즈'
  AND cs.generation_name = '맥스크루즈'
  AND cs.model_year = '14년형'
  AND cs.trim_name = '익스클루시브'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1270, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257263&gubun=K', 0, 190374, '흰색', 137
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '베라크루즈'
  AND cs.generation_name = '베라크루즈'
  AND cs.model_year = '15년형'
  AND cs.trim_name = '익스클루시브'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2959
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 539, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254593&gubun=K', 0, 145095, '흰색', 180
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '베라크루즈'
  AND cs.generation_name = '베라크루즈'
  AND cs.model_year = '2011.02'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2959
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 539, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254626&gubun=K', 0, 136593, '은색', 176
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '베라크루즈'
  AND cs.generation_name = '베라크루즈'
  AND cs.model_year = '2011.06'
  AND cs.trim_name = '럭셔리'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2959
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 800, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254099&gubun=K', 0, 88843, '흰색', 200
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '베라크루즈'
  AND cs.generation_name = '베라크루즈'
  AND cs.model_year = '2009.06'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2959
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2000, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255195&gubun=K', 0, 110000, '흰색', 86
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '벨로스터'
  AND cs.generation_name = '벨로스터'
  AND cs.model_year = '19년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1600, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257177&gubun=K', 0, 94458, '빨간색', 84
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '벨로스터'
  AND cs.generation_name = '벨로스터'
  AND cs.model_year = '18년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1591
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 790, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252556&gubun=K', 0, 165979, '흰색', 119
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '벨로스터'
  AND cs.generation_name = '더 뉴 벨로스터'
  AND cs.model_year = '2016.03'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1591
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3880, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251398&gubun=K', 0, 84551, '흰색투톤', 62
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜드스타렉스'
  AND cs.generation_name = '더 뉴 그랜드스타렉스'
  AND cs.model_year = '21년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3680, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255360&gubun=K', 0, 69340, '남색', 87
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜드스타렉스'
  AND cs.generation_name = '더 뉴 그랜드스타렉스'
  AND cs.model_year = '19년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3280, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255440&gubun=K', 0, 101277, '갈색', 83
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜드스타렉스'
  AND cs.generation_name = '더 뉴 그랜드스타렉스'
  AND cs.model_year = '2019.03'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3480, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2244003&gubun=K', 0, 78190, '검정색', 79
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜드스타렉스'
  AND cs.generation_name = '더 뉴 그랜드스타렉스'
  AND cs.model_year = '2019.07'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3880, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2244500&gubun=K', 0, 106973, '진청색', 88
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜드스타렉스'
  AND cs.generation_name = '더 뉴 그랜드스타렉스'
  AND cs.model_year = '19년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3880, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2247344&gubun=K', 0, 89110, '검정투톤', 62
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜드스타렉스'
  AND cs.generation_name = '더 뉴 그랜드스타렉스'
  AND cs.model_year = '21년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3680, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2248724&gubun=K', 0, 51426, '검정색', 85
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜드스타렉스'
  AND cs.generation_name = '더 뉴 그랜드스타렉스'
  AND cs.model_year = '2019.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1370, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257040&gubun=K', 0, 110000, '회색', 88
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜드스타렉스'
  AND cs.generation_name = '더 뉴 그랜드스타렉스'
  AND cs.model_year = '19년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 6700, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2179699&gubun=K', 0, 14000, '은색', 59
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜드스타렉스'
  AND cs.generation_name = '더 뉴 그랜드스타렉스'
  AND cs.model_year = '20년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1050, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257051&gubun=K', 0, 162726, '은색', 86
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜드스타렉스'
  AND cs.generation_name = '더 뉴 그랜드스타렉스'
  AND cs.model_year = '19년형'
  AND cs.trim_name = '모던'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256984&gubun=K', 0, 93259, '검정색', 65
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜드스타렉스'
  AND cs.generation_name = '더 뉴 그랜드스타렉스'
  AND cs.model_year = '21년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 500, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256321&gubun=K', 0, 176000, '노란색', 131
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜드스타렉스'
  AND cs.generation_name = '더 뉴 그랜드스타렉스'
  AND cs.model_year = '2015.03'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3500, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254822&gubun=K', 0, 8568, '흰색', 66
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜드스타렉스'
  AND cs.generation_name = '더 뉴 그랜드스타렉스'
  AND cs.model_year = '21년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 2359
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 5300, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253992&gubun=K', 0, 42691, '은색', 70
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜드스타렉스'
  AND cs.generation_name = '더 뉴 그랜드스타렉스'
  AND cs.model_year = '2020.04'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1390, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255037&gubun=K', 0, 146036, '노란색', 95
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜드스타렉스'
  AND cs.generation_name = '더 뉴 그랜드스타렉스'
  AND cs.model_year = '2018.03'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254195&gubun=K', 0, 69947, '흰색투톤', 79
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜드스타렉스'
  AND cs.generation_name = '더 뉴 그랜드스타렉스'
  AND cs.model_year = '2019.07'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1480, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2250020&gubun=K', 0, 110000, '기타색상', 67
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜드스타렉스'
  AND cs.generation_name = '더 뉴 그랜드스타렉스'
  AND cs.model_year = '21년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3290, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2244329&gubun=K', 0, 29021, '노란색', 57
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜드스타렉스'
  AND cs.generation_name = '더 뉴 그랜드스타렉스'
  AND cs.model_year = '2021.05'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 2359
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 600, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256956&gubun=K', 0, 220000, '은색', 175
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜드스타렉스'
  AND cs.generation_name = '그랜드스타렉스'
  AND cs.model_year = '2011.07'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1900, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2227392&gubun=K', 0, 87458, '은색', 215
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜드스타렉스'
  AND cs.generation_name = '그랜드스타렉스'
  AND cs.model_year = '2008.03'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 450, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256393&gubun=K', 0, 298960, '은색', 130
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜드스타렉스'
  AND cs.generation_name = '그랜드스타렉스'
  AND cs.model_year = '16년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 690, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2249967&gubun=K', 0, 134847, '흰색', 125
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜드스타렉스'
  AND cs.generation_name = '그랜드스타렉스'
  AND cs.model_year = '16년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 470, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255698&gubun=K', 0, 271183, '은색', 152
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜드스타렉스'
  AND cs.generation_name = '그랜드스타렉스'
  AND cs.model_year = '14년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 350, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256336&gubun=K', 0, 241198, '은색', 170
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜드스타렉스'
  AND cs.generation_name = '그랜드스타렉스'
  AND cs.model_year = '12년형'
  AND cs.trim_name = '럭셔리'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 600, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256144&gubun=K', 0, 148161, '노란색', 159
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜드스타렉스'
  AND cs.generation_name = '그랜드스타렉스'
  AND cs.model_year = '13년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 540, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2250285&gubun=K', 0, 269611, '회색', 143
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜드스타렉스'
  AND cs.generation_name = '그랜드스타렉스'
  AND cs.model_year = '15년형'
  AND cs.trim_name = '럭셔리'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1140, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253754&gubun=K', 0, 108073, '흰색', 113
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜드스타렉스'
  AND cs.generation_name = '그랜드스타렉스'
  AND cs.model_year = '17년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 800, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255394&gubun=K', 0, 180855, '회색', 115
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜드스타렉스'
  AND cs.generation_name = '그랜드스타렉스'
  AND cs.model_year = '17년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1700, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257164&gubun=K', 0, 99905, '노란색', 96
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜드스타렉스'
  AND cs.generation_name = '그랜드스타렉스'
  AND cs.model_year = '2018.02'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 2359
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1180, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256098&gubun=K', 0, 87000, '은색', 109
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜드스타렉스'
  AND cs.generation_name = '그랜드스타렉스'
  AND cs.model_year = '2017.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 720, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257366&gubun=K', 0, 144488, '검정색', 148
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜드스타렉스'
  AND cs.generation_name = '그랜드스타렉스'
  AND cs.model_year = '14년형'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 720, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253340&gubun=K', 0, 95677, '은색', 178
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜드스타렉스'
  AND cs.generation_name = '그랜드스타렉스'
  AND cs.model_year = '2011.04'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1190, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255999&gubun=K', 0, 137097, '은색', 99
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜드스타렉스'
  AND cs.generation_name = '그랜드스타렉스'
  AND cs.model_year = '18년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 390, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257316&gubun=K', 0, 267781, '은색', 167
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜드스타렉스'
  AND cs.generation_name = '그랜드스타렉스'
  AND cs.model_year = '2012.03'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2980, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2249083&gubun=K', 0, 148077, '청옥색', 120
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜드스타렉스'
  AND cs.generation_name = '그랜드스타렉스'
  AND cs.model_year = '2016.02'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2480, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254079&gubun=K', 0, 172759, '흰색', 102
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜드스타렉스'
  AND cs.generation_name = '그랜드스타렉스'
  AND cs.model_year = '18년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2680, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254907&gubun=K', 0, 79420, '녹색', 166
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜드스타렉스'
  AND cs.generation_name = '그랜드스타렉스'
  AND cs.model_year = '2012.04'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2280, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255212&gubun=K', 0, 160243, '흰색', 148
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '그랜드스타렉스'
  AND cs.generation_name = '그랜드스타렉스'
  AND cs.model_year = '14년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1050, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2245589&gubun=K', 0, 190000, '흰색투톤', 250
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '뉴스타렉스'
  AND cs.generation_name = '뉴스타렉스'
  AND cs.model_year = '2005.04'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2476
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1050, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2226233&gubun=K', 0, 190000, '흰색투톤', 236
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '스타렉스'
  AND cs.generation_name = '스타렉스'
  AND cs.model_year = '2006.06'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2476
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3499, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255285&gubun=K', 0, 57381, '흰색', 29
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '싼타페'
  AND cs.generation_name = '디 올 뉴 싼타페'
  AND cs.model_year = '24년형'
  AND cs.trim_name = '익스클루시브'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3599, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255952&gubun=K', 0, 59340, '흰색', 26
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '싼타페'
  AND cs.generation_name = '디 올 뉴 싼타페'
  AND cs.model_year = '24년형'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3599, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255955&gubun=K', 0, 67467, '흰색', 29
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '싼타페'
  AND cs.generation_name = '디 올 뉴 싼타페'
  AND cs.model_year = '24년형'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3599, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255957&gubun=K', 0, 60745, '흰색', 26
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '싼타페'
  AND cs.generation_name = '디 올 뉴 싼타페'
  AND cs.model_year = '24년형'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3420, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256658&gubun=K', 0, 20273, '흰색', 19
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '싼타페'
  AND cs.generation_name = '디 올 뉴 싼타페'
  AND cs.model_year = '2024.07'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3550, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257211&gubun=K', 0, 34598, '흰색', 27
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '싼타페'
  AND cs.generation_name = '디 올 뉴 싼타페'
  AND cs.model_year = '24년형'
  AND cs.trim_name = '캘리그래피'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3720, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257268&gubun=K', 0, 23666, '검정색', 28
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '싼타페'
  AND cs.generation_name = '디 올 뉴 싼타페'
  AND cs.model_year = '24년형'
  AND cs.trim_name = '캘리그래피'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3830, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253543&gubun=K', 0, 19832, '흰색', 29
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '싼타페'
  AND cs.generation_name = '디 올 뉴 싼타페'
  AND cs.model_year = '24년형'
  AND cs.trim_name = '캘리그래피'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 350, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251630&gubun=K', 1, 20, '흰색', 6
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '싼타페'
  AND cs.generation_name = '디 올 뉴 싼타페'
  AND cs.model_year = '2025.08'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 300, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255620&gubun=K', 1, 38000, '검정색', 23
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '싼타페'
  AND cs.generation_name = '디 올 뉴 싼타페'
  AND cs.model_year = '2024.03'
  AND cs.trim_name = '캘리그래피'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3190, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256684&gubun=K', 0, 115386, '흰색', 28
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '싼타페'
  AND cs.generation_name = '디 올 뉴 싼타페'
  AND cs.model_year = '24년형'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4399, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254498&gubun=K', 0, 44122, '흰색', 27
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '싼타페'
  AND cs.generation_name = '디 올 뉴 싼타페'
  AND cs.model_year = '24년형'
  AND cs.trim_name = '캘리그래피'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 180, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2249880&gubun=K', 1, 850, '흰색', 8
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '싼타페'
  AND cs.generation_name = '디 올 뉴 싼타페'
  AND cs.model_year = '2025.06'
  AND cs.trim_name = '캘리그래피'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3790, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256879&gubun=K', 0, 22385, '기타색상 (크림색)', 25
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '싼타페'
  AND cs.generation_name = '디 올 뉴 싼타페'
  AND cs.model_year = '2024.01'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4842, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257102&gubun=K', 0, 22230, '흰색', 18
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '싼타페'
  AND cs.generation_name = '디 올 뉴 싼타페'
  AND cs.model_year = '2024.08'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4500, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2226116&gubun=K', 0, 24864, '흰색 (크리미 화이트 펄)', 22
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '싼타페'
  AND cs.generation_name = '디 올 뉴 싼타페'
  AND cs.model_year = '2024.04'
  AND cs.trim_name = '캘리그래피'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 200, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255710&gubun=K', 1, 4650, '진회색', 10
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '싼타페'
  AND cs.generation_name = '디 올 뉴 싼타페'
  AND cs.model_year = '2025.04'
  AND cs.trim_name = '캘리그래피'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 200, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254301&gubun=K', 1, 1500, '흰색', 9
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '싼타페'
  AND cs.generation_name = '디 올 뉴 싼타페'
  AND cs.model_year = '2025.05'
  AND cs.trim_name = '캘리그래피'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255395&gubun=K', 1, 6, '흰색', 3
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '싼타페'
  AND cs.generation_name = '디 올 뉴 싼타페'
  AND cs.model_year = '2025.11'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2899, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254953&gubun=K', 0, 129586, '갈색', 38
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '싼타페'
  AND cs.generation_name = '더 뉴 싼타페'
  AND cs.model_year = '23년형'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2151
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 300, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2229590&gubun=K', 1, 1500, '흰색', 20
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '싼타페'
  AND cs.generation_name = '더 뉴 싼타페'
  AND cs.model_year = '2024.06'
  AND cs.trim_name = '캘리그래피'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257352&gubun=K', 1, 7000, '검정색', 5
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '싼타페'
  AND cs.generation_name = '더 뉴 싼타페'
  AND cs.model_year = '2025.09'
  AND cs.trim_name = '캘리그래피'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4280, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256445&gubun=K', 0, 25363, '흰색', 20
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '싼타페'
  AND cs.generation_name = '더 뉴 싼타페'
  AND cs.model_year = '2024.06'
  AND cs.trim_name = '캘리그래피'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 350, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253529&gubun=K', 1, 100, '흰색', 5
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '싼타페'
  AND cs.generation_name = '더 뉴 싼타페'
  AND cs.model_year = '26년형'
  AND cs.trim_name = '익스클루시브'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 10, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256230&gubun=K', 1, 52000, '흰색', 40
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '싼타페'
  AND cs.generation_name = '더 뉴 싼타페'
  AND cs.model_year = '23년형'
  AND cs.trim_name = '캘리그래피'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252068&gubun=K', 1, 15, '흰색', 5
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '싼타페'
  AND cs.generation_name = '더 뉴 싼타페'
  AND cs.model_year = '2025.09'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2150, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255669&gubun=K', 0, 57563, '빨간색', 87
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '싼타페TM'
  AND cs.generation_name = '싼타페TM'
  AND cs.model_year = '19년형'
  AND cs.trim_name = '인스퍼레이션'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2260, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254048&gubun=K', 0, 71298, '회색', 78
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '싼타페TM'
  AND cs.generation_name = '싼타페TM'
  AND cs.model_year = '20년형'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1995
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2300, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257166&gubun=K', 0, 43756, '진회색', 82
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '싼타페TM'
  AND cs.generation_name = '싼타페TM'
  AND cs.model_year = '2019.04'
  AND cs.trim_name = '익스클루시브'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1995
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1730, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255767&gubun=K', 0, 103463, '진회색', 93
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '싼타페TM'
  AND cs.generation_name = '싼타페TM'
  AND cs.model_year = '19년형'
  AND cs.trim_name = '익스클루시브'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1995
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1900, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253723&gubun=K', 0, 81000, '흰색', 78
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '싼타페TM'
  AND cs.generation_name = '싼타페TM'
  AND cs.model_year = '20년형'
  AND cs.trim_name = '익스클루시브'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1995
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1750, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255741&gubun=K', 0, 60500, '흰색', 117
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '싼타페'
  AND cs.generation_name = '싼타페'
  AND cs.model_year = '2016.05'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1995
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1280, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255430&gubun=K', 0, 130000, '진주색', 101
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '싼타페'
  AND cs.generation_name = '싼타페'
  AND cs.model_year = '18년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1995
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1520, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2249097&gubun=K', 0, 95000, '흰색', 127
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '싼타페'
  AND cs.generation_name = '싼타페'
  AND cs.model_year = '16년형'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1995
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 790, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257036&gubun=K', 0, 235448, '검정색', 136
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '싼타페DM'
  AND cs.generation_name = '싼타페DM'
  AND cs.model_year = '15년형'
  AND cs.trim_name = '익스클루시브'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1995
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1049, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256464&gubun=K', 0, 67672, '회색', 154
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '싼타페DM'
  AND cs.generation_name = '싼타페DM'
  AND cs.model_year = '2013.04'
  AND cs.trim_name = '익스클루시브'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1997
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1080, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255191&gubun=K', 0, 104719, '은색', 143
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '싼타페DM'
  AND cs.generation_name = '싼타페DM'
  AND cs.model_year = '15년형'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1995
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 680, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257236&gubun=K', 0, 238600, '회색', 156
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '싼타페DM'
  AND cs.generation_name = '싼타페DM'
  AND cs.model_year = '2013.02'
  AND cs.trim_name = '익스클루시브'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1995
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 650, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255841&gubun=K', 0, 144000, '회색', 159
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '싼타페DM'
  AND cs.generation_name = '싼타페DM'
  AND cs.model_year = '13년형'
  AND cs.trim_name = '모던'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1995
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 359, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253118&gubun=K', 0, 167970, '은색', 181
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '싼타페'
  AND cs.generation_name = '싼타페'
  AND cs.model_year = '2011.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1995
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 380, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257235&gubun=K', 0, 197267, '진주색', 194
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '싼타페CM'
  AND cs.generation_name = '싼타페CM'
  AND cs.model_year = '10년형'
  AND cs.trim_name = '럭셔리'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1995
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 240, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256862&gubun=K', 0, 246630, '회색', 200
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '싼타페CM'
  AND cs.generation_name = '싼타페CM'
  AND cs.model_year = '2009.06'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1991
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257161&gubun=K', 1, 28069, '흰색', 13
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '쏘나타'
  AND cs.generation_name = '쏘나타'
  AND cs.model_year = '2025.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 1999
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2750, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255539&gubun=K', 0, 31573, '흰색', 31
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '쏘나타'
  AND cs.generation_name = '쏘나타'
  AND cs.model_year = '24년형'
  AND cs.trim_name = '익스클루시브'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 1999
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 200, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251629&gubun=K', 1, 10, '흰색', 6
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '쏘나타'
  AND cs.generation_name = '쏘나타'
  AND cs.model_year = '2025.08'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 1999
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 200, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256059&gubun=K', 1, 30, '흰색', 5
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '쏘나타'
  AND cs.generation_name = '쏘나타'
  AND cs.model_year = '2025.09'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1999
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2950, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2249221&gubun=K', 0, 6119, '검정색', 17
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '쏘나타'
  AND cs.generation_name = '쏘나타'
  AND cs.model_year = '2024.09'
  AND cs.trim_name = '익스클루시브'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1999
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3250, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256878&gubun=K', 0, 43215, '검정색', 16
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '쏘나타'
  AND cs.generation_name = '쏘나타'
  AND cs.model_year = '2024.10'
  AND cs.trim_name = '인스퍼레이션'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1999
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1799, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256737&gubun=K', 0, 85803, '갈색', 57
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '쏘나타'
  AND cs.generation_name = '쏘나타'
  AND cs.model_year = '22년형'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1999
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1870, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252344&gubun=K', 0, 93495, '흰색', 68
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '쏘나타'
  AND cs.generation_name = '쏘나타'
  AND cs.model_year = '21년형'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1740, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2246502&gubun=K', 0, 54974, '진회색', 80
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '쏘나타'
  AND cs.generation_name = '쏘나타'
  AND cs.model_year = '20년형'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 1999
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1310, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256555&gubun=K', 0, 108611, '회색', 97
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '쏘나타'
  AND cs.generation_name = '쏘나타'
  AND cs.model_year = '2018.01'
  AND cs.trim_name = '모던'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1591
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1680, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256678&gubun=K', 0, 63787, '흰색', 103
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '쏘나타'
  AND cs.generation_name = '쏘나타'
  AND cs.model_year = '18년형'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1999
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 990, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2242580&gubun=K', 0, 87316, '흰색', 95
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '쏘나타'
  AND cs.generation_name = '쏘나타'
  AND cs.model_year = '2018.03'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 1999
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 840, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256554&gubun=K', 0, 184972, '검정색', 99
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '쏘나타'
  AND cs.generation_name = '쏘나타'
  AND cs.model_year = '18년형'
  AND cs.trim_name = '모던'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1999
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 720, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255887&gubun=K', 0, 82641, '검정색', 111
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = 'LF쏘나타'
  AND cs.generation_name = 'LF쏘나타'
  AND cs.model_year = '17년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1685
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 469, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256388&gubun=K', 0, 157612, '흰색', 123
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = 'LF쏘나타'
  AND cs.generation_name = 'LF쏘나타'
  AND cs.model_year = '16년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1685
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 750, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2249642&gubun=K', 0, 122000, '검정색', 121
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = 'LF쏘나타'
  AND cs.generation_name = 'LF쏘나타'
  AND cs.model_year = '2016.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1685
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 600, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256188&gubun=K', 0, 192000, '검정색', 141
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = 'LF쏘나타'
  AND cs.generation_name = 'LF쏘나타'
  AND cs.model_year = '15년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1999
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 799, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256030&gubun=K', 0, 214044, '흰색', 112
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = 'LF쏘나타'
  AND cs.generation_name = 'LF쏘나타'
  AND cs.model_year = '17년형'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1999
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 670, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255554&gubun=K', 0, 87872, '은색', 143
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '쏘나타'
  AND cs.generation_name = '쏘나타'
  AND cs.model_year = '2014.03'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1999
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2248979&gubun=K', 0, 139000, '흰색', 161
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '쏘나타'
  AND cs.generation_name = '쏘나타'
  AND cs.model_year = '13년형'
  AND cs.trim_name = '모던'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1999
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 360, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257342&gubun=K', 0, 189647, '은색', 174
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '쏘나타'
  AND cs.generation_name = '쏘나타'
  AND cs.model_year = '12년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1999
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 330, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256556&gubun=K', 0, 99254, '검정색', 195
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = 'YF쏘나타'
  AND cs.generation_name = 'YF쏘나타'
  AND cs.model_year = '10년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 269, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256313&gubun=K', 0, 106800, '검정색', 194
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = 'YF쏘나타'
  AND cs.generation_name = 'YF쏘나타'
  AND cs.model_year = '10년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 580, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255432&gubun=K', 0, 44060, '진주색', 169
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = 'YF쏘나타'
  AND cs.generation_name = 'YF쏘나타'
  AND cs.model_year = '2012.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 299, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257049&gubun=K', 0, 97731, '흰색', 192
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = 'YF쏘나타'
  AND cs.generation_name = 'YF쏘나타'
  AND cs.model_year = '2010.02'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2359
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 370, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257343&gubun=K', 0, 104397, '은색', 195
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = 'YF쏘나타'
  AND cs.generation_name = 'YF쏘나타'
  AND cs.model_year = '10년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 580, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257201&gubun=K', 0, 55000, '은색', 180
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = 'YF쏘나타'
  AND cs.generation_name = 'YF쏘나타'
  AND cs.model_year = '2011.02'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 420, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255137&gubun=K', 0, 182000, '검정색', 194
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = 'YF쏘나타'
  AND cs.generation_name = 'YF쏘나타'
  AND cs.model_year = '10년형'
  AND cs.trim_name = '럭셔리'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 800, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255292&gubun=K', 0, 172789, '파란색', 384
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '쏘나타2'
  AND cs.generation_name = '쏘나타2'
  AND cs.model_year = '1994.02'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1796
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 300, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2248963&gubun=K', 1, 1670, '흰색', 15
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '아반떼'
  AND cs.generation_name = '더 뉴 아반떼'
  AND cs.model_year = '25년형'
  AND cs.trim_name = '모던'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 150, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2248128&gubun=K', 1, 20, '흰색', 10
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '아반떼'
  AND cs.generation_name = '더 뉴 아반떼'
  AND cs.model_year = '2025.04'
  AND cs.trim_name = '모던'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 200, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256510&gubun=K', 1, 45000, '기타색상', 31
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '아반떼'
  AND cs.generation_name = '더 뉴 아반떼'
  AND cs.model_year = '24년형'
  AND cs.trim_name = '모던'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 100, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2249950&gubun=K', 1, 1100, '검정색', 8
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '아반떼'
  AND cs.generation_name = '더 뉴 아반떼'
  AND cs.model_year = '26년형'
  AND cs.trim_name = '인스퍼레이션'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1580
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 300, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2250239&gubun=K', 1, 6000, '진회색', 10
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '아반떼'
  AND cs.generation_name = '아반떼'
  AND cs.model_year = '2025.04'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2490, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254032&gubun=K', 0, 55276, '흰색', 45
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '아반떼'
  AND cs.generation_name = '아반떼'
  AND cs.model_year = '2022.05'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1599, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2249751&gubun=K', 0, 59447, '검정색', 68
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '아반떼'
  AND cs.generation_name = '올 뉴 아반떼'
  AND cs.model_year = '21년형'
  AND cs.trim_name = '인스퍼레이션'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253925&gubun=K', 1, 56000, '흰색', 41
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '아반떼'
  AND cs.generation_name = '올 뉴 아반떼'
  AND cs.model_year = '23년형'
  AND cs.trim_name = '모던'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1580
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1200, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254825&gubun=K', 0, 63051, '회색', 82
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '아반떼AD'
  AND cs.generation_name = '더 뉴 아반떼AD'
  AND cs.model_year = '2019.04'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1000, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253301&gubun=K', 0, 99244, '검정색', 80
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '아반떼AD'
  AND cs.generation_name = '더 뉴 아반떼AD'
  AND cs.model_year = '20년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 860, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256520&gubun=K', 0, 132060, '검정색', 97
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '아반떼AD'
  AND cs.generation_name = '아반떼AD'
  AND cs.model_year = '2018.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1591
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 760, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256686&gubun=K', 0, 116407, '흰색', 111
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '아반떼AD'
  AND cs.generation_name = '아반떼AD'
  AND cs.model_year = '17년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1591
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1150, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255190&gubun=K', 0, 91123, '진회색', 89
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '아반떼AD'
  AND cs.generation_name = '아반떼AD'
  AND cs.model_year = '2018.09'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1591
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 880, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256917&gubun=K', 0, 137000, '흰색', 108
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '아반떼AD'
  AND cs.generation_name = '아반떼AD'
  AND cs.model_year = '2017.02'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1591
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 840, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255991&gubun=K', 0, 53843, '파란색', 113
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '아반떼AD'
  AND cs.generation_name = '아반떼AD'
  AND cs.model_year = '2016.09'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1582
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 790, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256860&gubun=K', 0, 160000, '흰색', 94
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '아반떼AD'
  AND cs.generation_name = '아반떼AD'
  AND cs.model_year = '2018.04'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1591
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1190, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254304&gubun=K', 0, 118955, '검정색', 106
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '아반떼AD'
  AND cs.generation_name = '아반떼AD'
  AND cs.model_year = '18년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1591
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 830, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2249977&gubun=K', 0, 143000, '흰색 (베이지 랩핑)', 104
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '아반떼AD'
  AND cs.generation_name = '아반떼AD'
  AND cs.model_year = '18년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1591
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 490, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253055&gubun=K', 0, 139621, '흰색', 147
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '아반떼'
  AND cs.generation_name = '더 뉴 아반떼'
  AND cs.model_year = '14년형'
  AND cs.trim_name = '모던'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1591
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 790, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254862&gubun=K', 0, 29900, '흰색', 125
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '아반떼'
  AND cs.generation_name = '더 뉴 아반떼'
  AND cs.model_year = '16년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1591
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 680, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2248981&gubun=K', 0, 99000, '기타색상', 127
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '아반떼'
  AND cs.generation_name = '더 뉴 아반떼'
  AND cs.model_year = '16년형'
  AND cs.trim_name = '모던'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1591
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 490, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252752&gubun=K', 0, 165931, '흰색', 152
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '아반떼MD'
  AND cs.generation_name = '아반떼MD'
  AND cs.model_year = '14년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1591
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 390, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256525&gubun=K', 0, 127592, '흰색', 172
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '아반떼MD'
  AND cs.generation_name = '아반떼MD'
  AND cs.model_year = '12년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1591
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 410, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255917&gubun=K', 0, 137365, '검정색', 183
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '아반떼MD'
  AND cs.generation_name = '아반떼MD'
  AND cs.model_year = '11년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1591
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 269, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255875&gubun=K', 0, 146618, '검정색', 173
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '아반떼MD'
  AND cs.generation_name = '아반떼MD'
  AND cs.model_year = '12년형'
  AND cs.trim_name = '럭셔리'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1591
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 550, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2248977&gubun=K', 0, 143000, '흰색', 157
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '아반떼MD'
  AND cs.generation_name = '아반떼MD'
  AND cs.model_year = '2013.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1591
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 410, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256647&gubun=K', 0, 55012, '은색', 228
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '아반떼HD'
  AND cs.generation_name = '아반떼HD'
  AND cs.model_year = '2007.02'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1591
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 146, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256189&gubun=K', 1, 21000, '흰색', 25
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '쏠라티'
  AND cs.generation_name = '쏠라티'
  AND cs.model_year = '2024.01'
  AND cs.trim_name = '럭셔리'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 7980, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255259&gubun=K', 0, 57841, '흰색', 49
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '쏠라티'
  AND cs.generation_name = '쏠라티'
  AND cs.model_year = '2022.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 5300, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256384&gubun=K', 0, 73200, '흰색', 39
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '쏠라티'
  AND cs.generation_name = '쏠라티'
  AND cs.model_year = '2022.11'
  AND cs.trim_name = '럭셔리'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1099, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2246648&gubun=K', 0, 106149, '검정색', 125
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '아슬란'
  AND cs.generation_name = '아슬란'
  AND cs.model_year = '16년형'
  AND cs.trim_name = '모던'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2999
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 650, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2250714&gubun=K', 0, 216000, '흰색', 114
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '아이오닉'
  AND cs.generation_name = '아이오닉'
  AND cs.model_year = '2016.08'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1580
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1190, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2246888&gubun=K', 0, 167000, '흰색', 116
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '아이오닉'
  AND cs.generation_name = '아이오닉'
  AND cs.model_year = '2016.06'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1580
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2199, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251065&gubun=K', 0, 4874, '노란색', 10
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '코나'
  AND cs.generation_name = '디 올 뉴 코나'
  AND cs.model_year = '2025.04'
  AND cs.trim_name = '인스퍼레이션'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 200, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255782&gubun=K', 1, 20, '흰색', 2
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '코나'
  AND cs.generation_name = '디 올 뉴 코나'
  AND cs.model_year = '26년형'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3350, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255416&gubun=K', 0, 11715, '빨간색', 9
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '코나'
  AND cs.generation_name = '디 올 뉴 코나'
  AND cs.model_year = '26년형'
  AND cs.trim_name = '인스퍼레이션'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1600
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1299, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256039&gubun=K', 0, 82646, '주황색', 97
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '코나'
  AND cs.generation_name = '코나'
  AND cs.model_year = '2018.01'
  AND cs.trim_name = '모던'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1582
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1360, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255584&gubun=K', 0, 87850, '빨간색', 99
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '코나'
  AND cs.generation_name = '코나'
  AND cs.model_year = '18년형'
  AND cs.trim_name = '모던'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1591
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1799, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255847&gubun=K', 0, 38345, '흰색', 50
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '코나'
  AND cs.generation_name = '코나'
  AND cs.model_year = '22년형'
  AND cs.trim_name = '모던'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1520, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256904&gubun=K', 0, 58742, '흰색', 95
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '코나'
  AND cs.generation_name = '코나'
  AND cs.model_year = '2018.03'
  AND cs.trim_name = '모던'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1591
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1630, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2242509&gubun=K', 0, 76088, '청색 (코발트 블루)', 65
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '코나'
  AND cs.generation_name = '코나'
  AND cs.model_year = '2020.09'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1591
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1780, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254969&gubun=K', 0, 117069, '진회색', 79
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '코나'
  AND cs.generation_name = '코나'
  AND cs.model_year = '2019.07'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '전기'
  AND cs.displacement_cc = 180
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1550, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255183&gubun=K', 0, 132581, '흰색', 68
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '코나'
  AND cs.generation_name = '코나'
  AND cs.model_year = '2020.06'
  AND cs.trim_name = '모던'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '전기'
  AND cs.displacement_cc = 180
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2000, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252625&gubun=K', 0, 74000, '흰색', 67
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '코나'
  AND cs.generation_name = '코나'
  AND cs.model_year = '2020.07'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '전기'
  AND cs.displacement_cc = 1800
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 530, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257243&gubun=K', 0, 271000, '검정색', 130
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '에쿠스'
  AND cs.generation_name = '뉴 에쿠스'
  AND cs.model_year = '2015.04'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3778
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 580, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256728&gubun=K', 0, 145077, '검정색', 191
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '에쿠스'
  AND cs.generation_name = '뉴 에쿠스'
  AND cs.model_year = '2010.03'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3778
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 540, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256545&gubun=K', 0, 173394, '검정색', 168
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '에쿠스'
  AND cs.generation_name = '뉴 에쿠스'
  AND cs.model_year = '2012.02'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3778
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 380, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257122&gubun=K', 0, 163967, '검정색', 198
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '에쿠스'
  AND cs.generation_name = '뉴 에쿠스'
  AND cs.model_year = '10년형'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 4627
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 290, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256687&gubun=K', 0, 229400, '검정색', 176
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '에쿠스'
  AND cs.generation_name = '뉴 에쿠스'
  AND cs.model_year = '12년형'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3778
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 499, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251169&gubun=K', 0, 218232, '파란색', 146
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '에쿠스'
  AND cs.generation_name = '뉴 에쿠스'
  AND cs.model_year = '14년형'
  AND cs.trim_name = '모던'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3778
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 650, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252948&gubun=K', 0, 156126, '은색', 174
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '에쿠스'
  AND cs.generation_name = '뉴 에쿠스'
  AND cs.model_year = '12년형'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3778
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1090, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253934&gubun=K', 0, 224550, '검정색', 145
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '에쿠스'
  AND cs.generation_name = '뉴 에쿠스'
  AND cs.model_year = '2014.01'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린/LPG겸용'
  AND cs.displacement_cc = 5038
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1100, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255363&gubun=K', 0, 240156, '검정색', 149
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '에쿠스'
  AND cs.generation_name = '뉴 에쿠스'
  AND cs.model_year = '14년형'
  AND cs.trim_name = '모던'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3778
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 390, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254568&gubun=K', 0, 154000, '은색', 190
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '에쿠스'
  AND cs.generation_name = '뉴 에쿠스'
  AND cs.model_year = '2010.04'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3778
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 799, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252848&gubun=K', 0, 223296, '검정색', 165
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '에쿠스'
  AND cs.generation_name = '뉴 에쿠스'
  AND cs.model_year = '2012.05'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 5038
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 750, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2243405&gubun=K', 0, 314000, '검정색', 149
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '에쿠스'
  AND cs.generation_name = '뉴 에쿠스'
  AND cs.model_year = '14년형'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3778
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 249, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256312&gubun=K', 0, 181554, '흰색', 166
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '엑센트'
  AND cs.generation_name = '엑센트'
  AND cs.model_year = '2012.04'
  AND cs.trim_name = '럭셔리'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1582
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 690, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256597&gubun=K', 0, 77850, '흰색', 157
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '엑센트'
  AND cs.generation_name = '엑센트'
  AND cs.model_year = '2013.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1396
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 520, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252628&gubun=K', 0, 66000, '흰색', 168
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '엑센트'
  AND cs.generation_name = '엑센트'
  AND cs.model_year = '2012.02'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1396
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 470, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252627&gubun=K', 0, 116000, '흰색', 148
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '엑센트'
  AND cs.generation_name = '엑센트'
  AND cs.model_year = '14년형'
  AND cs.trim_name = '모던'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1396
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1999, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2242714&gubun=K', 0, 51000, '은색', 408
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '엑셀'
  AND cs.generation_name = '엑셀'
  AND cs.model_year = '1992.02'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1468
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 640, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251057&gubun=K', 0, 192481, '흰색', 168
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '제네시스'
  AND cs.generation_name = '더 뉴 제네시스'
  AND cs.model_year = '2012.02'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 350, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255383&gubun=K', 0, 108000, '회색', 190
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '제네시스'
  AND cs.generation_name = '제네시스'
  AND cs.model_year = '2010.04'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 800, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255422&gubun=K', 0, 135630, '자주색', 202
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '제네시스'
  AND cs.generation_name = '제네시스'
  AND cs.model_year = '2009.04'
  AND cs.trim_name = 'GT'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3778
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 699, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2239818&gubun=K', 0, 202903, '회색', 121
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '제네시스'
  AND cs.generation_name = '제네시스'
  AND cs.model_year = '2016.01'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3342
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 790, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255303&gubun=K', 0, 191384, '검정색', 144
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '제네시스'
  AND cs.generation_name = '제네시스'
  AND cs.model_year = '2014.02'
  AND cs.trim_name = '모던'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3342
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1170, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253546&gubun=K', 0, 160964, '흰색', 127
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '제네시스'
  AND cs.generation_name = '제네시스'
  AND cs.model_year = '16년형'
  AND cs.trim_name = '모던'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3342
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1950, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255415&gubun=K', 0, 32547, '진회색', 130
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '제네시스'
  AND cs.generation_name = '제네시스'
  AND cs.model_year = '16년형'
  AND cs.trim_name = '모던'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3342
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1450, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2246889&gubun=K', 0, 145000, '은색', 142
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '제네시스'
  AND cs.generation_name = '제네시스'
  AND cs.model_year = '15년형'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3342
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1190, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252225&gubun=K', 0, 193174, '검정색', 176
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '제네시스'
  AND cs.generation_name = '제네시스'
  AND cs.model_year = '12년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린/LPG겸용'
  AND cs.displacement_cc = 5038
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 990, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253085&gubun=K', 0, 154244, '검정색', 167
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '제네시스'
  AND cs.generation_name = '제네시스'
  AND cs.model_year = '2012.03'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3778
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 490, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256842&gubun=K', 0, 177167, '진회색 (보라색 랩핑)', 212
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '제네시스'
  AND cs.generation_name = '제네시스'
  AND cs.model_year = '2008.06'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3778
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1290, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257252&gubun=K', 0, 239801, '갈색', 169
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '제네시스'
  AND cs.generation_name = '제네시스'
  AND cs.model_year = '2012.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 5038
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 590, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254836&gubun=K', 0, 211223, '검정색', 165
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '제네시스'
  AND cs.generation_name = '제네시스'
  AND cs.model_year = '2012.05'
  AND cs.trim_name = '럭셔리'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3342
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 249, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2222941&gubun=K', 0, 154000, '검정색', 197
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '제네시스'
  AND cs.generation_name = '제네시스'
  AND cs.model_year = '10년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3342
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 560, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255664&gubun=K', 0, 163231, '검정색', 175
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '제네시스'
  AND cs.generation_name = '제네시스'
  AND cs.model_year = '12년형'
  AND cs.trim_name = '럭셔리'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3342
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 390, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257372&gubun=K', 0, 183906, '은색', 187
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '제네시스'
  AND cs.generation_name = '제네시스'
  AND cs.model_year = '2010.07'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3778
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1290, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255684&gubun=K', 0, 66971, '검정색', 149
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '제네시스'
  AND cs.generation_name = '제네시스'
  AND cs.model_year = '14년형'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3342
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 870, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2249235&gubun=K', 0, 47000, '검정색', 152
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '제네시스'
  AND cs.generation_name = '제네시스'
  AND cs.model_year = '2013.06'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3778
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 52, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256140&gubun=K', 0, 18300, '녹색', 12
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '투싼'
  AND cs.generation_name = '더 뉴 투싼'
  AND cs.model_year = '2025.02'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2699, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255724&gubun=K', 0, 59445, '갈색', 50
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '투싼'
  AND cs.generation_name = '디 올 뉴 투싼'
  AND cs.model_year = '22년형'
  AND cs.trim_name = '인스퍼레이션'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 200, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2234194&gubun=K', 1, 21906, '흰색', 39
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '투싼'
  AND cs.generation_name = '디 올 뉴 투싼'
  AND cs.model_year = '23년형'
  AND cs.trim_name = '인스퍼레이션'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2900, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2243649&gubun=K', 0, 16588, '진회색', 25
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '투싼'
  AND cs.generation_name = '디 올 뉴 투싼'
  AND cs.model_year = '23년형'
  AND cs.trim_name = '인스퍼레이션'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2500, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256990&gubun=K', 0, 98830, '흰색', 57
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '투싼'
  AND cs.generation_name = '디 올 뉴 투싼'
  AND cs.model_year = '2021.05'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 200, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254419&gubun=K', 1, 20, '흰색', 4
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '투싼'
  AND cs.generation_name = '디 올 뉴 투싼'
  AND cs.model_year = '2025.10'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251808&gubun=K', 1, 50, '흰색', 5
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '투싼'
  AND cs.generation_name = '디 올 뉴 투싼'
  AND cs.model_year = '2025.09'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1084, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256623&gubun=K', 1, 83, '검정색', 1
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '투싼'
  AND cs.generation_name = '디 올 뉴 투싼'
  AND cs.model_year = '2026.01'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 200, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255528&gubun=K', 1, 37370, '흰색', 22
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '투싼'
  AND cs.generation_name = '디 올 뉴 투싼'
  AND cs.model_year = '2024.04'
  AND cs.trim_name = '인스퍼레이션'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1290, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257149&gubun=K', 0, 66954, '회색', 103
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '투싼'
  AND cs.generation_name = '올 뉴 투싼'
  AND cs.model_year = '18년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1685
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 810, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257234&gubun=K', 0, 87287, '흰색', 137
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '투싼ix'
  AND cs.generation_name = '뉴 투싼ix'
  AND cs.model_year = '15년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1995
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 620, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2247466&gubun=K', 0, 95766, '흰색', 164
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '투싼ix'
  AND cs.generation_name = '투싼ix'
  AND cs.model_year = '13년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1995
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 600, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255423&gubun=K', 0, 120700, '흰색', 162
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '투싼ix'
  AND cs.generation_name = '투싼ix'
  AND cs.model_year = '13년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1995
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 380, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2247145&gubun=K', 0, 99203, '흰색', 245
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '테라칸'
  AND cs.generation_name = '테라칸'
  AND cs.model_year = '2005.09'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2902
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 200, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2247855&gubun=K', 0, 195227, '검정색', 237
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '투스카니'
  AND cs.generation_name = '뉴 투스카니'
  AND cs.model_year = '2006.05'
  AND cs.trim_name = 'GT'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1975
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 990, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255748&gubun=K', 0, 161672, '은색', 254
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '투스카니'
  AND cs.generation_name = '투스카니'
  AND cs.model_year = '2005.00'
  AND cs.trim_name = 'GT'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1975
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 250, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256909&gubun=K', 0, 200000, '빨간색', 287
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '투스카니'
  AND cs.generation_name = '투스카니'
  AND cs.model_year = '2002.03'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1975
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3599, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255274&gubun=K', 0, 155308, '흰색', 162
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '카운티'
  AND cs.generation_name = '뉴 카운티'
  AND cs.model_year = '2012.08'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 3933
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 6680, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2250290&gubun=K', 0, 75600, '진주투톤', 141
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '카운티'
  AND cs.generation_name = '뉴 카운티'
  AND cs.model_year = '2014.05'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 3933
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4980, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255135&gubun=K', 0, 159921, '흰색투톤', 156
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '카운티'
  AND cs.generation_name = '뉴 카운티'
  AND cs.model_year = '2013.02'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 3933
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4880, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2245767&gubun=K', 0, 138589, '흰색', 144
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '카운티'
  AND cs.generation_name = '뉴 카운티'
  AND cs.model_year = '2014.02'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 3933
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 5880, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2246386&gubun=K', 0, 92819, '흰색투톤', 143
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '카운티'
  AND cs.generation_name = '뉴 카운티'
  AND cs.model_year = '2014.03'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 3933
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 5299, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254708&gubun=K', 0, 20977, '베이지색', 115
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '카운티'
  AND cs.generation_name = '뉴 카운티'
  AND cs.model_year = '2016.07'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 3933
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256732&gubun=K', 0, 141854, '흰색투톤', 156
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '카운티'
  AND cs.generation_name = '뉴 카운티'
  AND cs.model_year = '2013.02'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 3933
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 7200, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252235&gubun=K', 0, 21000, '흰색', 130
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '카운티'
  AND cs.generation_name = '뉴 카운티'
  AND cs.model_year = '2015.04'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 3933
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2247832&gubun=K', 0, 97074, '흰색투톤', 146
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '카운티'
  AND cs.generation_name = '뉴 카운티'
  AND cs.model_year = '14년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 3933
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4650, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2224195&gubun=K', 0, 264232, '흰색', 193
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = 'e-카운티'
  AND cs.generation_name = 'e-카운티'
  AND cs.model_year = '2010.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 3933
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1550, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255971&gubun=K', 0, 425634, '노란색', 186
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = 'e-카운티'
  AND cs.generation_name = 'e-카운티'
  AND cs.model_year = '2010.08'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 3933
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1500, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256661&gubun=K', 0, 547196, '진주색', 174
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = 'e-카운티'
  AND cs.generation_name = 'e-카운티'
  AND cs.model_year = '2011.08'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 3933
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1950, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255696&gubun=K', 0, 198492, '노란색', 168
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = 'e-카운티'
  AND cs.generation_name = 'e-카운티'
  AND cs.model_year = '2012.02'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 3933
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2880, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253474&gubun=K', 0, 247541, '진주투톤', 224
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = 'e-카운티'
  AND cs.generation_name = 'e-카운티'
  AND cs.model_year = '2007.06'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 3907
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4680, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254033&gubun=K', 0, 82680, '흰색', 174
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = 'e-카운티'
  AND cs.generation_name = 'e-카운티'
  AND cs.model_year = '2011.08'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 3933
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2980, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254462&gubun=K', 0, 187936, '흰색투톤', 219
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = 'e-카운티'
  AND cs.generation_name = 'e-카운티'
  AND cs.model_year = '08년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 3933
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2880, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254906&gubun=K', 0, 155164, '흰색투톤', 234
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = 'e-카운티'
  AND cs.generation_name = 'e-카운티'
  AND cs.model_year = '07년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 3907
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4880, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255442&gubun=K', 0, 230772, '흰색투톤', 168
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = 'e-카운티'
  AND cs.generation_name = 'e-카운티'
  AND cs.model_year = '2012.02'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 3933
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3980, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255779&gubun=K', 0, 199890, '검정색', 177
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = 'e-카운티'
  AND cs.generation_name = 'e-카운티'
  AND cs.model_year = '2011.05'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 3933
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1880, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257190&gubun=K', 0, 146827, '진주투톤', 168
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = 'e-카운티'
  AND cs.generation_name = 'e-카운티'
  AND cs.model_year = '2012.02'
  AND cs.trim_name = '스탠다드'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 3933
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4880, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2242876&gubun=K', 0, 43562, '흰색투톤', 165
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = 'e-카운티'
  AND cs.generation_name = 'e-카운티'
  AND cs.model_year = '2012.05'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 3933
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4580, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2248420&gubun=K', 0, 167024, '진주투톤', 161
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = 'e-카운티'
  AND cs.generation_name = 'e-카운티'
  AND cs.model_year = '2012.09'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 3933
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3200, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256074&gubun=K', 0, 273524, '진주투톤', 192
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = 'e-카운티'
  AND cs.generation_name = 'e-카운티'
  AND cs.model_year = '2010.02'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 3933
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256203&gubun=K', 0, 151847, '흰색투톤', 165
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = 'e-카운티'
  AND cs.generation_name = 'e-카운티'
  AND cs.model_year = '2012.05'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 3933
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254080&gubun=K', 0, 212013, '흰색투톤', 169
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = 'e-카운티'
  AND cs.generation_name = 'e-카운티'
  AND cs.model_year = '2012.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 3933
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3999, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2226229&gubun=K', 0, 180000, '진청색', 274
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '카운티'
  AND cs.generation_name = '카운티'
  AND cs.model_year = '2003.04'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 3907
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3100, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2227729&gubun=K', 0, 330000, '베이지색', 285
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '카운티'
  AND cs.generation_name = '카운티'
  AND cs.model_year = '2002.05'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 3298
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3650, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2249195&gubun=K', 0, 180000, '하늘색', 298
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '카운티'
  AND cs.generation_name = '카운티'
  AND cs.model_year = '2001.04'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 3298
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 100, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2249302&gubun=K', 1, 3855, '흰색', 10
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '팰리세이드'
  AND cs.generation_name = '디 올 뉴 팰리세이드'
  AND cs.model_year = '26년형'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 100, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2249410&gubun=K', 1, 940, '청색', 8
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '팰리세이드'
  AND cs.generation_name = '디 올 뉴 팰리세이드'
  AND cs.model_year = '26년형'
  AND cs.trim_name = '캘리그래피'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 120, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2249699&gubun=K', 1, 500, '흰색', 8
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '팰리세이드'
  AND cs.generation_name = '디 올 뉴 팰리세이드'
  AND cs.model_year = '26년형'
  AND cs.trim_name = '캘리그래피'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 150, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2244854&gubun=K', 1, 400, '검정색', 11
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '팰리세이드'
  AND cs.generation_name = '디 올 뉴 팰리세이드'
  AND cs.model_year = '2025.03'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 150, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255723&gubun=K', 1, 4230, '검정색', 10
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '팰리세이드'
  AND cs.generation_name = '디 올 뉴 팰리세이드'
  AND cs.model_year = '26년형'
  AND cs.trim_name = '캘리그래피'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255715&gubun=K', 1, 2980, '검정색', 9
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '팰리세이드'
  AND cs.generation_name = '디 올 뉴 팰리세이드'
  AND cs.model_year = '26년형'
  AND cs.trim_name = '캘리그래피'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 6890, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255314&gubun=K', 0, 16000, '흰색', 10
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '팰리세이드'
  AND cs.generation_name = '디 올 뉴 팰리세이드'
  AND cs.model_year = '26년형'
  AND cs.trim_name = '캘리그래피'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4099, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255103&gubun=K', 0, 21429, '흰색', 34
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '팰리세이드'
  AND cs.generation_name = '더 뉴 팰리세이드'
  AND cs.model_year = '2023.04'
  AND cs.trim_name = '캘리그래피'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3778
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4299, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256616&gubun=K', 0, 27506, '흰색', 15
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '팰리세이드'
  AND cs.generation_name = '더 뉴 팰리세이드'
  AND cs.model_year = '2024.11'
  AND cs.trim_name = '캘리그래피'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3778
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3890, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257093&gubun=K', 0, 33718, '흰색', 33
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '팰리세이드'
  AND cs.generation_name = '더 뉴 팰리세이드'
  AND cs.model_year = '2023.05'
  AND cs.trim_name = '캘리그래피'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3778
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3699, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257270&gubun=K', 0, 27530, '흰색', 36
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '팰리세이드'
  AND cs.generation_name = '더 뉴 팰리세이드'
  AND cs.model_year = '2023.02'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3778
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4490, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256708&gubun=K', 0, 14291, '회색', 33
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '팰리세이드'
  AND cs.generation_name = '더 뉴 팰리세이드'
  AND cs.model_year = '2023.05'
  AND cs.trim_name = '캘리그래피'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4600, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255073&gubun=K', 0, 25135, '흰색', 37
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '팰리세이드'
  AND cs.generation_name = '더 뉴 팰리세이드'
  AND cs.model_year = '2023.01'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2650, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256387&gubun=K', 0, 77000, '주황색', 49
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '팰리세이드'
  AND cs.generation_name = '더 뉴 팰리세이드'
  AND cs.model_year = '2022.01'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3778
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3750, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255358&gubun=K', 0, 40900, '녹색', 37
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '팰리세이드'
  AND cs.generation_name = '더 뉴 팰리세이드'
  AND cs.model_year = '2023.01'
  AND cs.trim_name = '캘리그래피'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3778
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3700, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2243665&gubun=K', 0, 43000, '흰색', 34
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '팰리세이드'
  AND cs.generation_name = '더 뉴 팰리세이드'
  AND cs.model_year = '2023.04'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1990, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256403&gubun=K', 0, 126981, '청색', 85
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '팰리세이드'
  AND cs.generation_name = '팰리세이드'
  AND cs.model_year = '2019.01'
  AND cs.trim_name = '익스클루시브'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3778
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2650, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257248&gubun=K', 0, 8070, '검정색', 81
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '팰리세이드'
  AND cs.generation_name = '팰리세이드'
  AND cs.model_year = '2019.05'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3778
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2480, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254497&gubun=K', 0, 87866, '검정색', 83
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '팰리세이드'
  AND cs.generation_name = '팰리세이드'
  AND cs.model_year = '2019.03'
  AND cs.trim_name = '익스클루시브'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2700, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255670&gubun=K', 0, 113300, '흰색', 76
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '팰리세이드'
  AND cs.generation_name = '팰리세이드'
  AND cs.model_year = '2019.10'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2500, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255448&gubun=K', 0, 74305, '파란색', 76
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '팰리세이드'
  AND cs.generation_name = '팰리세이드'
  AND cs.model_year = '2019.10'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3778
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2550, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255449&gubun=K', 0, 63822, '흰색', 84
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '팰리세이드'
  AND cs.generation_name = '팰리세이드'
  AND cs.model_year = '2019.02'
  AND cs.trim_name = '익스클루시브'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3778
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2480, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255450&gubun=K', 0, 66522, '파란색', 75
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '팰리세이드'
  AND cs.generation_name = '팰리세이드'
  AND cs.model_year = '20년형'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3778
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3300, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256328&gubun=K', 0, 66500, '흰색', 53
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '팰리세이드'
  AND cs.generation_name = '팰리세이드'
  AND cs.model_year = '22년형'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3100, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256293&gubun=K', 0, 75200, '흰색', 85
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '팰리세이드'
  AND cs.generation_name = '팰리세이드'
  AND cs.model_year = '2019.01'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2200, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255398&gubun=K', 0, 240000, '흰색', 63
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '팰리세이드'
  AND cs.generation_name = '팰리세이드'
  AND cs.model_year = '21년형'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2800, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255341&gubun=K', 0, 85000, '진회색', 58
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '팰리세이드'
  AND cs.generation_name = '팰리세이드'
  AND cs.model_year = '2021.04'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3778
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2860, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252093&gubun=K', 0, 83000, '흰색', 75
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '팰리세이드'
  AND cs.generation_name = '팰리세이드'
  AND cs.model_year = '2019.11'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1899, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256362&gubun=K', 0, 36141, '흰색', 26
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '포터2'
  AND cs.generation_name = '포터2'
  AND cs.model_year = '24년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 2469
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1790, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2246610&gubun=K', 0, 82293, '흰색', 44
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '포터2'
  AND cs.generation_name = '포터2'
  AND cs.model_year = '2022.06'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 760, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253097&gubun=K', 0, 142141, '흰색', 117
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '포터2'
  AND cs.generation_name = '포터2'
  AND cs.model_year = '17년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 670, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255690&gubun=K', 0, 144506, '흰색', 133
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '포터2'
  AND cs.generation_name = '포터2'
  AND cs.model_year = '2015.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 699, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256685&gubun=K', 0, 143595, '청색', 127
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '포터2'
  AND cs.generation_name = '포터2'
  AND cs.model_year = '16년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 790, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256176&gubun=K', 0, 95549, '흰색', 127
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '포터2'
  AND cs.generation_name = '포터2'
  AND cs.model_year = '16년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2000, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253450&gubun=K', 0, 17169, '흰색', 43
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '포터2'
  AND cs.generation_name = '포터2'
  AND cs.model_year = '2022.07'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2290, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251628&gubun=K', 0, 30000, '흰색', 24
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '포터2'
  AND cs.generation_name = '포터2'
  AND cs.model_year = '2024.02'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 2469
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1980, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253566&gubun=K', 0, 25928, '청색', 25
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '포터2'
  AND cs.generation_name = '포터2'
  AND cs.model_year = '2024.01'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 2469
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1330, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257358&gubun=K', 0, 123838, '흰색', 120
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '포터2'
  AND cs.generation_name = '포터2'
  AND cs.model_year = '2016.02'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 680, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254188&gubun=K', 0, 244000, '흰색', 149
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '포터2'
  AND cs.generation_name = '포터2'
  AND cs.model_year = '14년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 670, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256925&gubun=K', 0, 124000, '흰색', 156
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '포터2'
  AND cs.generation_name = '포터2'
  AND cs.model_year = '2013.02'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1060, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257071&gubun=K', 0, 148000, '흰색', 107
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '포터2'
  AND cs.generation_name = '포터2'
  AND cs.model_year = '2017.03'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2680, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252263&gubun=K', 0, 197178, '흰색', 152
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '포터2'
  AND cs.generation_name = '포터2'
  AND cs.model_year = '2013.06'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1690, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257321&gubun=K', 0, 100207, '흰색', 68
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '포터2'
  AND cs.generation_name = '포터2'
  AND cs.model_year = '2020.06'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1150, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257286&gubun=K', 0, 160016, '흰색', 117
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '포터2'
  AND cs.generation_name = '포터2'
  AND cs.model_year = '2016.05'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1000, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257276&gubun=K', 0, 168000, '흰색', 120
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '포터2'
  AND cs.generation_name = '포터2'
  AND cs.model_year = '2016.02'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 690, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257275&gubun=K', 0, 100000, '흰색', 159
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '포터2'
  AND cs.generation_name = '포터2'
  AND cs.model_year = '13년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 950, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257274&gubun=K', 0, 139000, '진청색', 106
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '포터2'
  AND cs.generation_name = '포터2'
  AND cs.model_year = '2017.04'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 670, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257273&gubun=K', 0, 109000, '흰색', 172
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '포터2'
  AND cs.generation_name = '포터2'
  AND cs.model_year = '12년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4350, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255931&gubun=K', 0, 112319, '노란색', 123
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = 'e-에어로타운'
  AND cs.generation_name = 'e-에어로타운'
  AND cs.model_year = '2015.11'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 5899
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1950, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2248075&gubun=K', 0, 548868, '기타색상', 164
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = 'e-에어로타운'
  AND cs.generation_name = 'e-에어로타운'
  AND cs.model_year = '2012.06'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 5899
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2950, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257301&gubun=K', 0, 239777, '베이지색', 151
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = 'e-에어로타운'
  AND cs.generation_name = 'e-에어로타운'
  AND cs.model_year = '2013.07'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 5899
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2600, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253166&gubun=K', 0, 31104, '베이지색', 227
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = 'e-에어로타운'
  AND cs.generation_name = 'e-에어로타운'
  AND cs.model_year = '2007.03'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 6606
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 850, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2244235&gubun=K', 0, 185950, '흰색투톤', 252
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '리베로'
  AND cs.generation_name = '리베로'
  AND cs.model_year = '2005.02'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2476
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 9500, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251450&gubun=K', 0, 33000, '진회색', 38
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '마이티'
  AND cs.generation_name = '올 뉴 마이티'
  AND cs.model_year = '23년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 3933
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4250, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257262&gubun=K', 0, 43688, '흰색', 65
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '마이티'
  AND cs.generation_name = '올 뉴 마이티'
  AND cs.model_year = '2020.09'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 3933
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253761&gubun=K', 0, 157880, '흰색', 107
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '마이티'
  AND cs.generation_name = '올 뉴 마이티'
  AND cs.model_year = '2017.03'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 3933
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251639&gubun=K', 0, 154850, '흰색', 107
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '마이티'
  AND cs.generation_name = '올 뉴 마이티'
  AND cs.model_year = '2017.03'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 3933
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 9900, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2215417&gubun=K', 0, 1449, '흰색', 46
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '마이티'
  AND cs.generation_name = '올 뉴 마이티'
  AND cs.model_year = '2022.04'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 3933
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2480, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255210&gubun=K', 0, 112890, '흰색', 147
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = 'e마이티'
  AND cs.generation_name = 'e마이티'
  AND cs.model_year = '2013.11'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 3933
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252963&gubun=K', 0, 72210, '흰색', 177
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = 'e마이티'
  AND cs.generation_name = 'e마이티'
  AND cs.model_year = '2011.05'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 3933
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4650, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255753&gubun=K', 0, 430192, '흰색', 115
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '유니버스'
  AND cs.generation_name = '유니버스'
  AND cs.model_year = '2016.07'
  AND cs.trim_name = '럭셔리'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 12742
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256013&gubun=K', 1, 30, '흰색', 6
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '베뉴'
  AND cs.generation_name = '베뉴'
  AND cs.model_year = '26년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 150, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257192&gubun=K', 1, 20, '흰색', 3
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '베뉴'
  AND cs.generation_name = '베뉴'
  AND cs.model_year = '26년형'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1980, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255683&gubun=K', 0, 1043, '진회색', 5
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '베뉴'
  AND cs.generation_name = '베뉴'
  AND cs.model_year = '26년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3680, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255668&gubun=K', 0, 10482, '진회색', 35
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '스타리아'
  AND cs.generation_name = '스타리아'
  AND cs.model_year = '2023.03'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256932&gubun=K', 1, 9000, '검정색', 12
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '스타리아'
  AND cs.generation_name = '스타리아'
  AND cs.model_year = '2025.02'
  AND cs.trim_name = '인스퍼레이션'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 77, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2249575&gubun=K', 1, 17000, '검정색', 25
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '스타리아'
  AND cs.generation_name = '스타리아'
  AND cs.model_year = '2024.01'
  AND cs.trim_name = '모던'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 460, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257334&gubun=K', 1, 25000, '검정색', 18
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '스타리아'
  AND cs.generation_name = '스타리아'
  AND cs.model_year = '25년형'
  AND cs.trim_name = '인스퍼레이션'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4800, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256417&gubun=K', 0, 46433, '검정색', 26
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '스타리아'
  AND cs.generation_name = '스타리아'
  AND cs.model_year = '24년형'
  AND cs.trim_name = '모던'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 6600, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257288&gubun=K', 0, 6000, '검정색', 5
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '스타리아'
  AND cs.generation_name = '스타리아'
  AND cs.model_year = '2025.09'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 5480, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253760&gubun=K', 0, 13164, '진회색', 15
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '스타리아'
  AND cs.generation_name = '스타리아'
  AND cs.model_year = '25년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4680, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256985&gubun=K', 0, 75000, '흰색', 56
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '스타리아'
  AND cs.generation_name = '스타리아'
  AND cs.model_year = '22년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 5800, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255713&gubun=K', 0, 47779, '검정색', 38
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '스타리아'
  AND cs.generation_name = '스타리아'
  AND cs.model_year = '2022.12'
  AND cs.trim_name = '인스퍼레이션'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1800, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257100&gubun=K', 0, 515000, '검정색', 50
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '스타리아'
  AND cs.generation_name = '스타리아'
  AND cs.model_year = '22년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255705&gubun=K', 1, 6250, '진회색', 13
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '스타리아'
  AND cs.generation_name = '스타리아'
  AND cs.model_year = '2025.01'
  AND cs.trim_name = '모던'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 6200, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2247935&gubun=K', 0, 6035, '흰색', 34
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '스타리아'
  AND cs.generation_name = '스타리아'
  AND cs.model_year = '2023.04'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 5600, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2244858&gubun=K', 0, 23271, '검정색', 37
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '스타리아'
  AND cs.generation_name = '스타리아'
  AND cs.model_year = '2023.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 9999, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2244141&gubun=K', 0, 2900, '흰색', 36
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '스타리아'
  AND cs.generation_name = '스타리아'
  AND cs.model_year = '22년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 5800, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2242882&gubun=K', 0, 90, '검정색', 14
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '스타리아'
  AND cs.generation_name = '스타리아'
  AND cs.model_year = '25년형'
  AND cs.trim_name = '인스퍼레이션'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256051&gubun=K', 1, 50308, '흰색', 52
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '아이오닉5'
  AND cs.generation_name = '아이오닉5'
  AND cs.model_year = '22년형'
  AND cs.trim_name = '익스클루시브'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '전기'
  AND cs.displacement_cc = 111
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 200, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256304&gubun=K', 1, 81220, '회색', 45
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '아이오닉5'
  AND cs.generation_name = '아이오닉5'
  AND cs.model_year = '2022.05'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '전기'
  AND cs.displacement_cc = 111
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257299&gubun=K', 1, 30, '흰색', 1
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '캐스퍼'
  AND cs.generation_name = '더 뉴 캐스퍼'
  AND cs.model_year = '2026.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251863&gubun=K', 1, 20, '흰색', 19
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '캐스퍼'
  AND cs.generation_name = '캐스퍼'
  AND cs.model_year = '2024.07'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2100, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255678&gubun=K', 0, 14800, '녹색', 14
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '캐스퍼'
  AND cs.generation_name = '캐스퍼'
  AND cs.model_year = '25년형'
  AND cs.trim_name = '인스퍼레이션'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256868&gubun=K', 1, 50000, '흰색', 41
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '아이오닉6'
  AND cs.generation_name = '아이오닉6'
  AND cs.model_year = '23년형'
  AND cs.trim_name = '익스클루시브'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '전기'
  AND cs.displacement_cc = 111
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2609, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256557&gubun=K', 1, 15346, '기타색상', 26
FROM car_specs cs
WHERE cs.maker_id = 1
  AND cs.model_name = '아이오닉6'
  AND cs.generation_name = '아이오닉6'
  AND cs.model_year = '24년형'
  AND cs.trim_name = '익스클루시브'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '전기'
  AND cs.displacement_cc = 111
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3350, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253837&gubun=K', 0, 40869, '흰색', 55
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G70'
  AND cs.generation_name = '더 뉴 G70'
  AND cs.model_year = '2021.07'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3799, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254377&gubun=K', 0, 42857, '회색', 54
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G70'
  AND cs.generation_name = '더 뉴 G70'
  AND cs.model_year = '2021.08'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3330, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256436&gubun=K', 0, 35169, '흰색', 58
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G70'
  AND cs.generation_name = '더 뉴 G70'
  AND cs.model_year = '2021.04'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3090, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257052&gubun=K', 0, 44943, '진회색', 50
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G70'
  AND cs.generation_name = '더 뉴 G70'
  AND cs.model_year = '22년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3190, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257320&gubun=K', 0, 36635, '흰색', 48
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G70'
  AND cs.generation_name = '더 뉴 G70'
  AND cs.model_year = '2022.02'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2950, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252337&gubun=K', 0, 41383, '진회색', 55
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G70'
  AND cs.generation_name = '더 뉴 G70'
  AND cs.model_year = '2021.07'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3342
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 300, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2249207&gubun=K', 1, 29000, '청색', 20
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G70'
  AND cs.generation_name = '더 뉴 G70'
  AND cs.model_year = '2024.06'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1500, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256663&gubun=K', 1, 37178, '흰색', 59
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G70'
  AND cs.generation_name = '더 뉴 G70'
  AND cs.model_year = '2021.03'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2990, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253430&gubun=K', 0, 70083, '검정색', 79
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G70'
  AND cs.generation_name = 'G70'
  AND cs.model_year = '2019.07'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3342
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2880, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257205&gubun=K', 0, 58456, '흰색', 76
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G70'
  AND cs.generation_name = 'G70'
  AND cs.model_year = '20년형'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3342
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1198, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2246425&gubun=K', 0, 221240, '진회색', 97
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G70'
  AND cs.generation_name = 'G70'
  AND cs.model_year = '2018.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2350, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257350&gubun=K', 0, 94800, '흰색', 82
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G70'
  AND cs.generation_name = 'G70'
  AND cs.model_year = '2019.04'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2110, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255990&gubun=K', 0, 80700, '빨간색', 93
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G70'
  AND cs.generation_name = 'G70'
  AND cs.model_year = '2018.05'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 6299, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256325&gubun=K', 0, 6623, '흰색', 15
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G80'
  AND cs.generation_name = 'G80'
  AND cs.model_year = '25년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 7200, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254008&gubun=K', 0, 220, '흰색', 4
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G80'
  AND cs.generation_name = 'G80'
  AND cs.model_year = '26년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 500, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256422&gubun=K', 1, 25700, '진회색', 17
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G80'
  AND cs.generation_name = 'G80'
  AND cs.model_year = '25년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255716&gubun=K', 1, 3650, '흰색', 8
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G80'
  AND cs.generation_name = 'G80'
  AND cs.model_year = '26년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4200, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255118&gubun=K', 0, 54112, '흰색', 63
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G80'
  AND cs.generation_name = 'G80'
  AND cs.model_year = '21년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4650, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256077&gubun=K', 0, 20800, '흰색', 35
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G80'
  AND cs.generation_name = 'G80'
  AND cs.model_year = '2023.03'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 250, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255615&gubun=K', 1, 11500, '검정색', 16
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G80'
  AND cs.generation_name = 'G80'
  AND cs.model_year = '25년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4099, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255238&gubun=K', 0, 73136, '갈색', 51
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = '더'
  AND cs.generation_name = '더'
  AND cs.model_year = '22년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3899, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255768&gubun=K', 0, 68917, '갈색', 64
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = '더'
  AND cs.generation_name = '더'
  AND cs.model_year = '21년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 500, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2226841&gubun=K', 1, 2500, '청색', 24
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = '더'
  AND cs.generation_name = '더'
  AND cs.model_year = '25년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3490, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255205&gubun=K', 0, 98000, '검정색', 67
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = '더'
  AND cs.generation_name = '더'
  AND cs.model_year = '21년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 5099, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254523&gubun=K', 0, 22105, '흰색', 41
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = '더'
  AND cs.generation_name = '더'
  AND cs.model_year = '2022.09'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4690, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254710&gubun=K', 0, 38562, '흰색', 41
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = '더'
  AND cs.generation_name = '더'
  AND cs.model_year = '2022.09'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4499, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255368&gubun=K', 0, 61915, '흰색', 57
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = '더'
  AND cs.generation_name = '더'
  AND cs.model_year = '2021.05'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2151
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4250, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255247&gubun=K', 0, 39427, '흰색', 65
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = '더'
  AND cs.generation_name = '더'
  AND cs.model_year = '21년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4490, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255470&gubun=K', 0, 61368, '흰색', 43
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = '더'
  AND cs.generation_name = '더'
  AND cs.model_year = '2022.07'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 5650, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257182&gubun=K', 0, 44958, '흰색', 44
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = '더'
  AND cs.generation_name = '더'
  AND cs.model_year = '2022.06'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 5090, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256108&gubun=K', 0, 27479, '흰색', 48
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = '더'
  AND cs.generation_name = '더'
  AND cs.model_year = '2022.02'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4590, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256171&gubun=K', 0, 27117, '청색', 35
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = '더'
  AND cs.generation_name = '더'
  AND cs.model_year = '2023.03'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3890, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256505&gubun=K', 0, 42931, '흰색', 63
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = '더'
  AND cs.generation_name = '더'
  AND cs.model_year = '21년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4850, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256614&gubun=K', 0, 29469, '검정색', 39
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = '더'
  AND cs.generation_name = '더'
  AND cs.model_year = '23년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 5490, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256958&gubun=K', 0, 20606, '검정색', 32
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = '더'
  AND cs.generation_name = '더'
  AND cs.model_year = '24년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4390, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256914&gubun=K', 0, 32165, '흰색', 55
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = '더'
  AND cs.generation_name = '더'
  AND cs.model_year = '2021.07'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 5890, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256918&gubun=K', 0, 17231, '흰색', 25
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = '더'
  AND cs.generation_name = '더'
  AND cs.model_year = '25년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4750, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256954&gubun=K', 0, 42698, '흰색', 29
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = '더'
  AND cs.generation_name = '더'
  AND cs.model_year = '24년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3890, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257132&gubun=K', 0, 58348, '흰색', 64
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = '더'
  AND cs.generation_name = '더'
  AND cs.model_year = '21년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2151
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 5050, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257139&gubun=K', 0, 58941, '흰색', 27
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = '더'
  AND cs.generation_name = '더'
  AND cs.model_year = '24년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1870, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253384&gubun=K', 0, 78269, '검정색', 111
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G80'
  AND cs.generation_name = 'G80'
  AND cs.model_year = '17년형'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3342
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1990, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255787&gubun=K', 0, 52709, '검정색', 108
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G80'
  AND cs.generation_name = 'G80'
  AND cs.model_year = '2017.02'
  AND cs.trim_name = '럭셔리'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3342
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2340, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257337&gubun=K', 0, 61123, '검정색', 75
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G80'
  AND cs.generation_name = 'G80'
  AND cs.model_year = '20년형'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3342
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1790, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256468&gubun=K', 0, 142303, '청색', 110
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G80'
  AND cs.generation_name = 'G80'
  AND cs.model_year = '17년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3342
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1290, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256542&gubun=K', 0, 255075, '회색', 91
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G80'
  AND cs.generation_name = 'G80'
  AND cs.model_year = '2018.07'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3342
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1840, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257333&gubun=K', 0, 143959, '검정색', 86
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G80'
  AND cs.generation_name = 'G80'
  AND cs.model_year = '19년형'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3342
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1420, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255898&gubun=K', 0, 148000, '검정색', 110
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G80'
  AND cs.generation_name = 'G80'
  AND cs.model_year = '17년형'
  AND cs.trim_name = '럭셔리'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3342
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2090, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256107&gubun=K', 0, 144513, '검정색', 85
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G80'
  AND cs.generation_name = 'G80'
  AND cs.model_year = '2019.01'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3778
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2490, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256979&gubun=K', 0, 125000, '검정색', 93
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G80'
  AND cs.generation_name = 'G80'
  AND cs.model_year = '2018.05'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3342
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3100, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255288&gubun=K', 0, 34239, '검정색', 76
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G80'
  AND cs.generation_name = 'G80'
  AND cs.model_year = '20년형'
  AND cs.trim_name = '럭셔리'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3342
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2399, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252613&gubun=K', 0, 67000, '진회색', 109
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G80'
  AND cs.generation_name = 'G80'
  AND cs.model_year = '2017.01'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린/LPG겸용'
  AND cs.displacement_cc = 3342
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2290, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2247909&gubun=K', 0, 56623, '진회색', 87
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G80'
  AND cs.generation_name = 'G80'
  AND cs.model_year = '19년형'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3342
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 6999, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256947&gubun=K', 0, 49649, '검정색', 42
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G90'
  AND cs.generation_name = 'G90'
  AND cs.model_year = '2022.08'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 7990, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2245387&gubun=K', 0, 56334, '검정색', 43
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G90'
  AND cs.generation_name = 'G90'
  AND cs.model_year = '2022.07'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 8390, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2248944&gubun=K', 0, 68112, '검정색', 42
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G90'
  AND cs.generation_name = 'G90'
  AND cs.model_year = '2022.08'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 7790, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2250955&gubun=K', 0, 74933, '흰색', 43
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G90'
  AND cs.generation_name = 'G90'
  AND cs.model_year = '2022.07'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 8390, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251452&gubun=K', 0, 41775, '검정색', 43
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G90'
  AND cs.generation_name = 'G90'
  AND cs.model_year = '2022.07'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 7790, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252489&gubun=K', 0, 81117, '기타색상', 43
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G90'
  AND cs.generation_name = 'G90'
  AND cs.model_year = '2022.07'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 6390, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252295&gubun=K', 0, 110894, '검정색', 43
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G90'
  AND cs.generation_name = 'G90'
  AND cs.model_year = '2022.07'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 6290, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253113&gubun=K', 0, 82409, '검정색', 43
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G90'
  AND cs.generation_name = 'G90'
  AND cs.model_year = '2022.07'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 8790, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253517&gubun=K', 0, 56786, '검정색', 43
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G90'
  AND cs.generation_name = 'G90'
  AND cs.model_year = '2022.07'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 7790, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253968&gubun=K', 0, 74641, '청색', 42
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G90'
  AND cs.generation_name = 'G90'
  AND cs.model_year = '2022.08'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 8490, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256660&gubun=K', 0, 65720, '검정색', 40
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G90'
  AND cs.generation_name = 'G90'
  AND cs.model_year = '23년형'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 7790, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256885&gubun=K', 0, 82785, '기타색상', 42
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G90'
  AND cs.generation_name = 'G90'
  AND cs.model_year = '2022.08'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 8790, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257066&gubun=K', 0, 59175, '검정색', 42
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G90'
  AND cs.generation_name = 'G90'
  AND cs.model_year = '2022.08'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 7999, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256455&gubun=K', 0, 63792, '흰색', 37
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G90'
  AND cs.generation_name = 'G90'
  AND cs.model_year = '2023.01'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 5670, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256730&gubun=K', 0, 82785, '회색', 45
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G90'
  AND cs.generation_name = 'G90'
  AND cs.model_year = '2022.05'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 5950, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256187&gubun=K', 0, 76372, '검정색', 39
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G90'
  AND cs.generation_name = 'G90'
  AND cs.model_year = '23년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255905&gubun=K', 1, 10997, '검정색', 24
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G90'
  AND cs.generation_name = 'G90'
  AND cs.model_year = '2024.02'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 6700, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255877&gubun=K', 0, 48000, '검정색', 43
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G90'
  AND cs.generation_name = 'G90'
  AND cs.model_year = '2022.07'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 6550, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2242966&gubun=K', 0, 50989, '검정색', 46
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G90'
  AND cs.generation_name = 'G90'
  AND cs.model_year = '2022.04'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 5500, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255211&gubun=K', 0, 151400, '검정색', 47
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G90'
  AND cs.generation_name = 'G90'
  AND cs.model_year = '2022.03'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3690, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2205990&gubun=K', 0, 96923, '검정색', 81
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G90'
  AND cs.generation_name = 'G90'
  AND cs.model_year = '2019.05'
  AND cs.trim_name = '럭셔리'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3778
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 5590, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2222136&gubun=K', 0, 44375, '청색', 56
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G90'
  AND cs.generation_name = 'G90'
  AND cs.model_year = '2021.06'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 5038
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4990, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2248713&gubun=K', 0, 80219, '검정색', 57
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G90'
  AND cs.generation_name = 'G90'
  AND cs.model_year = '2021.05'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 5038
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4990, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2247696&gubun=K', 0, 73690, '검정색', 57
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G90'
  AND cs.generation_name = 'G90'
  AND cs.model_year = '2021.05'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 5038
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4790, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2230875&gubun=K', 0, 88002, '검정색', 66
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G90'
  AND cs.generation_name = 'G90'
  AND cs.model_year = '21년형'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 5038
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3290, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2241698&gubun=K', 0, 94489, '청색', 79
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G90'
  AND cs.generation_name = 'G90'
  AND cs.model_year = '2019.07'
  AND cs.trim_name = '럭셔리'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3778
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 5199, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256198&gubun=K', 0, 81613, '검정색', 55
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G90'
  AND cs.generation_name = 'G90'
  AND cs.model_year = '2021.07'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 5038
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 5070, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2248525&gubun=K', 0, 81945, '검정색', 65
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G90'
  AND cs.generation_name = 'G90'
  AND cs.model_year = '21년형'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 5038
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4330, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256659&gubun=K', 0, 59783, '검정색', 83
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G90'
  AND cs.generation_name = 'G90'
  AND cs.model_year = '2019.03'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3778
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3780, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256912&gubun=K', 0, 99458, '흰색', 50
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G90'
  AND cs.generation_name = 'G90'
  AND cs.model_year = '22년형'
  AND cs.trim_name = '럭셔리'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3342
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3130, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256653&gubun=K', 0, 157211, '검정색', 82
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G90'
  AND cs.generation_name = 'G90'
  AND cs.model_year = '2019.04'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 5038
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3240, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257057&gubun=K', 0, 117024, '검정색', 83
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G90'
  AND cs.generation_name = 'G90'
  AND cs.model_year = '2019.03'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3778
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 5990, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2240550&gubun=K', 0, 49000, '검정색', 65
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G90'
  AND cs.generation_name = 'G90'
  AND cs.model_year = '21년형'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 5038
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2695, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256907&gubun=K', 0, 171932, '검정색', 61
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G90'
  AND cs.generation_name = 'G90'
  AND cs.model_year = '2021.01'
  AND cs.trim_name = '럭셔리'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3778
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2875, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257325&gubun=K', 0, 161891, '검정색', 82
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G90'
  AND cs.generation_name = 'G90'
  AND cs.model_year = '2019.04'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3778
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2680, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257012&gubun=K', 0, 237100, '진청색', 83
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G90'
  AND cs.generation_name = 'G90'
  AND cs.model_year = '2019.03'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3342
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2680, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255755&gubun=K', 0, 262000, '검정색', 78
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'G90'
  AND cs.generation_name = 'G90'
  AND cs.model_year = '2019.08'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 5038
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2199, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257134&gubun=K', 0, 145532, '갈색', 95
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'EQ900'
  AND cs.generation_name = 'EQ900'
  AND cs.model_year = '2018.03'
  AND cs.trim_name = '럭셔리'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3778
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2590, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2250055&gubun=K', 0, 145992, '검정색', 96
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'EQ900'
  AND cs.generation_name = 'EQ900'
  AND cs.model_year = '2018.02'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3778
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1680, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256590&gubun=K', 0, 168658, '갈색', 117
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'EQ900'
  AND cs.generation_name = 'EQ900'
  AND cs.model_year = '2016.05'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3342
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2200, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255362&gubun=K', 0, 210847, '검정색', 120
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'EQ900'
  AND cs.generation_name = 'EQ900'
  AND cs.model_year = '2016.02'
  AND cs.trim_name = '럭셔리'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3778
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1750, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256482&gubun=K', 0, 145739, '은색', 111
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'EQ900'
  AND cs.generation_name = 'EQ900'
  AND cs.model_year = '2016.11'
  AND cs.trim_name = '럭셔리'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3778
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1599, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254935&gubun=K', 0, 188055, '진회색', 117
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'EQ900'
  AND cs.generation_name = 'EQ900'
  AND cs.model_year = '2016.05'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3778
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2590, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253675&gubun=K', 0, 158677, '검정색', 118
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'EQ900'
  AND cs.generation_name = 'EQ900'
  AND cs.model_year = '2016.04'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 5038
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2100, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2250729&gubun=K', 0, 168000, '검정색', 111
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'EQ900'
  AND cs.generation_name = 'EQ900'
  AND cs.model_year = '2016.11'
  AND cs.trim_name = '럭셔리'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3342
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2500, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2246658&gubun=K', 0, 166000, '갈색 (브라운)', 109
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'EQ900'
  AND cs.generation_name = 'EQ900'
  AND cs.model_year = '2017.01'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3778
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2241464&gubun=K', 0, 6962, '녹색', 22
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'GV80'
  AND cs.generation_name = 'GV80'
  AND cs.model_year = '2024.04'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 300, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2226852&gubun=K', 1, 2600, '흰색', 26
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'GV80'
  AND cs.generation_name = 'GV80'
  AND cs.model_year = '24년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 300, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2226858&gubun=K', 1, 3500, '검정색', 27
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'GV80'
  AND cs.generation_name = 'GV80'
  AND cs.model_year = '24년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 300, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2230178&gubun=K', 1, 4300, '흰색', 23
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'GV80'
  AND cs.generation_name = 'GV80'
  AND cs.model_year = '2024.03'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 250, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2239634&gubun=K', 1, 6000, '흰색', 21
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'GV80'
  AND cs.generation_name = 'GV80'
  AND cs.model_year = '2024.05'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 500, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2239431&gubun=K', 1, 54000, '흰색', 39
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'GV80'
  AND cs.generation_name = 'GV80'
  AND cs.model_year = '2022.11'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 300, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252475&gubun=K', 1, 1850, '흰색', 5
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'GV80'
  AND cs.generation_name = 'GV80'
  AND cs.model_year = '2025.09'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 160, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251396&gubun=K', 1, 760, '진회색', 6
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'GV80'
  AND cs.generation_name = 'GV80'
  AND cs.model_year = '2025.08'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 100, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255202&gubun=K', 1, 3500, '검정색', 5
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'GV80'
  AND cs.generation_name = 'GV80'
  AND cs.model_year = '2025.09'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 6426, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257307&gubun=K', 1, 13600, '진주색', 37
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'GV80'
  AND cs.generation_name = 'GV80'
  AND cs.model_year = '2023.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 5150, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257387&gubun=K', 0, 49434, '검정색', 40
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'GV80'
  AND cs.generation_name = 'GV80'
  AND cs.model_year = '2022.10'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2996
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 6450, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254469&gubun=K', 0, 28146, '흰색', 39
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'GV80'
  AND cs.generation_name = 'GV80'
  AND cs.model_year = '2022.11'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 6290, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255181&gubun=K', 0, 36244, '흰색', 40
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'GV80'
  AND cs.generation_name = 'GV80'
  AND cs.model_year = '2022.10'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 5740, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255234&gubun=K', 0, 52466, '진회색', 40
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'GV80'
  AND cs.generation_name = 'GV80'
  AND cs.model_year = '2022.10'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 6900, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255237&gubun=K', 0, 41876, '흰색', 27
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'GV80'
  AND cs.generation_name = 'GV80'
  AND cs.model_year = '24년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 5350, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255242&gubun=K', 0, 37436, '흰색', 58
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'GV80'
  AND cs.generation_name = 'GV80'
  AND cs.model_year = '2021.04'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 5599, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255622&gubun=K', 0, 60724, '검정색', 49
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'GV80'
  AND cs.generation_name = 'GV80'
  AND cs.model_year = '2022.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 5970, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255641&gubun=K', 0, 20609, '흰색', 37
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'GV80'
  AND cs.generation_name = 'GV80'
  AND cs.model_year = '2023.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 5890, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255737&gubun=K', 0, 30595, '흰색', 46
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'GV80'
  AND cs.generation_name = 'GV80'
  AND cs.model_year = '2022.04'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 5800, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255825&gubun=K', 0, 35397, '진회색', 38
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'GV80'
  AND cs.generation_name = 'GV80'
  AND cs.model_year = '2022.12'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 5350, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256099&gubun=K', 0, 40259, '흰색', 35
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'GV80'
  AND cs.generation_name = 'GV80'
  AND cs.model_year = '2023.03'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 5550, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256169&gubun=K', 0, 22815, '검정색', 17
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'GV70'
  AND cs.generation_name = '뉴 GV70'
  AND cs.model_year = '25년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 200, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255707&gubun=K', 1, 4260, '흰색', 10
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'GV70'
  AND cs.generation_name = '뉴 GV70'
  AND cs.model_year = '2025.04'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 500, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2247120&gubun=K', 1, 3550, '기타색상', 13
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'GV70'
  AND cs.generation_name = 'GV70'
  AND cs.model_year = '2025.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 300, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254242&gubun=K', 1, 3500, '흰색', 4
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'GV70'
  AND cs.generation_name = 'GV70'
  AND cs.model_year = '2025.10'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4070, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255970&gubun=K', 0, 59315, '흰색', 50
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'GV70'
  AND cs.generation_name = 'GV70'
  AND cs.model_year = '22년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4770, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256053&gubun=K', 0, 28996, '흰색', 32
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'GV70'
  AND cs.generation_name = 'GV70'
  AND cs.model_year = '2023.06'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3850, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256391&gubun=K', 0, 40420, '검정색', 55
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'GV70'
  AND cs.generation_name = 'GV70'
  AND cs.model_year = '2021.07'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4499, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257137&gubun=K', 0, 14038, '진회색', 54
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'GV70'
  AND cs.generation_name = 'GV70'
  AND cs.model_year = '2021.08'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256625&gubun=K', 1, 40387, '검정색', 27
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'GV70'
  AND cs.generation_name = 'GV70'
  AND cs.model_year = '24년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257278&gubun=K', 1, 13146, '흰색', 8
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'GV70'
  AND cs.generation_name = 'GV70'
  AND cs.model_year = '2025.06'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4350, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254602&gubun=K', 0, 27520, '흰색', 27
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'GV70'
  AND cs.generation_name = 'GV70'
  AND cs.model_year = '24년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4550, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254601&gubun=K', 0, 13873, '흰색', 29
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'GV70'
  AND cs.generation_name = 'GV70'
  AND cs.model_year = '24년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 10, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255467&gubun=K', 1, 28000, '흰색', 30
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'GV70'
  AND cs.generation_name = 'GV70'
  AND cs.model_year = '2023.08'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257367&gubun=K', 1, 20, '진회색', 0
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'GV70'
  AND cs.generation_name = 'GV70'
  AND cs.model_year = '2026.02'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252205&gubun=K', 1, 15, '흰색', 5
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'GV70'
  AND cs.generation_name = 'GV70'
  AND cs.model_year = '2025.09'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4750, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256254&gubun=K', 0, 27453, '진회색', 29
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'GV70'
  AND cs.generation_name = 'GV70'
  AND cs.model_year = '24년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 200, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256580&gubun=K', 1, 15772, '흰색', 19
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'GV70'
  AND cs.generation_name = 'GV70'
  AND cs.model_year = '25년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3980, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255436&gubun=K', 0, 128679, '흰색', 60
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'GV70'
  AND cs.generation_name = 'GV70'
  AND cs.model_year = '2021.02'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2151
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3850, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254722&gubun=K', 0, 63256, '진회색', 47
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'GV70'
  AND cs.generation_name = 'GV70'
  AND cs.model_year = '2022.03'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3890, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255595&gubun=K', 0, 146250, '청색', 60
FROM car_specs cs
WHERE cs.maker_id = 2
  AND cs.model_name = 'GV70'
  AND cs.generation_name = 'GV70'
  AND cs.model_year = '2021.02'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2151
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1999, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251156&gubun=K', 0, 57881, '갈색', 49
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K3'
  AND cs.generation_name = '더 뉴 K3'
  AND cs.model_year = '2022.01'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1680, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2243635&gubun=K', 0, 48925, '검정색', 45
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K3'
  AND cs.generation_name = '더 뉴 K3'
  AND cs.model_year = '2022.05'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 830, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257105&gubun=K', 0, 148791, '흰색', 91
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K3'
  AND cs.generation_name = '올 뉴 K3'
  AND cs.model_year = '19년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 890, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257311&gubun=K', 0, 117087, '흰색', 98
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K3'
  AND cs.generation_name = '더 뉴 K3'
  AND cs.model_year = '18년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1591
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 480, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255380&gubun=K', 0, 208000, '진주색', 119
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K3'
  AND cs.generation_name = '더 뉴 K3'
  AND cs.model_year = '2016.03'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1582
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 550, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255435&gubun=K', 0, 135000, '진주색', 131
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K3'
  AND cs.generation_name = 'K3'
  AND cs.model_year = '2015.03'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1582
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 699, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252112&gubun=K', 0, 132701, '빨간색', 138
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K3'
  AND cs.generation_name = 'K3'
  AND cs.model_year = '15년형'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1591
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 899, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2247171&gubun=K', 0, 80438, '검정색', 127
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K3'
  AND cs.generation_name = 'K3'
  AND cs.model_year = '2015.07'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1591
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256627&gubun=K', 1, 12952, '흰색', 7
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K5'
  AND cs.generation_name = '더 뉴 K5'
  AND cs.model_year = '2025.07'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1999
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257294&gubun=K', 1, 30, '흰색', 1
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K5'
  AND cs.generation_name = '더 뉴 K5'
  AND cs.model_year = '2026.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1999
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 200, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257216&gubun=K', 1, 20, '흰색', 1
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K5'
  AND cs.generation_name = '더 뉴 K5'
  AND cs.model_year = '2026.01'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1999
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 100, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256662&gubun=K', 1, 7725, '흰색', 4
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K5'
  AND cs.generation_name = '더 뉴 K5'
  AND cs.model_year = '26년형'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 200, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2250511&gubun=K', 1, 1200, '흰색', 7
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K5'
  AND cs.generation_name = '더 뉴 K5'
  AND cs.model_year = '2025.07'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1999
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 130, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2249409&gubun=K', 1, 500, '흰색', 8
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K5'
  AND cs.generation_name = '더 뉴 K5'
  AND cs.model_year = '2025.06'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1999
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 135, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2249700&gubun=K', 1, 500, '검정색', 8
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K5'
  AND cs.generation_name = '더 뉴 K5'
  AND cs.model_year = '2025.06'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1999
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2399, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255169&gubun=K', 0, 73472, '진회색', 59
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K5'
  AND cs.generation_name = 'K5'
  AND cs.model_year = '2021.03'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1999
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2880, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256527&gubun=K', 0, 39997, '검정색', 49
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K5'
  AND cs.generation_name = 'K5'
  AND cs.model_year = '2022.01'
  AND cs.trim_name = '시그니처'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1640, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257238&gubun=K', 0, 97549, '검정색', 69
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K5'
  AND cs.generation_name = 'K5'
  AND cs.model_year = '2020.05'
  AND cs.trim_name = '시그니처'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1949, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256392&gubun=K', 0, 116829, '검정색', 74
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K5'
  AND cs.generation_name = 'K5'
  AND cs.model_year = '20년형'
  AND cs.trim_name = '시그니처'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2060, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2250702&gubun=K', 0, 79117, '흰색', 45
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K5'
  AND cs.generation_name = 'K5'
  AND cs.model_year = '2022.05'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 1999
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2060, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2250701&gubun=K', 0, 77195, '흰색', 45
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K5'
  AND cs.generation_name = 'K5'
  AND cs.model_year = '2022.05'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 1999
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2599, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256608&gubun=K', 0, 86957, '갈색', 45
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K5'
  AND cs.generation_name = 'K5'
  AND cs.model_year = '2022.05'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1999
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1390, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256637&gubun=K', 0, 103217, '흰색', 105
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K5'
  AND cs.generation_name = 'K5'
  AND cs.model_year = '18년형'
  AND cs.trim_name = 'GT'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 630, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256418&gubun=K', 0, 45893, '회색', 123
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K5'
  AND cs.generation_name = 'K5'
  AND cs.model_year = '16년형'
  AND cs.trim_name = '럭셔리'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1997
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1350, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2233569&gubun=K', 0, 110166, '흰색 (홀로그램 랩핑)', 118
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K5'
  AND cs.generation_name = 'K5'
  AND cs.model_year = '2016.04'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1685
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 890, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2248333&gubun=K', 0, 128883, '흰색', 109
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K5'
  AND cs.generation_name = 'K5'
  AND cs.model_year = '2017.01'
  AND cs.trim_name = '럭셔리'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 1999
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 990, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254754&gubun=K', 0, 91249, '검정색', 138
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K5'
  AND cs.generation_name = '더 뉴 K5'
  AND cs.model_year = '15년형'
  AND cs.trim_name = '럭셔리'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1999
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 660, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255987&gubun=K', 0, 134942, '흰색', 150
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K5'
  AND cs.generation_name = '더 뉴 K5'
  AND cs.model_year = '14년형'
  AND cs.trim_name = '럭셔리'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1999
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 490, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256881&gubun=K', 0, 190557, '검정색', 187
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K5'
  AND cs.generation_name = 'K5'
  AND cs.model_year = '11년형'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 339, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257004&gubun=K', 0, 138372, '검정색', 186
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K5'
  AND cs.generation_name = 'K5'
  AND cs.model_year = '11년형'
  AND cs.trim_name = '럭셔리'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 460, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254391&gubun=K', 0, 115906, '흰색', 172
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K5'
  AND cs.generation_name = 'K5'
  AND cs.model_year = '12년형'
  AND cs.trim_name = '럭셔리'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2080, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256570&gubun=K', 0, 52216, '진회색', 79
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K7'
  AND cs.generation_name = 'K7'
  AND cs.model_year = '20년형'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2540, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256501&gubun=K', 0, 41117, '검정색', 63
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K7'
  AND cs.generation_name = 'K7'
  AND cs.model_year = '2020.11'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2700, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256867&gubun=K', 0, 44507, '검정색', 62
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K7'
  AND cs.generation_name = 'K7'
  AND cs.model_year = '21년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2040, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2245921&gubun=K', 0, 61047, '검정색', 73
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K7'
  AND cs.generation_name = 'K7'
  AND cs.model_year = '2020.01'
  AND cs.trim_name = '시그니처'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2999
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2599, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253324&gubun=K', 0, 39914, '진회색', 76
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K7'
  AND cs.generation_name = 'K7'
  AND cs.model_year = '20년형'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 2359
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 999, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256496&gubun=K', 0, 101173, '은색', 109
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K7'
  AND cs.generation_name = '올 뉴 K7'
  AND cs.model_year = '2017.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3342
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1190, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256365&gubun=K', 0, 167000, '검정색', 83
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K7'
  AND cs.generation_name = '올 뉴 K7'
  AND cs.model_year = '2019.03'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3342
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 890, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251199&gubun=K', 0, 167394, '검정색', 120
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K7'
  AND cs.generation_name = '올 뉴 K7'
  AND cs.model_year = '2016.02'
  AND cs.trim_name = '럭셔리'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 2999
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1450, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256078&gubun=K', 0, 64000, '검정색', 104
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K7'
  AND cs.generation_name = '올 뉴 K7'
  AND cs.model_year = '2017.06'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3300
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1750, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2246892&gubun=K', 0, 112000, '검정색', 90
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K7'
  AND cs.generation_name = '올 뉴 K7'
  AND cs.model_year = '2018.08'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2359
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1600, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2246891&gubun=K', 0, 101000, '진회색', 89
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K7'
  AND cs.generation_name = '올 뉴 K7'
  AND cs.model_year = '2018.09'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2359
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1490, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2246890&gubun=K', 0, 56000, '검정색', 116
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K7'
  AND cs.generation_name = '올 뉴 K7'
  AND cs.model_year = '2016.06'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2359
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 540, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2249715&gubun=K', 0, 120274, '흰색', 135
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K7'
  AND cs.generation_name = '더 뉴 K7'
  AND cs.model_year = '15년형'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 2999
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257077&gubun=K', 0, 123703, '진회색', 130
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K7'
  AND cs.generation_name = '더 뉴 K7'
  AND cs.model_year = '2015.04'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2359
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 830, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255899&gubun=K', 0, 115600, '은색', 158
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '더'
  AND cs.generation_name = '더'
  AND cs.model_year = '13년형'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2359
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 299, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253633&gubun=K', 0, 102286, '은색', 188
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K7'
  AND cs.generation_name = 'K7'
  AND cs.model_year = '11년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2359
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 319, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255834&gubun=K', 0, 150118, '흰색', 188
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K7'
  AND cs.generation_name = 'K7'
  AND cs.model_year = '11년형'
  AND cs.trim_name = '럭셔리'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 2656
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4499, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256913&gubun=K', 0, 28586, '검정색', 54
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K9'
  AND cs.generation_name = '더 뉴 K9'
  AND cs.model_year = '22년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3778
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4900, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255979&gubun=K', 0, 75000, '흰색', 36
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K9'
  AND cs.generation_name = '더 뉴 K9'
  AND cs.model_year = '2023.02'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3778
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2799, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253390&gubun=K', 0, 126932, '갈색', 65
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '더'
  AND cs.generation_name = '더'
  AND cs.model_year = '21년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3778
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2399, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254800&gubun=K', 0, 128470, '흰색', 83
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '더'
  AND cs.generation_name = '더'
  AND cs.model_year = '2019.03'
  AND cs.trim_name = '플래티넘'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3778
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2890, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255406&gubun=K', 0, 71183, '검정색', 68
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '더'
  AND cs.generation_name = '더'
  AND cs.model_year = '21년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3778
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3450, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256655&gubun=K', 0, 32452, '검정색', 56
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '더'
  AND cs.generation_name = '더'
  AND cs.model_year = '2021.06'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3778
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2999, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256764&gubun=K', 0, 74096, '흰색', 66
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '더'
  AND cs.generation_name = '더'
  AND cs.model_year = '21년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3778
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3150, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257284&gubun=K', 0, 65514, '청색', 90
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '더'
  AND cs.generation_name = '더'
  AND cs.model_year = '19년형'
  AND cs.trim_name = '플래티넘'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3778
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3650, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255513&gubun=K', 0, 90208, '흰색', 89
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '더'
  AND cs.generation_name = '더'
  AND cs.model_year = '19년형'
  AND cs.trim_name = '플래티넘'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3778
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2750, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2235579&gubun=K', 0, 87000, '검정색', 71
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '더'
  AND cs.generation_name = '더'
  AND cs.model_year = '2020.03'
  AND cs.trim_name = '플래티넘'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3778
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 6000, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2217795&gubun=K', 0, 47000, '남색', 92
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '더'
  AND cs.generation_name = '더'
  AND cs.model_year = '19년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 5038
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 790, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257140&gubun=K', 0, 185007, '검정색', 164
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K9'
  AND cs.generation_name = 'K9'
  AND cs.model_year = '13년형'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3342
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 429, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256158&gubun=K', 0, 230962, '검정색', 164
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K9'
  AND cs.generation_name = 'K9'
  AND cs.model_year = '13년형'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3342
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 200, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252035&gubun=K', 1, 20, '흰색', 5
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '니로'
  AND cs.generation_name = '디 올 뉴 니로'
  AND cs.model_year = '26년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1580
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 300, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254370&gubun=K', 1, 25000, '청색', 23
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '니로'
  AND cs.generation_name = '디 올 뉴 니로'
  AND cs.model_year = '2024.03'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1580
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 62, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255848&gubun=K', 1, 29000, '흰색', 33
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '니로'
  AND cs.generation_name = '디 올 뉴 니로'
  AND cs.model_year = '24년형'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1580
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2250235&gubun=K', 1, 46000, '회색', 44
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '니로'
  AND cs.generation_name = '더 뉴 니로'
  AND cs.model_year = '2022.06'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1580
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 63, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252236&gubun=K', 1, 20000, '흰색', 31
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '니로'
  AND cs.generation_name = '더 뉴 니로'
  AND cs.model_year = '24년형'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1580
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1850, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256861&gubun=K', 0, 56000, '진회색', 75
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '니로'
  AND cs.generation_name = '더 뉴 니로'
  AND cs.model_year = '20년형'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1580
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254934&gubun=K', 0, 46967, '검정색', 105
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '니로'
  AND cs.generation_name = '니로'
  AND cs.model_year = '18년형'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1580
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2300, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256092&gubun=K', 0, 18000, '진회색', 56
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '니로'
  AND cs.generation_name = '니로'
  AND cs.model_year = '22년형'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '전기'
  AND cs.displacement_cc = 180
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257064&gubun=K', 1, 30, '진청색', 2
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '기아'
  AND cs.generation_name = '더 뉴 기아'
  AND cs.model_year = '26년형'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257297&gubun=K', 1, 30, '흰색투톤', 1
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '기아'
  AND cs.generation_name = '더 뉴 기아'
  AND cs.model_year = '2026.01'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1190, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256935&gubun=K', 0, 31000, '회색', 28
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '기아'
  AND cs.generation_name = '더 뉴 기아'
  AND cs.model_year = '2023.10'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1710, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256477&gubun=K', 0, 22, '진회색', 1
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '기아'
  AND cs.generation_name = '더 뉴 기아'
  AND cs.model_year = '2026.01'
  AND cs.trim_name = '스탠다드'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255803&gubun=K', 0, 12152, '흰색', 23
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '기아'
  AND cs.generation_name = '더 뉴 기아'
  AND cs.model_year = '2024.03'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1890, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252760&gubun=K', 0, 10600, '흰색', 21
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '기아'
  AND cs.generation_name = '더 뉴 기아'
  AND cs.model_year = '2024.05'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 10, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257016&gubun=K', 1, 6020, '진청색', 4
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '기아'
  AND cs.generation_name = '더 뉴 기아'
  AND cs.model_year = '26년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '전기'
  AND cs.displacement_cc = 134
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 730, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2250963&gubun=K', 0, 75387, '은색', 80
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '레이'
  AND cs.generation_name = '더 뉴 레이'
  AND cs.model_year = '2019.06'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 570, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2230899&gubun=K', 0, 127000, '흰색', 87
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '레이'
  AND cs.generation_name = '더 뉴 레이'
  AND cs.model_year = '2018.11'
  AND cs.trim_name = '럭셔리'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 800, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254053&gubun=K', 0, 84175, '흰색', 59
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '레이'
  AND cs.generation_name = '더 뉴 레이'
  AND cs.model_year = '2021.03'
  AND cs.trim_name = '스탠다드'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 150, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257213&gubun=K', 1, 20, '흰색', 2
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '레이'
  AND cs.generation_name = '더 뉴 레이'
  AND cs.model_year = '26년형'
  AND cs.trim_name = '시그니처'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 36, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257341&gubun=K', 1, 10000, '검정색', 14
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '레이'
  AND cs.generation_name = '더 뉴 레이'
  AND cs.model_year = '25년형'
  AND cs.trim_name = '시그니처'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 34, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257347&gubun=K', 1, 5000, '검정색', 5
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '레이'
  AND cs.generation_name = '더 뉴 레이'
  AND cs.model_year = '26년형'
  AND cs.trim_name = '시그니처'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1680, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251830&gubun=K', 0, 83826, '은색', 82
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '레이'
  AND cs.generation_name = '더 뉴 레이'
  AND cs.model_year = '2019.04'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 890, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253720&gubun=K', 0, 103719, '흰색', 87
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '레이'
  AND cs.generation_name = '더 뉴 레이'
  AND cs.model_year = '2018.11'
  AND cs.trim_name = '럭셔리'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 690, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252795&gubun=K', 0, 102701, '흰색', 166
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '레이'
  AND cs.generation_name = '레이'
  AND cs.model_year = '2012.04'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 440, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255752&gubun=K', 0, 149229, '연두색', 142
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '레이'
  AND cs.generation_name = '레이'
  AND cs.model_year = '2014.04'
  AND cs.trim_name = '럭셔리'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 480, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254863&gubun=K', 0, 150000, '흰색', 121
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '레이'
  AND cs.generation_name = '레이'
  AND cs.model_year = '2016.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 599, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254358&gubun=K', 0, 120169, '베이지색', 126
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '레이'
  AND cs.generation_name = '레이'
  AND cs.model_year = '16년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 9800, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257357&gubun=K', 0, 567379, '기타색상 (화이트펄)', 179
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '그랜버드'
  AND cs.generation_name = '뉴 그랜버드'
  AND cs.model_year = '2011.03'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 12742
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1950, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2248065&gubun=K', 0, 670892, '파란색', 163
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '그랜버드'
  AND cs.generation_name = '그랜버드'
  AND cs.model_year = '2012.07'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 12742
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 170, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256110&gubun=K', 0, 280000, '은색', 210
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '로체'
  AND cs.generation_name = '로체'
  AND cs.model_year = '09년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257292&gubun=K', 1, 30, '흰색', 1
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '모닝'
  AND cs.generation_name = '모닝'
  AND cs.model_year = '2026.01'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 100, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2246082&gubun=K', 1, 20, '흰색', 11
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '모닝'
  AND cs.generation_name = '모닝'
  AND cs.model_year = '2025.03'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 969, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255544&gubun=K', 0, 47050, '진주색', 85
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '모닝'
  AND cs.generation_name = '올 뉴 모닝'
  AND cs.model_year = '2019.01'
  AND cs.trim_name = '럭셔리'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 550, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257349&gubun=K', 0, 143000, '흰색', 86
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '모닝'
  AND cs.generation_name = '올 뉴 모닝'
  AND cs.model_year = '2018.12'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 750, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256276&gubun=K', 0, 38627, '흰색', 103
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '모닝'
  AND cs.generation_name = '올 뉴 모닝'
  AND cs.model_year = '2017.07'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 680, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2249698&gubun=K', 0, 68444, '검정색', 105
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '모닝'
  AND cs.generation_name = '올 뉴 모닝'
  AND cs.model_year = '2017.05'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 998
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 550, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2246956&gubun=K', 0, 93674, '베이지색', 135
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '모닝'
  AND cs.generation_name = '올 뉴 모닝'
  AND cs.model_year = '15년형'
  AND cs.trim_name = '럭셔리'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 560, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2250265&gubun=K', 0, 67000, '베이지색', 115
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '모닝'
  AND cs.generation_name = '더 뉴 모닝'
  AND cs.model_year = '2016.07'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 330, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257060&gubun=K', 0, 119824, '빨간색', 166
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '모닝'
  AND cs.generation_name = '올 뉴 모닝'
  AND cs.model_year = '2012.04'
  AND cs.trim_name = '럭셔리'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 400, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2248735&gubun=K', 0, 76467, '베이지색', 148
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '모닝'
  AND cs.generation_name = '올 뉴 모닝'
  AND cs.model_year = '14년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 190, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257346&gubun=K', 0, 155598, '검정색', 195
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '뉴모닝'
  AND cs.generation_name = '뉴모닝'
  AND cs.model_year = '10년형'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 999
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 220, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257338&gubun=K', 0, 101616, '빨간색', 188
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '뉴모닝'
  AND cs.generation_name = '뉴모닝'
  AND cs.model_year = '11년형'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 999
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 155, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257375&gubun=K', 0, 124000, '빨간색', 220
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '모닝'
  AND cs.generation_name = '모닝'
  AND cs.model_year = '08년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 999
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1990, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257214&gubun=K', 0, 95717, '흰색', 39
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '봉고3'
  AND cs.generation_name = '더 뉴 봉고3'
  AND cs.model_year = '2022.11'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 100, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2245550&gubun=K', 1, 11000, '흰색', 16
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '봉고3'
  AND cs.generation_name = '더 뉴 봉고3'
  AND cs.model_year = '25년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 2469
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1970, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257362&gubun=K', 0, 82938, '흰색', 21
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '봉고3'
  AND cs.generation_name = '더 뉴 봉고3'
  AND cs.model_year = '2024.05'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 2469
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1270, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253550&gubun=K', 0, 49503, '흰색', 85
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '봉고3'
  AND cs.generation_name = '더 뉴 봉고3'
  AND cs.model_year = '2019.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1210, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254576&gubun=K', 0, 137827, '흰색', 75
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '봉고3'
  AND cs.generation_name = '더 뉴 봉고3'
  AND cs.model_year = '20년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1950, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256856&gubun=K', 0, 85000, '청색', 48
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '봉고3'
  AND cs.generation_name = '더 뉴 봉고3'
  AND cs.model_year = '2022.02'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 60, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254316&gubun=K', 0, 14300, '흰색', 8
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '봉고3'
  AND cs.generation_name = '더 뉴 봉고3'
  AND cs.model_year = '2025.06'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 2469
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1100, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2250018&gubun=K', 0, 66000, '흰색', 67
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '봉고3'
  AND cs.generation_name = '더 뉴 봉고3'
  AND cs.model_year = '2020.07'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 2359
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1060, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2248985&gubun=K', 0, 88000, '청색', 68
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '봉고3'
  AND cs.generation_name = '더 뉴 봉고3'
  AND cs.model_year = '2020.06'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 2359
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2400, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256067&gubun=K', 0, 13359, '흰색', 46
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '봉고3'
  AND cs.generation_name = '봉고3'
  AND cs.model_year = '2022.04'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 970, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255279&gubun=K', 0, 225571, '진회색', 263
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '봉고3'
  AND cs.generation_name = '봉고3'
  AND cs.model_year = '2004.03'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2902
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 970, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254657&gubun=K', 0, 145000, '검정색', 170
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '봉고3'
  AND cs.generation_name = '봉고3'
  AND cs.model_year = '12년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2902
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 699, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257186&gubun=K', 0, 52000, '노란색', 172
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '봉고3'
  AND cs.generation_name = '봉고3'
  AND cs.model_year = '12년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2902
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 380, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256466&gubun=K', 0, 119816, '흰색', 212
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '봉고3'
  AND cs.generation_name = '봉고3'
  AND cs.model_year = '2008.06'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1050, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255772&gubun=K', 0, 87026, '흰색', 110
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '봉고3'
  AND cs.generation_name = '봉고3'
  AND cs.model_year = '17년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2490, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2241514&gubun=K', 0, 28000, '흰색', 80
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '봉고3'
  AND cs.generation_name = '봉고3'
  AND cs.model_year = '2019.06'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 720, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255846&gubun=K', 0, 134696, '흰색', 127
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '봉고3'
  AND cs.generation_name = '봉고3'
  AND cs.model_year = '16년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1549, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252774&gubun=K', 0, 43026, '흰색투톤', 124
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '봉고3'
  AND cs.generation_name = '봉고3'
  AND cs.model_year = '16년형'
  AND cs.trim_name = '럭셔리'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 660, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252202&gubun=K', 0, 190000, '청색', 131
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '봉고3'
  AND cs.generation_name = '봉고3'
  AND cs.model_year = '2015.03'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 699, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253250&gubun=K', 0, 182000, '청색', 130
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '봉고3'
  AND cs.generation_name = '봉고3'
  AND cs.model_year = '2015.04'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 550, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253251&gubun=K', 0, 283000, '청색', 143
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '봉고3'
  AND cs.generation_name = '봉고3'
  AND cs.model_year = '2014.03'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 850, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254282&gubun=K', 0, 182151, '흰색', 117
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '봉고3'
  AND cs.generation_name = '봉고3'
  AND cs.model_year = '2016.05'
  AND cs.trim_name = '럭셔리'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1499, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254556&gubun=K', 0, 63500, '흰색', 104
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '봉고3'
  AND cs.generation_name = '봉고3'
  AND cs.model_year = '18년형'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 550, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255338&gubun=K', 0, 211374, '흰색', 160
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '봉고3'
  AND cs.generation_name = '봉고3'
  AND cs.model_year = '13년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1399, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255312&gubun=K', 0, 139865, '청색', 94
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '봉고3'
  AND cs.generation_name = '봉고3'
  AND cs.model_year = '19년형'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1180, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256512&gubun=K', 0, 188000, '청색', 94
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '봉고3'
  AND cs.generation_name = '봉고3'
  AND cs.model_year = '19년형'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 599, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256833&gubun=K', 0, 198000, '흰색', 160
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '봉고3'
  AND cs.generation_name = '봉고3'
  AND cs.model_year = '13년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 499, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257069&gubun=K', 0, 258000, '청색', 166
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '봉고3'
  AND cs.generation_name = '봉고3'
  AND cs.model_year = '2012.04'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 899, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257070&gubun=K', 0, 191000, '흰색', 119
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '봉고3'
  AND cs.generation_name = '봉고3'
  AND cs.model_year = '2016.03'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 799, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257330&gubun=K', 0, 175000, '흰색', 122
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '봉고3'
  AND cs.generation_name = '봉고3'
  AND cs.model_year = '16년형'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2599, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2250034&gubun=K', 0, 132993, '검정색', 68
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '모하비'
  AND cs.generation_name = '모하비'
  AND cs.model_year = '21년형'
  AND cs.trim_name = '플래티넘'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2959
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3499, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254453&gubun=K', 0, 50316, '검정색', 76
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '모하비'
  AND cs.generation_name = '모하비'
  AND cs.model_year = '20년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2959
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3399, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255784&gubun=K', 0, 54936, '흰색', 75
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '모하비'
  AND cs.generation_name = '모하비'
  AND cs.model_year = '20년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2959
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3170, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257133&gubun=K', 0, 83723, '검정색', 74
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '모하비'
  AND cs.generation_name = '모하비'
  AND cs.model_year = '20년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2959
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3830, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256500&gubun=K', 0, 52900, '흰색', 54
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '모하비'
  AND cs.generation_name = '모하비'
  AND cs.model_year = '2021.08'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2959
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3680, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256654&gubun=K', 0, 46706, '흰색', 68
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '모하비'
  AND cs.generation_name = '모하비'
  AND cs.model_year = '21년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2959
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3790, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256957&gubun=K', 0, 34828, '검정색', 76
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '모하비'
  AND cs.generation_name = '모하비'
  AND cs.model_year = '20년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2959
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3670, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257048&gubun=K', 0, 51905, '흰색', 72
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '모하비'
  AND cs.generation_name = '모하비'
  AND cs.model_year = '2020.02'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2959
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4590, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254634&gubun=K', 0, 31637, '검정색', 41
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '모하비'
  AND cs.generation_name = '모하비'
  AND cs.model_year = '2022.09'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2959
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4390, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255157&gubun=K', 0, 40505, '흰색', 41
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '모하비'
  AND cs.generation_name = '모하비'
  AND cs.model_year = '2022.09'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2959
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3200, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256618&gubun=K', 0, 72815, '검정색', 61
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '모하비'
  AND cs.generation_name = '모하비'
  AND cs.model_year = '2021.01'
  AND cs.trim_name = '플래티넘'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2959
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4190, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251676&gubun=K', 0, 44006, '흰색', 46
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '모하비'
  AND cs.generation_name = '모하비'
  AND cs.model_year = '2022.04'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2959
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3200, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2237159&gubun=K', 0, 121000, '기타색상', 75
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '모하비'
  AND cs.generation_name = '모하비'
  AND cs.model_year = '20년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2959
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2799, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254237&gubun=K', 0, 46445, '흰색', 79
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '모하비'
  AND cs.generation_name = '더 뉴 모하비'
  AND cs.model_year = '2019.07'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2959
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2470, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256277&gubun=K', 0, 63231, '검정색', 96
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '모하비'
  AND cs.generation_name = '더 뉴 모하비'
  AND cs.model_year = '2018.02'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2959
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 990, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2247882&gubun=K', 0, 233372, '진회색', 104
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '모하비'
  AND cs.generation_name = '더 뉴 모하비'
  AND cs.model_year = '18년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2959
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 720, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256434&gubun=K', 0, 179750, '회색', 197
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '모하비'
  AND cs.generation_name = '모하비'
  AND cs.model_year = '2009.09'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3778
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 390, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256470&gubun=K', 0, 296811, '회색', 212
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '모하비'
  AND cs.generation_name = '모하비'
  AND cs.model_year = '2008.06'
  AND cs.trim_name = '에센스'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2959
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 690, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257109&gubun=K', 0, 263590, '흰색', 163
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '모하비'
  AND cs.generation_name = '모하비'
  AND cs.model_year = '2012.07'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2959
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 250, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254759&gubun=K', 1, 50, '흰색', 6
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '스포티지'
  AND cs.generation_name = '더 뉴 스포티지'
  AND cs.model_year = '2025.08'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 51, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256999&gubun=K', 1, 9000, '흰색', 13
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '스포티지'
  AND cs.generation_name = '더 뉴 스포티지'
  AND cs.model_year = '2025.01'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 300, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253602&gubun=K', 1, 1350, '흰색', 4
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '스포티지'
  AND cs.generation_name = '더 뉴 스포티지'
  AND cs.model_year = '26년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3599, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255390&gubun=K', 0, 6320, '진회색', 13
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '스포티지'
  AND cs.generation_name = '더 뉴 스포티지'
  AND cs.model_year = '2025.01'
  AND cs.trim_name = '시그니처'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 250, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254761&gubun=K', 1, 100, '흰색', 4
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '스포티지'
  AND cs.generation_name = '더 뉴 스포티지'
  AND cs.model_year = '26년형'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 250, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2226867&gubun=K', 1, 48000, '흰색', 39
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '스포티지'
  AND cs.generation_name = '디 올 뉴 스포티지'
  AND cs.model_year = '23년형'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 250, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2231030&gubun=K', 1, 6800, '흰색', 31
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '스포티지'
  AND cs.generation_name = '디 올 뉴 스포티지'
  AND cs.model_year = '2023.07'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2990, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257144&gubun=K', 0, 39423, '흰색', 36
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '스포티지'
  AND cs.generation_name = '디 올 뉴 스포티지'
  AND cs.model_year = '2023.02'
  AND cs.trim_name = '시그니처'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2690, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257170&gubun=K', 0, 65205, '회색', 53
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '스포티지'
  AND cs.generation_name = '디 올 뉴 스포티지'
  AND cs.model_year = '22년형'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3600, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2247311&gubun=K', 1, 28000, '진회색 (그래비티 그레이)', 37
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '스포티지'
  AND cs.generation_name = '디 올 뉴 스포티지'
  AND cs.model_year = '2023.01'
  AND cs.trim_name = '시그니처'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 1999
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 250, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2226862&gubun=K', 1, 12000, '진청색', 33
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '스포티지'
  AND cs.generation_name = '디 올 뉴 스포티지'
  AND cs.model_year = '2023.05'
  AND cs.trim_name = '시그니처'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 70, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251436&gubun=K', 1, 40000, '진회색', 31
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '스포티지'
  AND cs.generation_name = '디 올 뉴 스포티지'
  AND cs.model_year = '2023.07'
  AND cs.trim_name = '시그니처'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1890, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256202&gubun=K', 0, 93028, '빨간색', 88
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '스포티지'
  AND cs.generation_name = '스포티지'
  AND cs.model_year = '19년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1999
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1590, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2247471&gubun=K', 0, 115087, '흰색', 59
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '스포티지'
  AND cs.generation_name = '스포티지'
  AND cs.model_year = '22년형'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1438, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256120&gubun=K', 0, 79285, '진회색', 100
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '스포티지'
  AND cs.generation_name = '스포티지'
  AND cs.model_year = '18년형'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1999
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 690, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2248639&gubun=K', 0, 181557, '청색', 141
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '스포티지R'
  AND cs.generation_name = '더 뉴 스포티지R'
  AND cs.model_year = '2014.05'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1995
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 650, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252365&gubun=K', 0, 184773, '검정색', 142
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '스포티지R'
  AND cs.generation_name = '더 뉴 스포티지R'
  AND cs.model_year = '2014.04'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1995
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 750, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257233&gubun=K', 0, 103217, '흰색', 181
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '스포티지R'
  AND cs.generation_name = '스포티지R'
  AND cs.model_year = '2011.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 790, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254885&gubun=K', 0, 240000, '흰색', 170
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '스포티지R'
  AND cs.generation_name = '스포티지R'
  AND cs.model_year = '12년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1995
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2480, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253318&gubun=K', 0, 105708, '기타색상', 59
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '스팅어'
  AND cs.generation_name = '스팅어'
  AND cs.model_year = '2021.03'
  AND cs.trim_name = '플래티넘'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1790, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256170&gubun=K', 0, 143880, '빨간색 (화이트랩핑)', 103
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '스팅어'
  AND cs.generation_name = '스팅어'
  AND cs.model_year = '18년형'
  AND cs.trim_name = 'GT'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3342
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2720, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256215&gubun=K', 0, 85000, '흰색', 103
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '스팅어'
  AND cs.generation_name = '스팅어'
  AND cs.model_year = '18년형'
  AND cs.trim_name = 'GT'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3342
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 350, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2248217&gubun=K', 1, 20, '흰색', 9
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '쏘렌토'
  AND cs.generation_name = '더 뉴 쏘렌토'
  AND cs.model_year = '2025.05'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 350, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2242280&gubun=K', 1, 20, '흰색', 13
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '쏘렌토'
  AND cs.generation_name = '더 뉴 쏘렌토'
  AND cs.model_year = '2025.01'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2151
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 350, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256656&gubun=K', 1, 23000, '검정색', 14
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '쏘렌토'
  AND cs.generation_name = '더 뉴 쏘렌토'
  AND cs.model_year = '25년형'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4390, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257384&gubun=K', 0, 14563, '흰색', 24
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '쏘렌토'
  AND cs.generation_name = '더 뉴 쏘렌토'
  AND cs.model_year = '2024.02'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 200, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251893&gubun=K', 1, 15000, '흰색', 22
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '쏘렌토'
  AND cs.generation_name = '더 뉴 쏘렌토'
  AND cs.model_year = '2024.04'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 400, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256322&gubun=K', 1, 5000, '흰색', 7
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '쏘렌토'
  AND cs.generation_name = '더 뉴 쏘렌토'
  AND cs.model_year = '2025.07'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3650, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251870&gubun=K', 0, 65563, '흰색', 24
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '쏘렌토'
  AND cs.generation_name = '더 뉴 쏘렌토'
  AND cs.model_year = '2024.02'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 6400, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2248675&gubun=K', 0, 592, '검정색', 14
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '쏘렌토'
  AND cs.generation_name = '더 뉴 쏘렌토'
  AND cs.model_year = '2025.00'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3390, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253137&gubun=K', 0, 31394, '검정색', 36
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '쏘렌토'
  AND cs.generation_name = '쏘렌토'
  AND cs.model_year = '2023.02'
  AND cs.trim_name = '시그니처'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2151
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3490, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255764&gubun=K', 0, 64779, '진회색', 36
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '쏘렌토'
  AND cs.generation_name = '쏘렌토'
  AND cs.model_year = '2023.02'
  AND cs.trim_name = '시그니처'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2151
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3550, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256180&gubun=K', 0, 47221, '흰색', 56
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '쏘렌토'
  AND cs.generation_name = '쏘렌토'
  AND cs.model_year = '2021.06'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2151
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 300, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2247320&gubun=K', 1, 1580, '흰색', 9
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '쏘렌토'
  AND cs.generation_name = '쏘렌토'
  AND cs.model_year = '2025.05'
  AND cs.trim_name = '시그니처'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 300, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2226846&gubun=K', 1, 1500, '검정색', 23
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '쏘렌토'
  AND cs.generation_name = '쏘렌토'
  AND cs.model_year = '2024.03'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 250, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2228580&gubun=K', 1, 2700, '흰색', 21
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '쏘렌토'
  AND cs.generation_name = '쏘렌토'
  AND cs.model_year = '2024.05'
  AND cs.trim_name = '시그니처'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 250, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2229617&gubun=K', 1, 3500, '흰색', 21
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '쏘렌토'
  AND cs.generation_name = '쏘렌토'
  AND cs.model_year = '2024.05'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 250, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2242915&gubun=K', 1, 2000, '흰색', 12
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '쏘렌토'
  AND cs.generation_name = '쏘렌토'
  AND cs.model_year = '2025.02'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 200, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251077&gubun=K', 1, 1800, '흰색', 7
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '쏘렌토'
  AND cs.generation_name = '쏘렌토'
  AND cs.model_year = '26년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 200, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255808&gubun=K', 1, 1600, '검정색', 2
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '쏘렌토'
  AND cs.generation_name = '쏘렌토'
  AND cs.model_year = '26년형'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3900, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256613&gubun=K', 0, 33450, '흰색', 43
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '쏘렌토'
  AND cs.generation_name = '쏘렌토'
  AND cs.model_year = '2022.07'
  AND cs.trim_name = '시그니처'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3690, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256485&gubun=K', 0, 43604, '진회색', 40
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '쏘렌토'
  AND cs.generation_name = '쏘렌토'
  AND cs.model_year = '23년형'
  AND cs.trim_name = '시그니처'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3690, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257281&gubun=K', 0, 38312, '흰색', 45
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '쏘렌토'
  AND cs.generation_name = '쏘렌토'
  AND cs.model_year = '2022.05'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 250, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252584&gubun=K', 1, 15000, '흰색', 16
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '쏘렌토'
  AND cs.generation_name = '쏘렌토'
  AND cs.model_year = '25년형'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4050, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256183&gubun=K', 0, 37680, '흰색', 37
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '쏘렌토'
  AND cs.generation_name = '쏘렌토'
  AND cs.model_year = '2023.01'
  AND cs.trim_name = '시그니처'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3490, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257240&gubun=K', 0, 73500, '흰색', 39
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '쏘렌토'
  AND cs.generation_name = '쏘렌토'
  AND cs.model_year = '23년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 50, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256444&gubun=K', 1, 5990, '흰색', 9
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '쏘렌토'
  AND cs.generation_name = '쏘렌토'
  AND cs.model_year = '2025.05'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3700, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257030&gubun=K', 0, 57000, '흰색', 32
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '쏘렌토'
  AND cs.generation_name = '쏘렌토'
  AND cs.model_year = '2023.06'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4200, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256157&gubun=K', 0, 58000, '흰색', 25
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '쏘렌토'
  AND cs.generation_name = '쏘렌토'
  AND cs.model_year = '2024.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 250, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254308&gubun=K', 1, 5230, '흰색', 12
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '쏘렌토'
  AND cs.generation_name = '쏘렌토'
  AND cs.model_year = '2025.02'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2450, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251463&gubun=K', 0, 103466, '흰색', 47
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '쏘렌토'
  AND cs.generation_name = '쏘렌토'
  AND cs.model_year = '2022.03'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2180, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257165&gubun=K', 0, 98188, '청색', 91
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '쏘렌토'
  AND cs.generation_name = '더 뉴 쏘렌토'
  AND cs.model_year = '19년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255185&gubun=K', 0, 54170, '진주색', 74
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '쏘렌토'
  AND cs.generation_name = '더 뉴 쏘렌토'
  AND cs.model_year = '20년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1995
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1780, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2248990&gubun=K', 0, 70000, '흰색', 102
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '쏘렌토'
  AND cs.generation_name = '더 뉴 쏘렌토'
  AND cs.model_year = '18년형'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2248325&gubun=K', 0, 92991, '검정색', 94
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '쏘렌토'
  AND cs.generation_name = '더 뉴 쏘렌토'
  AND cs.model_year = '2018.04'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1690, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256314&gubun=K', 0, 151516, '흰색', 122
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '쏘렌토'
  AND cs.generation_name = '올 뉴 쏘렌토'
  AND cs.model_year = '16년형'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1170, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256859&gubun=K', 0, 137000, '기타색상', 123
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '쏘렌토'
  AND cs.generation_name = '올 뉴 쏘렌토'
  AND cs.model_year = '16년형'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1995
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1200, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256672&gubun=K', 0, 150000, '검정색', 122
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '쏘렌토'
  AND cs.generation_name = '올 뉴 쏘렌토'
  AND cs.model_year = '16년형'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1995
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1000, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256327&gubun=K', 0, 145000, '흰색', 137
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '쏘렌토'
  AND cs.generation_name = '올 뉴 쏘렌토'
  AND cs.model_year = '15년형'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1995
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1380, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252626&gubun=K', 0, 96000, '기타색상', 117
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '쏘렌토'
  AND cs.generation_name = '올 뉴 쏘렌토'
  AND cs.model_year = '2016.05'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1995
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252591&gubun=K', 0, 132353, '흰색', 122
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '쏘렌토'
  AND cs.generation_name = '올 뉴 쏘렌토'
  AND cs.model_year = '16년형'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1995
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1290, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251360&gubun=K', 0, 135186, '검정색', 110
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '쏘렌토'
  AND cs.generation_name = '올 뉴 쏘렌토'
  AND cs.model_year = '17년형'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1995
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 599, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256600&gubun=K', 0, 112125, '은색', 157
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '쏘렌토R'
  AND cs.generation_name = '뉴 쏘렌토R'
  AND cs.model_year = '2013.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1995
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 750, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257249&gubun=K', 0, 80000, '흰색', 171
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '쏘렌토R'
  AND cs.generation_name = '쏘렌토R'
  AND cs.model_year = '12년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1995
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 520, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2247131&gubun=K', 0, 159416, '은색', 199
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '쏘렌토R'
  AND cs.generation_name = '쏘렌토R'
  AND cs.model_year = '10년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 2656
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 300, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256348&gubun=K', 0, 167120, '은색', 191
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '쏘울'
  AND cs.generation_name = '쏘울'
  AND cs.model_year = '2010.03'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1591
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 460, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254572&gubun=K', 0, 100419, '진주색', 208
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '쏘울'
  AND cs.generation_name = '쏘울'
  AND cs.model_year = '09년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1591
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 399, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256299&gubun=K', 0, 137237, '청색', 188
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '쏘울'
  AND cs.generation_name = '쏘울'
  AND cs.model_year = '2010.06'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1591
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 150, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257095&gubun=K', 0, 130000, '기타색상', 340
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '엔터프라이즈'
  AND cs.generation_name = '엔터프라이즈'
  AND cs.model_year = '1997.10'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2945
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 250, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2247008&gubun=K', 1, 1850, '흰색', 10
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '더 뉴 카니발'
  AND cs.model_year = '2025.04'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 300, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2246848&gubun=K', 1, 15000, '진회색', 20
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '더 뉴 카니발'
  AND cs.model_year = '25년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 250, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2226850&gubun=K', 1, 2800, '진회색', 22
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '더 뉴 카니발'
  AND cs.model_year = '2024.04'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 250, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2232280&gubun=K', 1, 2500, '검정색', 19
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '더 뉴 카니발'
  AND cs.model_year = '25년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 300, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2234199&gubun=K', 1, 11887, '흰색', 25
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '더 뉴 카니발'
  AND cs.model_year = '2024.01'
  AND cs.trim_name = '시그니처'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2234348&gubun=K', 1, 466, '흰색', 18
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '더 뉴 카니발'
  AND cs.model_year = '2024.08'
  AND cs.trim_name = '시그니처'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 250, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2238659&gubun=K', 1, 3650, '검정색', 18
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '더 뉴 카니발'
  AND cs.model_year = '25년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 200, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251073&gubun=K', 1, 1800, '검정색', 6
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '더 뉴 카니발'
  AND cs.model_year = '2025.08'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 200, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252916&gubun=K', 1, 1850, '검정색', 5
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '더 뉴 카니발'
  AND cs.model_year = '26년형'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 200, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252969&gubun=K', 1, 1750, '은색', 5
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '더 뉴 카니발'
  AND cs.model_year = '26년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 300, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255810&gubun=K', 1, 6000, '은색', 11
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '더 뉴 카니발'
  AND cs.model_year = '2025.03'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 9999, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254351&gubun=K', 0, 14850, '회색', 24
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '더 뉴 카니발'
  AND cs.model_year = '2024.02'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 150, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2247736&gubun=K', 1, 1000, '진회색', 10
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '더 뉴 카니발'
  AND cs.model_year = '2025.04'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 550, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2247734&gubun=K', 1, 1700, '검정색', 11
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '더 뉴 카니발'
  AND cs.model_year = '2025.03'
  AND cs.trim_name = '시그니처'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 450, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2247729&gubun=K', 1, 1600, '흰색', 10
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '더 뉴 카니발'
  AND cs.model_year = '2025.04'
  AND cs.trim_name = '시그니처'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 170, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2249878&gubun=K', 1, 850, '흰색', 8
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '더 뉴 카니발'
  AND cs.model_year = '2025.06'
  AND cs.trim_name = '시그니처'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 160, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251393&gubun=K', 1, 970, '진회색', 7
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '더 뉴 카니발'
  AND cs.model_year = '2025.07'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 150, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251394&gubun=K', 1, 1000, '진회색', 6
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '더 뉴 카니발'
  AND cs.model_year = '2025.08'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 180, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251395&gubun=K', 1, 1400, '검정색', 7
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '더 뉴 카니발'
  AND cs.model_year = '2025.07'
  AND cs.trim_name = '시그니처'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 170, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251982&gubun=K', 1, 1300, '흰색', 6
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '더 뉴 카니발'
  AND cs.model_year = '26년형'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 250, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2227209&gubun=K', 1, 2550, '흰색', 22
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '카니발'
  AND cs.model_year = '2024.04'
  AND cs.trim_name = '시그니처'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 500, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2227749&gubun=K', 1, 2500, '검정색', 21
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '카니발'
  AND cs.model_year = '2024.05'
  AND cs.trim_name = '시그니처'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 300, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2234191&gubun=K', 1, 2500, '검정색', 18
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '카니발'
  AND cs.model_year = '25년형'
  AND cs.trim_name = '시그니처'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 300, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2234286&gubun=K', 1, 2450, '회색', 22
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '카니발'
  AND cs.model_year = '2024.04'
  AND cs.trim_name = '시그니처'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 150, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2239422&gubun=K', 1, 1500, '흰색', 15
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '카니발'
  AND cs.model_year = '25년형'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 200, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2249938&gubun=K', 1, 12900, '흰색', 22
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '카니발'
  AND cs.model_year = '2024.04'
  AND cs.trim_name = '시그니처'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 2151
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 300, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252108&gubun=K', 1, 13511, '검정색', 16
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '카니발'
  AND cs.model_year = '25년형'
  AND cs.trim_name = '시그니처'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2151
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 200, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252914&gubun=K', 1, 1850, '검정색', 5
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '카니발'
  AND cs.model_year = '26년형'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 5500, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2245945&gubun=K', 0, 42186, '검정색', 28
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '카니발'
  AND cs.model_year = '2023.10'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린/LPG겸용'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4190, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253871&gubun=K', 0, 33786, '검정색', 42
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '카니발'
  AND cs.model_year = '23년형'
  AND cs.trim_name = '시그니처'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4330, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254162&gubun=K', 0, 31201, '흰색', 40
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '카니발'
  AND cs.model_year = '23년형'
  AND cs.trim_name = '시그니처'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4290, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254428&gubun=K', 0, 29191, '흰색', 32
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '카니발'
  AND cs.model_year = '2023.06'
  AND cs.trim_name = '시그니처'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4099, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254505&gubun=K', 0, 25442, '흰색', 53
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '카니발'
  AND cs.model_year = '22년형'
  AND cs.trim_name = '시그니처'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4190, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254537&gubun=K', 0, 37712, '검정색', 49
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '카니발'
  AND cs.model_year = '2022.01'
  AND cs.trim_name = '시그니처'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4180, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254720&gubun=K', 0, 31100, '검정색', 44
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '카니발'
  AND cs.model_year = '23년형'
  AND cs.trim_name = '시그니처'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4899, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255862&gubun=K', 0, 866, '흰색', 24
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '카니발'
  AND cs.model_year = '23년형'
  AND cs.trim_name = '시그니처'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4350, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255180&gubun=K', 0, 43191, '흰색', 33
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '카니발'
  AND cs.model_year = '2023.05'
  AND cs.trim_name = '시그니처'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3999, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255371&gubun=K', 0, 55829, '검정색', 44
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '카니발'
  AND cs.model_year = '23년형'
  AND cs.trim_name = '시그니처'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3770, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256100&gubun=K', 0, 47485, '흰색', 57
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '카니발'
  AND cs.model_year = '2021.05'
  AND cs.trim_name = '시그니처'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4990, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256390&gubun=K', 0, 44724, '검정색', 35
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '카니발'
  AND cs.model_year = '2023.03'
  AND cs.trim_name = '시그니처'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2151
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2600, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255216&gubun=K', 0, 58774, '검정색', 81
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '더 뉴 카니발'
  AND cs.model_year = '2019.05'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3342
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3070, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256149&gubun=K', 0, 36092, '검정색', 79
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '더 뉴 카니발'
  AND cs.model_year = '2019.07'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3130, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256150&gubun=K', 0, 24591, '흰색', 68
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '더 뉴 카니발'
  AND cs.model_year = '2020.06'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2830, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256610&gubun=K', 0, 58322, '검정색', 77
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '더 뉴 카니발'
  AND cs.model_year = '2019.09'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3070, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256997&gubun=K', 0, 39684, '검정색', 92
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '더 뉴 카니발'
  AND cs.model_year = '19년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3342
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2290, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257392&gubun=K', 0, 34607, '검정색', 89
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '더 뉴 카니발'
  AND cs.model_year = '19년형'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3342
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2730, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257382&gubun=K', 0, 69926, '검정색', 78
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '더 뉴 카니발'
  AND cs.model_year = '2019.08'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2350, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255981&gubun=K', 0, 119000, '검정색', 78
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '더 뉴 카니발'
  AND cs.model_year = '2019.08'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3342
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2990, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2247938&gubun=K', 0, 69000, '검정색', 81
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '더 뉴 카니발'
  AND cs.model_year = '2019.05'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3342
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2590, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2240486&gubun=K', 0, 121000, '검정색', 76
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '더 뉴 카니발'
  AND cs.model_year = '2019.10'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3342
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1750, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2246567&gubun=K', 0, 95000, '은색', 84
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '더 뉴 카니발'
  AND cs.model_year = '2019.02'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2130, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251252&gubun=K', 0, 101244, '흰색', 114
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '올 뉴 카니발'
  AND cs.model_year = '17년형'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3342
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1150, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257356&gubun=K', 0, 113234, '흰색', 139
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '올 뉴 카니발'
  AND cs.model_year = '15년형'
  AND cs.trim_name = '럭셔리'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1090, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257223&gubun=K', 0, 119000, '흰색', 109
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '올 뉴 카니발'
  AND cs.model_year = '2017.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1340, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256504&gubun=K', 0, 168069, '검정색', 90
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '올 뉴 카니발'
  AND cs.model_year = '19년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1970, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257163&gubun=K', 0, 84874, '흰색', 100
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '올 뉴 카니발'
  AND cs.model_year = '18년형'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3342
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1560, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2249431&gubun=K', 0, 91758, '자주색', 101
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '올 뉴 카니발'
  AND cs.model_year = '18년형'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3690, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256905&gubun=K', 0, 49800, '기타색상', 50
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '올 뉴 카니발'
  AND cs.model_year = '22년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2151
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 920, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257127&gubun=K', 0, 150000, '흰색', 122
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '올 뉴 카니발'
  AND cs.model_year = '16년형'
  AND cs.trim_name = '럭셔리'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 890, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2249989&gubun=K', 0, 200667, '흰색', 130
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '올 뉴 카니발'
  AND cs.model_year = '16년형'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1410, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253549&gubun=K', 0, 209762, '검정색', 112
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '올 뉴 카니발'
  AND cs.model_year = '17년형'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3342
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1690, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255804&gubun=K', 0, 91559, '흰색', 107
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '올 뉴 카니발'
  AND cs.model_year = '2017.03'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3342
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 819, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253456&gubun=K', 0, 248506, '흰색', 133
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '올 뉴 카니발'
  AND cs.model_year = '2015.01'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2150, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253672&gubun=K', 0, 146829, '검정색', 111
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '올 뉴 카니발'
  AND cs.model_year = '17년형'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3342
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1690, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2244807&gubun=K', 0, 47020, '노란색', 111
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '올 뉴 카니발'
  AND cs.model_year = '17년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 600, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256143&gubun=K', 0, 176845, '검정색', 157
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '그랜드'
  AND cs.generation_name = '그랜드'
  AND cs.model_year = '2013.01'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 339, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254539&gubun=K', 0, 134740, '하늘색', 157
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '그랜드'
  AND cs.generation_name = '그랜드'
  AND cs.model_year = '2013.01'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 359, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254793&gubun=K', 0, 115747, '은색', 163
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '그랜드'
  AND cs.generation_name = '그랜드'
  AND cs.model_year = '2012.07'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1780, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257101&gubun=K', 0, 148150, '검정색', 157
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '그랜드'
  AND cs.generation_name = '그랜드'
  AND cs.model_year = '2013.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 450, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257059&gubun=K', 0, 94944, '진주색', 175
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '그랜드'
  AND cs.generation_name = '그랜드'
  AND cs.model_year = '2011.07'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 580, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252451&gubun=K', 0, 195000, '진주색', 150
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '그랜드'
  AND cs.generation_name = '그랜드'
  AND cs.model_year = '2013.08'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 480, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2246776&gubun=K', 0, 211748, '은색', 165
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '뉴 카니발'
  AND cs.model_year = '2012.05'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 600, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255946&gubun=K', 0, 110621, '은하늘색', 157
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '뉴 카니발'
  AND cs.model_year = '2013.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 540, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257126&gubun=K', 0, 150000, '흰색', 150
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '뉴 카니발'
  AND cs.model_year = '2013.08'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 350, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255159&gubun=K', 0, 267618, '검정색', 172
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카니발'
  AND cs.generation_name = '뉴 카니발'
  AND cs.model_year = '2011.10'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 550, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2186862&gubun=K', 0, 165000, '흰색', 200
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '그랜드'
  AND cs.generation_name = '그랜드'
  AND cs.model_year = '2009.06'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2902
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 330, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2246408&gubun=K', 0, 225709, '흰색', 213
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '그랜드'
  AND cs.generation_name = '그랜드'
  AND cs.model_year = '2008.05'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 2656
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 190, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256478&gubun=K', 0, 153662, '검정투톤', 227
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '오피러스'
  AND cs.generation_name = '뉴 오피러스'
  AND cs.model_year = '2007.03'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3342
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 499, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255911&gubun=K', 0, 235563, '회색', 112
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카렌스'
  AND cs.generation_name = '더 뉴 카렌스'
  AND cs.model_year = '17년형'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1685
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 469, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252478&gubun=K', 0, 146555, '금색', 153
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '카렌스'
  AND cs.generation_name = '올 뉴 카렌스'
  AND cs.model_year = '14년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1685
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 750, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252060&gubun=K', 0, 258107, '흰색투톤', 309
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '코스모스'
  AND cs.generation_name = '코스모스'
  AND cs.model_year = '2000.05'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 7412
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 660, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252923&gubun=K', 0, 103781, '흰색', 138
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '프라이드'
  AND cs.generation_name = '올 뉴 프라이드'
  AND cs.model_year = '2014.08'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1591
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 370, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254567&gubun=K', 0, 96641, '검정색', 183
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '포르테'
  AND cs.generation_name = '포르테'
  AND cs.model_year = '2010.11'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG 하이브리드'
  AND cs.displacement_cc = 1591
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 499, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255352&gubun=K', 0, 113468, '흰색', 173
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '포르테'
  AND cs.generation_name = '포르테'
  AND cs.model_year = '12년형'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1591
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 700, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2244177&gubun=K', 0, 109000, '검정색', 358
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '포텐샤'
  AND cs.generation_name = '포텐샤'
  AND cs.model_year = '1996.04'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1050, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2226092&gubun=K', 0, 182000, '진청색', 397
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '포텐샤'
  AND cs.generation_name = '포텐샤'
  AND cs.model_year = '92년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2184
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 100000, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2250422&gubun=K', 0, 850000, '흰색투톤', 643
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '기타'
  AND cs.generation_name = '기타'
  AND cs.model_year = '1972.07'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 577
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256622&gubun=K', 1, 30, '흰색', 1
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '셀토스'
  AND cs.generation_name = '더 뉴 셀토스'
  AND cs.model_year = '2026.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1999
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 200, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2248219&gubun=K', 1, 20, '흰색', 9
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '셀토스'
  AND cs.generation_name = '더 뉴 셀토스'
  AND cs.model_year = '26년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 150, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255703&gubun=K', 1, 4250, '검정색', 13
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '셀토스'
  AND cs.generation_name = '더 뉴 셀토스'
  AND cs.model_year = '2025.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2100, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255260&gubun=K', 0, 65777, '흰색', 50
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '셀토스'
  AND cs.generation_name = '셀토스'
  AND cs.model_year = '22년형'
  AND cs.trim_name = '시그니처'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1591
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2200, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257000&gubun=K', 0, 28721, '흰색', 54
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '셀토스'
  AND cs.generation_name = '셀토스'
  AND cs.model_year = '22년형'
  AND cs.trim_name = '시그니처'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1591
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257293&gubun=K', 1, 30, '진회색', 1
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K8'
  AND cs.generation_name = '더 뉴 K8'
  AND cs.model_year = '2026.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 5115, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256620&gubun=K', 0, 25714, '흰색', 16
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K8'
  AND cs.generation_name = '더 뉴 K8'
  AND cs.model_year = '25년형'
  AND cs.trim_name = '시그니처'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255717&gubun=K', 1, 4860, '흰색', 8
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K8'
  AND cs.generation_name = '더 뉴 K8'
  AND cs.model_year = '2025.06'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 150, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2249530&gubun=K', 1, 1200, '회색', 8
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K8'
  AND cs.generation_name = '더 뉴 K8'
  AND cs.model_year = '2025.06'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 200, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255203&gubun=K', 1, 1900, '흰색', 4
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K8'
  AND cs.generation_name = '더 뉴 K8'
  AND cs.model_year = '26년형'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4350, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256184&gubun=K', 0, 12307, '검정색', 14
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K8'
  AND cs.generation_name = '더 뉴 K8'
  AND cs.model_year = '25년형'
  AND cs.trim_name = '시그니처'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 200, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255706&gubun=K', 1, 5320, '흰색', 13
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K8'
  AND cs.generation_name = '더 뉴 K8'
  AND cs.model_year = '2025.01'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 100, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256145&gubun=K', 1, 17835, '검정색', 8
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K8'
  AND cs.generation_name = '더 뉴 K8'
  AND cs.model_year = '2025.06'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2899, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255289&gubun=K', 0, 19276, '갈색', 51
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K8'
  AND cs.generation_name = 'K8'
  AND cs.model_year = '22년형'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2799, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255780&gubun=K', 0, 28277, '검정색', 54
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K8'
  AND cs.generation_name = 'K8'
  AND cs.model_year = '22년형'
  AND cs.trim_name = '시그니처'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3100, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256995&gubun=K', 0, 41891, '검정색', 38
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K8'
  AND cs.generation_name = 'K8'
  AND cs.model_year = '23년형'
  AND cs.trim_name = '플래티넘'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 200, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2241143&gubun=K', 1, 4200, '진회색', 15
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K8'
  AND cs.generation_name = 'K8'
  AND cs.model_year = '25년형'
  AND cs.trim_name = '시그니처'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256926&gubun=K', 1, 30, '흰색', 1
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K8'
  AND cs.generation_name = 'K8'
  AND cs.model_year = '2026.01'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2970, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255665&gubun=K', 0, 65669, '검정색', 33
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K8'
  AND cs.generation_name = 'K8'
  AND cs.model_year = '2023.05'
  AND cs.trim_name = '시그니처'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2380, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2243664&gubun=K', 0, 64000, '흰색', 51
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K8'
  AND cs.generation_name = 'K8'
  AND cs.model_year = '22년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 3470
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 250, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2244212&gubun=K', 1, 1500, '흰색', 11
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K8'
  AND cs.generation_name = 'K8'
  AND cs.model_year = '2025.03'
  AND cs.trim_name = '시그니처'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 200, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252474&gubun=K', 1, 1850, '검정색', 5
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K8'
  AND cs.generation_name = 'K8'
  AND cs.model_year = '26년형'
  AND cs.trim_name = '시그니처'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3430, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256784&gubun=K', 0, 20031, '검정색', 44
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K8'
  AND cs.generation_name = 'K8'
  AND cs.model_year = '23년형'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2870, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257279&gubun=K', 0, 57370, '진회색', 45
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K8'
  AND cs.generation_name = 'K8'
  AND cs.model_year = '23년형'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 350, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257222&gubun=K', 1, 20, '흰색', 1
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K8'
  AND cs.generation_name = 'K8'
  AND cs.model_year = '2026.01'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2890, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256133&gubun=K', 0, 83000, '은색', 51
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'K8'
  AND cs.generation_name = 'K8'
  AND cs.model_year = '22년형'
  AND cs.trim_name = '시그니처'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257295&gubun=K', 1, 113725, '흰색', 50
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'EV6'
  AND cs.generation_name = 'EV6'
  AND cs.model_year = '22년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '전기'
  AND cs.displacement_cc = 111
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251053&gubun=K', 1, 10, '은색', 6
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = 'EV3'
  AND cs.generation_name = 'EV3'
  AND cs.model_year = '26년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '전기'
  AND cs.displacement_cc = 237
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254303&gubun=K', 1, 890, '검정색', 7
FROM car_specs cs
WHERE cs.maker_id = 3
  AND cs.model_name = '타스만'
  AND cs.generation_name = '타스만'
  AND cs.model_year = '26년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1990, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256432&gubun=K', 0, 82927, '흰색', 47
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '말리부'
  AND cs.generation_name = '더 뉴 말리부'
  AND cs.model_year = '2022.03'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1350, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255733&gubun=K', 0, 49986, '흰색', 76
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '말리부'
  AND cs.generation_name = '더 뉴 말리부'
  AND cs.model_year = '2019.10'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1341
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 970, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2249701&gubun=K', 0, 121417, '검정색 (무광 블랙 랩핑)', 116
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '말리부'
  AND cs.generation_name = '올 뉴 말리부'
  AND cs.model_year = '17년형'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1490
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 790, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257169&gubun=K', 0, 66890, '회색', 102
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '말리부'
  AND cs.generation_name = '올 뉴 말리부'
  AND cs.model_year = '2017.08'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1490
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 459, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255505&gubun=K', 0, 177917, '은색', 114
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '말리부'
  AND cs.generation_name = '올 뉴 말리부'
  AND cs.model_year = '17년형'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 469, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256642&gubun=K', 0, 122430, '흰색', 117
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '말리부'
  AND cs.generation_name = '올 뉴 말리부'
  AND cs.model_year = '17년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1490
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 840, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2243871&gubun=K', 0, 107000, '흰색', 114
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '말리부'
  AND cs.generation_name = '올 뉴 말리부'
  AND cs.model_year = '17년형'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1490
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 620, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2250016&gubun=K', 0, 178000, '진회색', 116
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '말리부'
  AND cs.generation_name = '올 뉴 말리부'
  AND cs.model_year = '17년형'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1490
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 990, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2246887&gubun=K', 0, 112000, '흰색', 107
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '말리부'
  AND cs.generation_name = '올 뉴 말리부'
  AND cs.model_year = '2017.03'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1490
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 490, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257309&gubun=K', 0, 172608, '진주색', 127
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '말리부'
  AND cs.generation_name = '말리부'
  AND cs.model_year = '2015.07'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1956
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 349, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253976&gubun=K', 0, 128838, '흰색', 132
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '말리부'
  AND cs.generation_name = '말리부'
  AND cs.model_year = '2015.02'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1956
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 299, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257008&gubun=K', 0, 165200, '검정색', 139
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '말리부'
  AND cs.generation_name = '말리부'
  AND cs.model_year = '2014.07'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2384
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 450, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256871&gubun=K', 0, 71409, '검정색', 133
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '말리부'
  AND cs.generation_name = '말리부'
  AND cs.model_year = '2015.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 360, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255865&gubun=K', 0, 134558, '갈색', 155
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '올란도'
  AND cs.generation_name = '올란도'
  AND cs.model_year = '2013.03'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 339, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252307&gubun=K', 0, 144980, '은색', 165
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '올란도'
  AND cs.generation_name = '올란도'
  AND cs.model_year = '2012.05'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 369, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254133&gubun=K', 0, 109097, '은색', 124
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '올란도'
  AND cs.generation_name = '올란도'
  AND cs.model_year = '16년형'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 369, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255287&gubun=K', 0, 133079, '흰색', 126
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '올란도'
  AND cs.generation_name = '올란도'
  AND cs.model_year = '2015.08'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 780, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257364&gubun=K', 0, 133300, '은색', 95
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '올란도'
  AND cs.generation_name = '올란도'
  AND cs.model_year = '2018.03'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1580, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254194&gubun=K', 0, 119703, '검정색', 131
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '올란도'
  AND cs.generation_name = '올란도'
  AND cs.model_year = '2015.03'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 490, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256870&gubun=K', 0, 192225, '흰색', 104
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '올란도'
  AND cs.generation_name = '올란도'
  AND cs.model_year = '18년형'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 390, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255993&gubun=K', 0, 103149, '흰색', 178
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '올란도'
  AND cs.generation_name = '올란도'
  AND cs.model_year = '12년형'
  AND cs.trim_name = '프리미엄'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 970, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255533&gubun=K', 0, 106481, '검정색', 79
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '이쿼녹스'
  AND cs.generation_name = '이쿼녹스'
  AND cs.model_year = '2019.07'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1190, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2247553&gubun=K', 0, 69842, '검정색', 113
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '임팔라'
  AND cs.generation_name = '임팔라'
  AND cs.model_year = '2016.09'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3564
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1120, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256578&gubun=K', 0, 19820, '흰색', 54
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '스파크'
  AND cs.generation_name = '더 뉴 스파크'
  AND cs.model_year = '22년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 999
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 690, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255410&gubun=K', 0, 97006, '흰색', 110
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '더'
  AND cs.generation_name = '더'
  AND cs.model_year = '17년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 999
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 440, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257241&gubun=K', 0, 35709, '은색', 122
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '더'
  AND cs.generation_name = '더'
  AND cs.model_year = '16년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 999
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 360, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255586&gubun=K', 0, 156000, '베이지색', 113
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '더'
  AND cs.generation_name = '더'
  AND cs.model_year = '17년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 999
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 859, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2249952&gubun=K', 0, 13606, '흰색', 109
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '더'
  AND cs.generation_name = '더'
  AND cs.model_year = '2017.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 999
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 320, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257285&gubun=K', 0, 63000, '회색', 144
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '스파크'
  AND cs.generation_name = '스파크'
  AND cs.model_year = '2014.02'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 995
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 219, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2225296&gubun=K', 0, 169000, '흰색', 143
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '스파크'
  AND cs.generation_name = '스파크'
  AND cs.model_year = '2014.03'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 995
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 219, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2249175&gubun=K', 0, 87774, '분홍색', 160
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '스파크'
  AND cs.generation_name = '스파크'
  AND cs.model_year = '2012.10'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 995
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 388, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251988&gubun=K', 0, 129360, '노란색', 137
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '스파크'
  AND cs.generation_name = '스파크'
  AND cs.model_year = '2014.09'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 995
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 230, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256121&gubun=K', 0, 128000, '흰색투톤', 159
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '스파크'
  AND cs.generation_name = '스파크'
  AND cs.model_year = '2012.11'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 995
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 499, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251606&gubun=K', 0, 116707, '은색', 129
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '캡티바'
  AND cs.generation_name = '캡티바'
  AND cs.model_year = '2015.05'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2231
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 460, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255587&gubun=K', 0, 116386, '검정색', 146
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '캡티바'
  AND cs.generation_name = '캡티바'
  AND cs.model_year = '2013.12'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2231
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 379, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254978&gubun=K', 0, 120121, '진회색', 140
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '캡티바'
  AND cs.generation_name = '캡티바'
  AND cs.model_year = '2014.06'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 760, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257369&gubun=K', 0, 124734, '진회색', 136
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '캡티바'
  AND cs.generation_name = '캡티바'
  AND cs.model_year = '15년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2231
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3400, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2246682&gubun=K', 0, 77880, '검정색', 58
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '리얼'
  AND cs.generation_name = '리얼'
  AND cs.model_year = '2021.04'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3649
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 770, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2249582&gubun=K', 0, 96181, '흰색', 103
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '크루즈'
  AND cs.generation_name = '올 뉴 크루즈'
  AND cs.model_year = '2017.07'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1399
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 599, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255823&gubun=K', 0, 94082, '흰색', 130
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '어메이징'
  AND cs.generation_name = '어메이징'
  AND cs.model_year = '2015.04'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1362
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 490, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254249&gubun=K', 0, 127903, '검정색', 125
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '어메이징'
  AND cs.generation_name = '어메이징'
  AND cs.model_year = '16년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1362
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 380, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2232440&gubun=K', 0, 131788, '회색', 123
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '어메이징'
  AND cs.generation_name = '어메이징'
  AND cs.model_year = '16년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1362
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 599, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251209&gubun=K', 0, 85979, '흰색', 128
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '어메이징'
  AND cs.generation_name = '어메이징'
  AND cs.model_year = '2015.06'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1362
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 390, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255409&gubun=K', 0, 79639, '검정색', 157
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '크루즈'
  AND cs.generation_name = '크루즈'
  AND cs.model_year = '2013.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 285, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256370&gubun=K', 0, 122635, '은색', 156
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '크루즈'
  AND cs.generation_name = '크루즈'
  AND cs.model_year = '2013.02'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1796
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1650, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256080&gubun=K', 0, 62415, '진주색', 72
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '트레일블레이저'
  AND cs.generation_name = '트레일블레이저'
  AND cs.model_year = '21년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1341
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1330, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257228&gubun=K', 0, 80600, '진회색 (다크그레이)', 71
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '트레일블레이저'
  AND cs.generation_name = '트레일블레이저'
  AND cs.model_year = '21년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1341
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 30, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254273&gubun=K', 0, 102000, '흰색', 69
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '볼트'
  AND cs.generation_name = '볼트'
  AND cs.model_year = '2020.05'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '전기'
  AND cs.displacement_cc = 174
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256934&gubun=K', 1, 2523, '흰색', 3
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '트랙스'
  AND cs.generation_name = '트랙스'
  AND cs.model_year = '26년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 850, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257260&gubun=K', 0, 89302, '청색', 64
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '트랙스'
  AND cs.generation_name = '더 뉴 트랙스'
  AND cs.model_year = '21년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1362
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 650, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257370&gubun=K', 0, 86727, '흰색', 86
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '트랙스'
  AND cs.generation_name = '더 뉴 트랙스'
  AND cs.model_year = '19년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1362
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1080, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2250728&gubun=K', 0, 73000, '흰색 (화이트 펄)', 78
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '트랙스'
  AND cs.generation_name = '더 뉴 트랙스'
  AND cs.model_year = '2019.08'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1362
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 410, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255992&gubun=K', 0, 102840, '흰색', 144
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '트랙스'
  AND cs.generation_name = '트랙스'
  AND cs.model_year = '2014.02'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1362
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2490, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254506&gubun=K', 0, 88164, '검정색', 113
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '카마로'
  AND cs.generation_name = '올 뉴 카마로'
  AND cs.model_year = '17년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 6162
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2090, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254915&gubun=K', 0, 123727, '검정색', 111
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '카마로'
  AND cs.generation_name = '올 뉴 카마로'
  AND cs.model_year = '17년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 6162
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2290, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255207&gubun=K', 0, 139519, '검정색', 112
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '카마로'
  AND cs.generation_name = '올 뉴 카마로'
  AND cs.model_year = '17년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 6162
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2459, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2245781&gubun=K', 0, 53078, '회색', 110
FROM car_specs cs
WHERE cs.maker_id = 50
  AND cs.model_name = '카마로'
  AND cs.generation_name = '올 뉴 카마로'
  AND cs.model_year = '17년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 6162
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 319, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252889&gubun=K', 0, 159194, '흰색', 152
FROM car_specs cs
WHERE cs.maker_id = 4
  AND cs.model_name = '알페온'
  AND cs.generation_name = '알페온'
  AND cs.model_year = '2013.06'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2997
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 330, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255637&gubun=K', 0, 163565, '파란색', 174
FROM car_specs cs
WHERE cs.maker_id = 4
  AND cs.model_name = '다마스'
  AND cs.generation_name = '뉴 다마스'
  AND cs.model_year = '12년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 796
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1980, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2244985&gubun=K', 0, 4350, '흰색투톤', 58
FROM car_specs cs
WHERE cs.maker_id = 4
  AND cs.model_name = '라보'
  AND cs.generation_name = '뉴 라보'
  AND cs.model_year = '2021.04'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 796
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1650, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253060&gubun=K', 0, 200500, '자주색', 397
FROM car_specs cs
WHERE cs.maker_id = 4
  AND cs.model_name = '르망'
  AND cs.generation_name = '르망'
  AND cs.model_year = '92년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1498
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 140, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257344&gubun=K', 0, 192003, '은색', 185
FROM car_specs cs
WHERE cs.maker_id = 4
  AND cs.model_name = '마티즈'
  AND cs.generation_name = '마티즈'
  AND cs.model_year = '11년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 995
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3500, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256666&gubun=K', 0, 910000, '회색', 133
FROM car_specs cs
WHERE cs.maker_id = 4
  AND cs.model_name = '프리마'
  AND cs.generation_name = '프리마'
  AND cs.model_year = '2015.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 5880
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 777, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2239226&gubun=K', 0, 55000, '기타색상', 363
FROM car_specs cs
WHERE cs.maker_id = 4
  AND cs.model_name = '에스페로'
  AND cs.generation_name = '에스페로'
  AND cs.model_year = '1995.11'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1498
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 450, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255290&gubun=K', 0, 60923, '검정색', 363
FROM car_specs cs
WHERE cs.maker_id = 4
  AND cs.model_name = '프린스'
  AND cs.generation_name = '프린스'
  AND cs.model_year = '1995.11'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1796
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255230&gubun=K', 0, 390000, '흰색', 362
FROM car_specs cs
WHERE cs.maker_id = 4
  AND cs.model_name = '프린스'
  AND cs.generation_name = '프린스'
  AND cs.model_year = '1995.12'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1796
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2899, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2243238&gubun=K', 0, 193568, '진주색', 154
FROM car_specs cs
WHERE cs.maker_id = 4
  AND cs.model_name = 'BH'
  AND cs.generation_name = 'BH'
  AND cs.model_year = '2013.04'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 5890
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1850, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2250002&gubun=K', 0, 204864, '진회색', 176
FROM car_specs cs
WHERE cs.maker_id = 4
  AND cs.model_name = 'BH'
  AND cs.generation_name = 'BH'
  AND cs.model_year = '2011.06'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 5890
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1550, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251218&gubun=K', 0, 163000, '노란색', 157
FROM car_specs cs
WHERE cs.maker_id = 4
  AND cs.model_name = 'BH'
  AND cs.generation_name = 'BH'
  AND cs.model_year = '2013.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 5890
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2500, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256209&gubun=K', 0, 112168, '기타색상', 130
FROM car_specs cs
WHERE cs.maker_id = 4
  AND cs.model_name = 'BH'
  AND cs.generation_name = 'BH'
  AND cs.model_year = '2015.04'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 6690
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2290, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255958&gubun=K', 0, 72647, '노란색', 107
FROM car_specs cs
WHERE cs.maker_id = 4
  AND cs.model_name = 'BH'
  AND cs.generation_name = 'BH'
  AND cs.model_year = '2017.03'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 6690
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 800, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2217123&gubun=K', 0, 89306, '흰색', 219
FROM car_specs cs
WHERE cs.maker_id = 4
  AND cs.model_name = 'BH'
  AND cs.generation_name = 'BH'
  AND cs.model_year = '2007.11'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 7640
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 100, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2206995&gubun=K', 0, 615961, '기타색상', 181
FROM car_specs cs
WHERE cs.maker_id = 4
  AND cs.model_name = 'BX'
  AND cs.generation_name = 'BX'
  AND cs.model_year = '2011.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 10964
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2999, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2227728&gubun=K', 0, 160000, '검정투톤', 237
FROM car_specs cs
WHERE cs.maker_id = 4
  AND cs.model_name = '기타'
  AND cs.generation_name = '기타'
  AND cs.model_year = '2006.05'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 10964
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 160000000, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256609&gubun=K', 0, 60202, '은색', 31
FROM car_specs cs
WHERE cs.maker_id = 4
  AND cs.model_name = '기타'
  AND cs.generation_name = '기타'
  AND cs.model_year = '24년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 8710
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1600, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255556&gubun=K', 0, 935, '흰색', 216
FROM car_specs cs
WHERE cs.maker_id = 4
  AND cs.model_name = '기타'
  AND cs.generation_name = '기타'
  AND cs.model_year = '2008.02'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 5880
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1150, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255649&gubun=K', 0, 785000, '흰색', 201
FROM car_specs cs
WHERE cs.maker_id = 4
  AND cs.model_name = '기타'
  AND cs.generation_name = '기타'
  AND cs.model_year = '10년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 5880
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4280, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251285&gubun=K', 0, 109519, '진주투톤', 146
FROM car_specs cs
WHERE cs.maker_id = 4
  AND cs.model_name = '레스타'
  AND cs.generation_name = '레스타'
  AND cs.model_year = '14년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 3760
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4680, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251643&gubun=K', 0, 116294, '흰색투톤', 132
FROM car_specs cs
WHERE cs.maker_id = 4
  AND cs.model_name = '레스타'
  AND cs.generation_name = '레스타'
  AND cs.model_year = '2015.02'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 3800
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3980, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254029&gubun=K', 0, 117670, '진주투톤', 141
FROM car_specs cs
WHERE cs.maker_id = 4
  AND cs.model_name = '레스타'
  AND cs.generation_name = '레스타'
  AND cs.model_year = '2014.05'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 3183
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 6680, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254030&gubun=K', 0, 69415, '흰색투톤', 87
FROM car_specs cs
WHERE cs.maker_id = 4
  AND cs.model_name = '레스타'
  AND cs.generation_name = '레스타'
  AND cs.model_year = '2018.11'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 3800
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 5680, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2241376&gubun=K', 0, 166514, '흰색투톤', 109
FROM car_specs cs
WHERE cs.maker_id = 4
  AND cs.model_name = '레스타'
  AND cs.generation_name = '레스타'
  AND cs.model_year = '2017.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 3800
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2800, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254104&gubun=K', 0, 190000, '흰색투톤', 141
FROM car_specs cs
WHERE cs.maker_id = 4
  AND cs.model_name = '레스타'
  AND cs.generation_name = '레스타'
  AND cs.model_year = '2014.05'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 3760
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 450, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256234&gubun=K', 0, 153300, '회색', 141
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = 'SM3'
  AND cs.generation_name = 'SM3'
  AND cs.model_year = '15년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 550, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255151&gubun=K', 0, 58000, '은색', 112
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = 'SM3'
  AND cs.generation_name = 'SM3'
  AND cs.model_year = '2016.10'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 120, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256423&gubun=K', 0, 181898, '회색', 194
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = 'SM3'
  AND cs.generation_name = '뉴 SM3'
  AND cs.model_year = '10년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 200, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256507&gubun=K', 0, 145447, '검정색', 197
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = 'SM3'
  AND cs.generation_name = '뉴 SM3'
  AND cs.model_year = '10년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 169, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2220266&gubun=K', 0, 144000, '진주색', 192
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = 'SM3'
  AND cs.generation_name = '뉴 SM3'
  AND cs.model_year = '2010.02'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 179, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254979&gubun=K', 0, 154298, '검정색', 143
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = 'SM3'
  AND cs.generation_name = '뉴 SM3'
  AND cs.model_year = '2014.03'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 150, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257287&gubun=K', 0, 250030, '은색', 155
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = 'SM3'
  AND cs.generation_name = '뉴 SM3'
  AND cs.model_year = '2013.03'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 170, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256072&gubun=K', 0, 156000, '진주색', 192
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = 'SM3'
  AND cs.generation_name = '뉴 SM3'
  AND cs.model_year = '2010.02'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 699, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254274&gubun=K', 0, 145066, '갈색', 115
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = 'SM6'
  AND cs.generation_name = 'SM6'
  AND cs.model_year = '2016.07'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1997
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 320, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257239&gubun=K', 0, 245469, '검정색', 98
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = 'SM6'
  AND cs.generation_name = 'SM6'
  AND cs.model_year = '2017.12'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 950, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257185&gubun=K', 0, 65447, '흰색', 87
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = 'SM6'
  AND cs.generation_name = 'SM6'
  AND cs.model_year = '19년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1997
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 550, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257331&gubun=K', 0, 175969, '회색', 111
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = 'SM6'
  AND cs.generation_name = 'SM6'
  AND cs.model_year = '2016.11'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1618
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 490, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254705&gubun=K', 0, 142626, '검정색', 109
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = 'SM6'
  AND cs.generation_name = 'SM6'
  AND cs.model_year = '16년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 799, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256579&gubun=K', 0, 120860, '검정색', 96
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = 'SM6'
  AND cs.generation_name = 'SM6'
  AND cs.model_year = '17년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1997
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 750, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256379&gubun=K', 0, 120000, '진회색', 117
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = 'SM6'
  AND cs.generation_name = 'SM6'
  AND cs.model_year = '2016.05'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1997
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 550, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255975&gubun=K', 0, 179000, '진회색', 104
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = 'SM6'
  AND cs.generation_name = 'SM6'
  AND cs.model_year = '2017.06'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1997
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 500, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2248978&gubun=K', 0, 118900, '진청색', 132
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = 'SM5'
  AND cs.generation_name = 'SM5'
  AND cs.model_year = '2015.02'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 269, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2244052&gubun=K', 0, 155346, '검정색', 139
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = '뉴SM5'
  AND cs.generation_name = '뉴SM5'
  AND cs.model_year = '2014.07'
  AND cs.trim_name = '플래티넘'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1461
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 279, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2247001&gubun=K', 0, 172856, '흰색', 147
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = '뉴SM5'
  AND cs.generation_name = '뉴SM5'
  AND cs.model_year = '14년형'
  AND cs.trim_name = '플래티넘'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 199, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253690&gubun=K', 0, 152426, '검정색', 154
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = '뉴SM5'
  AND cs.generation_name = '뉴SM5'
  AND cs.model_year = '2013.04'
  AND cs.trim_name = '플래티넘'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 269, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253977&gubun=K', 0, 133375, '흰색', 134
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = '뉴SM5'
  AND cs.generation_name = '뉴SM5'
  AND cs.model_year = '2014.12'
  AND cs.trim_name = '플래티넘'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 239, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254083&gubun=K', 0, 134117, '은색', 157
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = '뉴SM5'
  AND cs.generation_name = '뉴SM5'
  AND cs.model_year = '2013.01'
  AND cs.trim_name = '플래티넘'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 169, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254849&gubun=K', 0, 172773, '검정색', 150
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = '뉴SM5'
  AND cs.generation_name = '뉴SM5'
  AND cs.model_year = '2013.08'
  AND cs.trim_name = '플래티넘'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 239, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255515&gubun=K', 0, 126964, '검정색', 159
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = '뉴SM5'
  AND cs.generation_name = '뉴SM5'
  AND cs.model_year = '13년형'
  AND cs.trim_name = '플래티넘'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 340, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253563&gubun=K', 0, 124602, '흰색', 129
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = '뉴SM5'
  AND cs.generation_name = '뉴SM5'
  AND cs.model_year = '2015.05'
  AND cs.trim_name = '플래티넘'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 300, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256670&gubun=K', 0, 106000, '검정색', 133
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = '뉴SM5'
  AND cs.generation_name = '뉴SM5'
  AND cs.model_year = '14년형'
  AND cs.trim_name = '플래티넘'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 250, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255476&gubun=K', 0, 200000, '검정색', 143
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = '뉴SM5'
  AND cs.generation_name = '뉴SM5'
  AND cs.model_year = '2014.03'
  AND cs.trim_name = '플래티넘'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 499, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2245853&gubun=K', 0, 71920, '흰색', 151
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = '뉴SM5'
  AND cs.generation_name = '뉴SM5'
  AND cs.model_year = '2013.07'
  AND cs.trim_name = '플래티넘'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 165, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255798&gubun=K', 0, 206937, '흰색', 177
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = 'SM5'
  AND cs.generation_name = '뉴 SM5'
  AND cs.model_year = '2011.05'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 129, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255127&gubun=K', 0, 149707, '은색', 181
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = 'SM5'
  AND cs.generation_name = '뉴 SM5'
  AND cs.model_year = '2011.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 240, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253562&gubun=K', 0, 160004, '흰색', 190
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = 'SM5'
  AND cs.generation_name = '뉴 SM5'
  AND cs.model_year = '2010.04'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 430, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253685&gubun=K', 0, 49000, '흰색', 176
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = 'SM5'
  AND cs.generation_name = '뉴 SM5'
  AND cs.model_year = '2011.06'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 120, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255976&gubun=K', 0, 163720, '진주색', 269
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = 'SM5'
  AND cs.generation_name = 'SM5'
  AND cs.model_year = '04년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1999, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256261&gubun=K', 0, 21371, '갈색', 25
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = 'QM6'
  AND cs.generation_name = '더 뉴 QM6'
  AND cs.model_year = '2024.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1999, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256644&gubun=K', 0, 55800, '흰색', 58
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = 'QM6'
  AND cs.generation_name = '더 뉴 QM6'
  AND cs.model_year = '2021.04'
  AND cs.trim_name = '시그니처'
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1997
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1090, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256549&gubun=K', 0, 90382, '흰색', 73
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = 'QM6'
  AND cs.generation_name = '더 뉴 QM6'
  AND cs.model_year = '2020.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1997
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256037&gubun=K', 1, 30, '회색', 2
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = 'QM6'
  AND cs.generation_name = 'QM6'
  AND cs.model_year = '26년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1997
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256041&gubun=K', 1, 30, '흰색', 2
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = 'QM6'
  AND cs.generation_name = 'QM6'
  AND cs.model_year = '26년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1430, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257280&gubun=K', 0, 60033, '회색', 75
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = 'QM6'
  AND cs.generation_name = 'QM6'
  AND cs.model_year = '20년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1997
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 880, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256340&gubun=K', 0, 104147, '회색', 111
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = 'QM6'
  AND cs.generation_name = 'QM6'
  AND cs.model_year = '17년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1995
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1300, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2243852&gubun=K', 0, 76482, '진회색', 97
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = 'QM6'
  AND cs.generation_name = 'QM6'
  AND cs.model_year = '17년형'
  AND cs.trim_name = '시그니처'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1995
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 429, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2243176&gubun=K', 0, 149108, '검정색', 121
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = 'SM7'
  AND cs.generation_name = 'SM7'
  AND cs.model_year = '2016.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = 'LPG'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 439, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2243266&gubun=K', 0, 162599, '회색', 133
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = 'SM7'
  AND cs.generation_name = 'SM7'
  AND cs.model_year = '2015.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2495
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 390, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256367&gubun=K', 0, 136212, '흰색', 172
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = 'SM7'
  AND cs.generation_name = '올 뉴 SM7'
  AND cs.model_year = '12년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2495
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 320, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257242&gubun=K', 0, 84181, '검정색', 217
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = 'SM7'
  AND cs.generation_name = 'SM7'
  AND cs.model_year = '07년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2349
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 750, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256967&gubun=K', 0, 41371, '흰색', 84
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = 'QM3'
  AND cs.generation_name = '뉴 QM3'
  AND cs.model_year = '2019.02'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1461
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 440, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256339&gubun=K', 0, 114007, '진주색', 133
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = 'QM3'
  AND cs.generation_name = 'QM3'
  AND cs.model_year = '2015.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1461
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 329, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2240118&gubun=K', 0, 165807, '은색', 141
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = 'QM3'
  AND cs.generation_name = 'QM3'
  AND cs.model_year = '2014.05'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1461
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 350, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2242589&gubun=K', 0, 138383, '은색', 140
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = 'QM3'
  AND cs.generation_name = 'QM3'
  AND cs.model_year = '2014.06'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1461
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 600, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257232&gubun=K', 0, 78789, '회색', 144
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = 'QM5'
  AND cs.generation_name = 'QM5'
  AND cs.model_year = '2014.02'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 239, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253459&gubun=K', 0, 209090, '은색', 145
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = 'QM5'
  AND cs.generation_name = '뉴 QM5'
  AND cs.model_year = '2014.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1995
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 249, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253523&gubun=K', 0, 162604, '은색', 153
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = 'QM5'
  AND cs.generation_name = '뉴 QM5'
  AND cs.model_year = '2013.05'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1995
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 488, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2247302&gubun=K', 0, 157690, '진주색', 150
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = 'QM5'
  AND cs.generation_name = '뉴 QM5'
  AND cs.model_year = '14년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 380, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255851&gubun=K', 0, 150000, '검정색', 197
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = 'QM5'
  AND cs.generation_name = 'QM5'
  AND cs.model_year = '2009.09'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2488
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4580, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251788&gubun=K', 0, 34421, '흰색투톤', 67
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = '마스터'
  AND cs.generation_name = '뉴 마스터'
  AND cs.model_year = '2020.07'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2299
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4980, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2246534&gubun=K', 0, 84655, '은색', 60
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = '마스터'
  AND cs.generation_name = '뉴 마스터'
  AND cs.model_year = '2021.02'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2299
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2500, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257083&gubun=K', 0, 56480, '회색', 69
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = '마스터'
  AND cs.generation_name = '뉴 마스터'
  AND cs.model_year = '2020.05'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2299
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4400, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256962&gubun=K', 0, 11630, '검정색', 55
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = '마스터'
  AND cs.generation_name = '뉴 마스터'
  AND cs.model_year = '2021.07'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2299
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2499, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254944&gubun=K', 0, 19665, '은색', 69
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = '마스터'
  AND cs.generation_name = '뉴 마스터'
  AND cs.model_year = '2020.05'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2299
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4990, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2249023&gubun=K', 0, 29340, '흰색', 67
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = '마스터'
  AND cs.generation_name = '뉴 마스터'
  AND cs.model_year = '2020.07'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2299
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252488&gubun=K', 0, 25299, '흰색', 57
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = '마스터'
  AND cs.generation_name = '뉴 마스터'
  AND cs.model_year = '20년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2299
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2555, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2247366&gubun=K', 0, 12000, '흰색', 69
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = '마스터'
  AND cs.generation_name = '뉴 마스터'
  AND cs.model_year = '2020.05'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2299
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1100, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254747&gubun=K', 0, 181171, '흰색', 75
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = '마스터'
  AND cs.generation_name = '마스터'
  AND cs.model_year = '2019.11'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2299
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4480, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2249025&gubun=K', 0, 43470, '은색', 79
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = '마스터'
  AND cs.generation_name = '마스터'
  AND cs.model_year = '2019.07'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2299
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4980, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2250634&gubun=K', 0, 40968, '흰색', 67
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = '마스터'
  AND cs.generation_name = '마스터'
  AND cs.model_year = '19년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2299
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4680, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2250841&gubun=K', 0, 27144, '검정색', 76
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = '마스터'
  AND cs.generation_name = '마스터'
  AND cs.model_year = '2019.10'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2299
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3580, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253308&gubun=K', 0, 70600, '은색', 75
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = '마스터'
  AND cs.generation_name = '마스터'
  AND cs.model_year = '2019.11'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2299
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 4680, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2246385&gubun=K', 0, 92162, '검정색', 78
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = '마스터'
  AND cs.generation_name = '마스터'
  AND cs.model_year = '2019.08'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2299
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 980, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255913&gubun=K', 0, 143000, '흰색', 62
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = 'XM3'
  AND cs.generation_name = 'XM3'
  AND cs.model_year = '2020.12'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1590, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2247728&gubun=K', 0, 43910, '흰색', 45
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = 'XM3'
  AND cs.generation_name = 'XM3'
  AND cs.model_year = '23년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257085&gubun=K', 1, 30, '진회색', 1
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = '아르카나'
  AND cs.generation_name = '아르카나'
  AND cs.model_year = '2026.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1181, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255819&gubun=K', 1, 9285, '은색투톤', 14
FROM car_specs cs
WHERE cs.maker_id = 5
  AND cs.model_name = '그랑'
  AND cs.generation_name = '그랑'
  AND cs.model_year = '25년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린 하이브리드'
  AND cs.displacement_cc = 1499
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 5990, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255801&gubun=K', 0, 52000, '기타색상', 40
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '렉스턴'
  AND cs.generation_name = '더 뉴 렉스턴'
  AND cs.model_year = '2022.10'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2157
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3250, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256460&gubun=K', 0, 47000, '녹색', 24
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '렉스턴'
  AND cs.generation_name = '더 뉴 렉스턴'
  AND cs.model_year = '2024.02'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2157
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 6600, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254146&gubun=K', 0, 5139, '베이지색', 16
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '렉스턴'
  AND cs.generation_name = '더 뉴 렉스턴'
  AND cs.model_year = '2024.10'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2157
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2800, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2248091&gubun=K', 0, 6800, '진회색', 13
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '렉스턴'
  AND cs.generation_name = '더 뉴 렉스턴'
  AND cs.model_year = '2025.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2157
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3539, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256977&gubun=K', 0, 30533, '검정색', 62
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '렉스턴'
  AND cs.generation_name = '올 뉴 렉스턴'
  AND cs.model_year = '21년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2157
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 3600, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255193&gubun=K', 0, 52000, '검정색', 51
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '렉스턴'
  AND cs.generation_name = '올 뉴 렉스턴'
  AND cs.model_year = '2021.11'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2157
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1560, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257326&gubun=K', 0, 134439, '회색', 63
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '렉스턴'
  AND cs.generation_name = '렉스턴'
  AND cs.model_year = '21년형'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2157
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 7700, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255685&gubun=K', 0, 30620, '진회색', 38
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '렉스턴'
  AND cs.generation_name = '렉스턴'
  AND cs.model_year = '21년형'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2157
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2490, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2247331&gubun=K', 0, 55000, '남색', 65
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '렉스턴'
  AND cs.generation_name = '렉스턴'
  AND cs.model_year = '21년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2157
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2700, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257125&gubun=K', 0, 44722, '녹색', 47
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '렉스턴'
  AND cs.generation_name = '렉스턴'
  AND cs.model_year = '2022.03'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2157
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1550, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256559&gubun=K', 0, 166149, '빨간색', 78
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '렉스턴'
  AND cs.generation_name = '렉스턴'
  AND cs.model_year = '2019.08'
  AND cs.trim_name = '노블레스'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2157
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1130, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254186&gubun=K', 0, 109196, '진회색', 96
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '렉스턴'
  AND cs.generation_name = '렉스턴'
  AND cs.model_year = '2018.02'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2157
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2880, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251397&gubun=K', 0, 158543, '녹색', 83
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '렉스턴'
  AND cs.generation_name = '렉스턴'
  AND cs.model_year = '2019.03'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2157
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1600, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256255&gubun=K', 0, 30730, '흰색', 90
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '렉스턴'
  AND cs.generation_name = '렉스턴'
  AND cs.model_year = '19년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2157
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1600, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254111&gubun=K', 0, 180000, '검정색', 95
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '렉스턴'
  AND cs.generation_name = '렉스턴'
  AND cs.model_year = '2018.03'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2157
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1699, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2238154&gubun=K', 0, 93683, '검정색', 102
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = 'G4'
  AND cs.generation_name = 'G4'
  AND cs.model_year = '18년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2157
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 319, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256643&gubun=K', 0, 183029, '은색', 164
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '렉스턴W'
  AND cs.generation_name = '렉스턴W'
  AND cs.model_year = '13년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 229, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2155752&gubun=K', 0, 152671, '검정색', 156
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '체어맨H'
  AND cs.generation_name = '체어맨H'
  AND cs.model_year = '2013.02'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 2799
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 340, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256443&gubun=K', 0, 170595, '검정색', 170
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '체어맨W'
  AND cs.generation_name = '뉴 체어맨W'
  AND cs.model_year = '12년형'
  AND cs.trim_name = '프레스티지'
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 900, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2234412&gubun=K', 0, 160778, '검정색', 140
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '체어맨W'
  AND cs.generation_name = '뉴 체어맨W'
  AND cs.model_year = '2014.06'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 690, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255147&gubun=K', 0, 195809, '검정색', 212
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '체어맨W'
  AND cs.generation_name = '체어맨W'
  AND cs.model_year = '2008.06'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3598
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2349, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256421&gubun=K', 0, 14069, '회색', 39
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '뷰티풀'
  AND cs.generation_name = '뷰티풀'
  AND cs.model_year = '23년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 220, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257117&gubun=K', 0, 218435, '검정색', 147
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '코란도'
  AND cs.generation_name = '뉴 코란도'
  AND cs.model_year = '14년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 260, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257168&gubun=K', 0, 167597, '흰색', 145
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '코란도'
  AND cs.generation_name = '뉴 코란도'
  AND cs.model_year = '2014.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 269, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254021&gubun=K', 0, 163274, '진회색', 148
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '코란도'
  AND cs.generation_name = '뉴 코란도'
  AND cs.model_year = '14년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 369, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256319&gubun=K', 0, 128378, '흰색', 133
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '코란도'
  AND cs.generation_name = '뉴 코란도'
  AND cs.model_year = '2015.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 500, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253726&gubun=K', 0, 96000, '흰색', 135
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '코란도'
  AND cs.generation_name = '뉴 코란도'
  AND cs.model_year = '15년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 480, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2248976&gubun=K', 0, 107000, '청색', 145
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '코란도'
  AND cs.generation_name = '뉴 코란도'
  AND cs.model_year = '2014.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 500, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=1904871&gubun=K', 0, 39900, '빨간색', 128
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '코란도'
  AND cs.generation_name = '코란도'
  AND cs.model_year = '2015.06'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 920, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253435&gubun=K', 0, 177487, '흰색', 111
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '코란도'
  AND cs.generation_name = '더 뉴 코란도'
  AND cs.model_year = '17년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2157
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1200, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254275&gubun=K', 0, 102686, '검정색', 100
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '코란도'
  AND cs.generation_name = '더 뉴 코란도'
  AND cs.model_year = '18년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2157
  AND cs.transmission = 0
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 710, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252387&gubun=K', 0, 214218, '흰색', 111
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '코란도'
  AND cs.generation_name = '더 뉴 코란도'
  AND cs.model_year = '17년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2157
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1400, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256459&gubun=K', 0, 43000, '빨간색', 100
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '코란도'
  AND cs.generation_name = '더 뉴 코란도'
  AND cs.model_year = '18년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2157
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 680, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257043&gubun=K', 0, 130000, '흰색', 134
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '코란도'
  AND cs.generation_name = '코란도'
  AND cs.model_year = '15년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 700, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253557&gubun=K', 0, 68970, '검정색', 165
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '코란도'
  AND cs.generation_name = '코란도'
  AND cs.model_year = '2012.05'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 990, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251650&gubun=K', 0, 70156, '진회색', 130
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '코란도'
  AND cs.generation_name = '코란도'
  AND cs.model_year = '2015.04'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 580, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2248980&gubun=K', 0, 138000, '은색', 153
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '코란도'
  AND cs.generation_name = '코란도'
  AND cs.model_year = '2013.05'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 439, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254677&gubun=K', 0, 134980, '은색', 134
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '코란도'
  AND cs.generation_name = '코란도'
  AND cs.model_year = '15년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 659, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256498&gubun=K', 0, 156685, '흰색', 111
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '코란도'
  AND cs.generation_name = '코란도'
  AND cs.model_year = '17년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2157
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 439, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257003&gubun=K', 0, 176644, '은색', 121
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '코란도'
  AND cs.generation_name = '코란도'
  AND cs.model_year = '2016.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2157
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2480, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254031&gubun=K', 0, 140252, '흰색', 106
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '코란도'
  AND cs.generation_name = '코란도'
  AND cs.model_year = '2017.04'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2157
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 620, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256601&gubun=K', 0, 182800, '회색', 97
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '코란도'
  AND cs.generation_name = '코란도'
  AND cs.model_year = '2018.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2157
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 700, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256394&gubun=K', 0, 58892, '흰색', 256
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '뉴코란도'
  AND cs.generation_name = '뉴코란도'
  AND cs.model_year = '05년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '사륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 2874
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1500, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2248191&gubun=K', 0, 39000, '남색', 312
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '무쏘'
  AND cs.generation_name = '뉴 무쏘'
  AND cs.model_year = '2000.02'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 3199
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257194&gubun=K', 1, 30, '검정색', 1
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '액티언'
  AND cs.generation_name = '액티언'
  AND cs.model_year = '2026.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 150, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254769&gubun=K', 1, 100, '흰색', 4
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '티볼리'
  AND cs.generation_name = '더 뉴 티볼리'
  AND cs.model_year = '26년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1597
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 1680, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253722&gubun=K', 0, 54000, '흰색', 35
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '티볼리'
  AND cs.generation_name = '더 뉴 티볼리'
  AND cs.model_year = '2023.03'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 999, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255148&gubun=K', 0, 69851, '청색', 96
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '티볼리'
  AND cs.generation_name = '티볼리'
  AND cs.model_year = '2018.02'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1597
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 699, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2250036&gubun=K', 0, 77130, '은색', 125
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '티볼리'
  AND cs.generation_name = '티볼리'
  AND cs.model_year = '16년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1597
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 999, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253511&gubun=K', 0, 37240, '흰색', 124
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '티볼리'
  AND cs.generation_name = '티볼리'
  AND cs.model_year = '16년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1597
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 450, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257119&gubun=K', 0, 109432, '흰색', 122
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '티볼리'
  AND cs.generation_name = '티볼리'
  AND cs.model_year = '16년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1597
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 20000, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2250869&gubun=K', 0, 17396, '노란색', 396
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '칼리스타'
  AND cs.generation_name = '칼리스타'
  AND cs.model_year = '1993.02'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 18000, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2247709&gubun=K', 0, 62000, '기타색상', 388
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '칼리스타'
  AND cs.generation_name = '칼리스타'
  AND cs.model_year = '1993.10'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256450&gubun=K', 1, 30, '검정색', 1
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '토레스'
  AND cs.generation_name = '토레스'
  AND cs.model_year = '2026.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256048&gubun=K', 1, 21563, '흰색', 23
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '토레스'
  AND cs.generation_name = '토레스'
  AND cs.model_year = '2024.03'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256447&gubun=K', 1, 17685, '흰색', 21
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '토레스'
  AND cs.generation_name = '토레스'
  AND cs.model_year = '2024.05'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 0, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256435&gubun=K', 1, 30, '흰색', 1
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '토레스'
  AND cs.generation_name = '토레스'
  AND cs.model_year = '2026.01'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2190, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256412&gubun=K', 0, 59691, '흰색', 38
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '토레스'
  AND cs.generation_name = '토레스'
  AND cs.model_year = '23년형'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 2490, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255658&gubun=K', 0, 47623, '검정색', 33
FROM car_specs cs
WHERE cs.maker_id = 6
  AND cs.model_name = '토레스'
  AND cs.generation_name = '토레스'
  AND cs.model_year = '2023.05'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '가솔린'
  AND cs.displacement_cc = 1497
  AND cs.transmission = 1
LIMIT 1;

INSERT INTO used_cars (car_spec_id, price, listing_url, is_lease, mileage_km, color_name, car_age_months)
SELECT cs.car_spec_id, 95, 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255765&gubun=K', 0, 176090, '검정색', 182
FROM car_specs cs
WHERE cs.maker_id = 8
  AND cs.model_name = '국산차'
  AND cs.generation_name = '국산차'
  AND cs.model_year = '2010.12'
  AND cs.trim_name = ''
  AND cs.drivetrain_type = '전륜'
  AND cs.fuel_type = '디젤'
  AND cs.displacement_cc = 1998
  AND cs.transmission = 1
LIMIT 1;

COMMIT;