-- =========================================================
-- 1) select database car_used_db
-- =========================================================
USE used_car_db;

-- =========================================================
-- 2) insert data for car_space table
-- =========================================================
-- SAFE INSERT: used_car 매칭 실패 행은 자동으로 스킵(0 rows inserted)
-- support_amount / monthly_rent_fee는 '만원 단위' (CSV *_wan 기준)
-- total_contract_months, handling_fee는 CSV에 컬럼이 없어 0으로 입력됨 (정보 부족)

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 200, 0, 0, 63, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253465&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 74, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256142&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 90, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257160&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 82, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257300&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 83, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253528&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 72, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251865&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 400, 0, 0, 60, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256668&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 300, 0, 0, 74, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257068&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 300, 0, 0, 79, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256407&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 62, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252588&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 62, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252811&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 300, 0, 0, 72, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255806&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 200, 0, 0, 80, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252247&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 0, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254299&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 250, 0, 0, 72, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2226859&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 250, 0, 0, 79, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2226925&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 300, 0, 0, 75, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2234192&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 85, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251630&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 300, 0, 0, 95, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255620&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 180, 0, 0, 67, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2249880&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 200, 0, 0, 71, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255710&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 200, 0, 0, 67, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254301&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 66, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255395&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 300, 0, 0, 74, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2229590&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 70, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257352&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 86, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253529&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 0, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256230&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 68, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252068&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 56, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257161&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 65, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251629&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 63, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256059&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 300, 0, 0, 45, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2248963&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 56, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2248128&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 44, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256510&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 100, 0, 0, 44, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2249950&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 300, 0, 0, 71, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2250239&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 48, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253925&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 0, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256189&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 62, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255782&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 200, 0, 0, 72, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2234194&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 74, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254419&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 57, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251808&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 49, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256623&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 200, 0, 0, 853930, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255528&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 100, 0, 0, 78, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2249302&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 100, 0, 0, 86, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2249410&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 120, 0, 0, 86, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2249699&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 150, 0, 0, 72, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2244854&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 150, 0, 0, 82, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255723&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 0, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255715&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 55, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256013&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 50, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257192&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 93, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256932&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 77, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2249575&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 74, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257334&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 0, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255705&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 78, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256051&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 200, 0, 0, 932000, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256304&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 44, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257299&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 37, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251863&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 0, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256868&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 0, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256557&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 300, 0, 0, 94, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2249207&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 0, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256663&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 500, 0, 0, 125, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256422&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 0, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255716&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 250, 0, 0, 120, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255615&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 500, 0, 0, 107, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2226841&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 0, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255905&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 300, 0, 0, 109, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2226852&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 300, 0, 0, 138, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2226858&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 300, 0, 0, 122, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2230178&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 250, 0, 0, 115, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2239634&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 500, 0, 0, 124, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2239431&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 300, 0, 0, 99, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252475&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 160, 0, 0, 88, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251396&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 100, 0, 0, 87, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255202&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 134000, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257307&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 200, 0, 0, 92, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255707&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 500, 0, 0, 96, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2247120&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 300, 0, 0, 86, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254242&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 95, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256625&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 125, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257278&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 0, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255467&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 87, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257367&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 77, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252205&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 200, 0, 0, 104, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256580&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 60, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256627&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 62, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257294&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 66, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257216&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 100, 0, 0, 49, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256662&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 200, 0, 0, 49, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2250511&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 130, 0, 0, 49, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2249409&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 135, 0, 0, 45, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2249700&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 63, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252035&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 300, 0, 0, 52, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254370&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 62, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255848&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 55, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2250235&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 63, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252236&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 42, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257064&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 44, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257297&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 10, 0, 0, 35, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257016&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 48, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257213&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 36, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257341&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 34, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257347&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 41, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257292&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 45, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2246082&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 0, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2245550&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 68, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254759&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 51, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256999&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 300, 0, 0, 62, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2253602&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 73, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254761&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 250, 0, 0, 62, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2226867&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 250, 0, 0, 61, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2231030&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 0, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2247311&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 250, 0, 0, 58, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2226862&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 70, 0, 0, 70, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251436&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 84, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2248217&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 85, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2242280&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 0, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256656&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 200, 0, 0, 68, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251893&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 400, 0, 0, 63, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256322&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 300, 0, 0, 66, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2247320&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 300, 0, 0, 71, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2226846&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 250, 0, 0, 67, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2228580&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 250, 0, 0, 76, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2229617&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 250, 0, 0, 62, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2242915&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 200, 0, 0, 64, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251077&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 200, 0, 0, 57, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255808&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 250, 0, 0, 62, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252584&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 64, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256444&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 250, 0, 0, 65, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254308&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 250, 0, 0, 70, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2247008&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 300, 0, 0, 76, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2246848&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 250, 0, 0, 82, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2226850&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 250, 0, 0, 82, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2232280&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 300, 0, 0, 78, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2234199&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 78, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2234348&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 250, 0, 0, 84, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2238659&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 200, 0, 0, 63, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251073&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 200, 0, 0, 68, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252916&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 200, 0, 0, 73, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252969&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 300, 0, 0, 77, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255810&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 150, 0, 0, 69, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2247736&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 550, 0, 0, 104, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2247734&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 450, 0, 0, 103, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2247729&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 170, 0, 0, 66, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2249878&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 160, 0, 0, 67, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251393&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 150, 0, 0, 71, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251394&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 180, 0, 0, 99, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251395&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 170, 0, 0, 64, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251982&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 250, 0, 0, 109, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2227209&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 500, 0, 0, 124, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2227749&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 300, 0, 0, 107, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2234191&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 300, 0, 0, 76, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2234286&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 150, 0, 0, 66, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2239422&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 200, 0, 0, 106, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2249938&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 300, 0, 0, 76, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252108&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 200, 0, 0, 65, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252914&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 54, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256622&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 58, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2248219&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 150, 0, 0, 49, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255703&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 80, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257293&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 0, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255717&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 150, 0, 0, 63, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2249530&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 200, 0, 0, 66, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255203&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 200, 0, 0, 52, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255706&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 100, 0, 0, 92, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256145&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 200, 0, 0, 68, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2241143&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 80, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256926&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 250, 0, 0, 73, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2244212&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 200, 0, 0, 68, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2252474&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 88, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257222&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 74, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257295&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 62, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2251053&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 0, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254303&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 54, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256934&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 62, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256037&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 61, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256041&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 51, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257085&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 0, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2255819&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 68, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2257194&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 49, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2254769&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 68, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256450&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 60, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256048&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 59, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256447&gubun=K'
LIMIT 1;

INSERT INTO leases (used_car_id, support_amount, remaining_months, total_contract_months, monthly_rent_fee, handling_fee)
SELECT uc.used_car_id, 0, 0, 0, 60, 0
FROM used_cars uc
WHERE uc.listing_url = 'https://bobaedream.co.kr/mycar/mycar_view.php?no=2256435&gubun=K'
LIMIT 1;


COMMIT;