USE mysql;

-- =========================================================
-- Grant privileges for application users
-- =========================================================

-- dev_admin:
-- Used for development and schema management (e.g., PyCharm, admin tasks)
-- Has full privileges only on used_car_db
GRANT ALL PRIVILEGES
    ON used_car_db.*
    TO 'dev_admin'@'%';


-- ingest_user:
-- Used for data ingestion and updates during Phase1 / Phase1.5
-- Can read existing data and insert/update new records
GRANT
    SELECT,
        INSERT,
        UPDATE
        ON used_car_db.*
    TO 'ingest_user'@'%';


-- read_user:
-- Used for read-only access (e.g., Streamlit, analytics, reporting)
-- Write operations are intentionally not allowed
GRANT
    SELECT
        ON used_car_db.*
    TO 'read_user'@'%';


-- Apply privilege changes
FLUSH PRIVILEGES;
