-- 개발/관리용
CREATE USER IF NOT EXISTS 'dev_admin'@'%'
    IDENTIFIED BY 'dev_admin_pw';

-- 수집용 (input/write)
CREATE USER IF NOT EXISTS 'ingest_user'@'%'
    IDENTIFIED BY 'ingest_user_dev_01';

-- 조회 전용 (output / read)
CREATE USER IF NOT EXISTS 'read_user'@'%'
    IDENTIFIED BY 'read_user_dev_01';