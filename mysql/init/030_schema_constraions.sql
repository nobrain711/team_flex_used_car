-- database select
USE used_car_db;

-- =========================================================
-- 1) Primary Keys
-- =========================================================

-- table for makers
ALTER TABLE makers
    ADD CONSTRAINT pk_makers PRIMARY KEY (maker_id);

-- table for car_specs
ALTER TABLE car_specs
    ADD CONSTRAINT pk_car_specs PRIMARY KEY (car_spec_id);

-- table for used_cars
ALTER TABLE used_cars
    ADD CONSTRAINT pk_used_cars PRIMARY KEY (used_car_id);

-- table for car_specs
ALTER TABLE leases
    ADD CONSTRAINT pk_leases PRIMARY KEY (lease_id);


-- =========================================================
-- 2) Unique Constraints
-- =========================================================

-- 차량 1대당 리스 정보 1개라는 전제라면 UNIQUE 권장
ALTER TABLE leases
    ADD CONSTRAINT uq_leases_used_car UNIQUE (used_car_id);

-- 매물 URL이 중복 적재 방지 키(사이트 정책에 따라)
-- ALTER TABLE used_cars
--   ADD CONSTRAINT uq_used_cars_listing_url UNIQUE (listing_url);


-- =========================================================
-- 3) Foreign Keys
-- =========================================================

-- car_specs.maker_id references makers.maker_id
-- Each car specification belongs to a single manufacturer.
ALTER TABLE car_specs
    ADD CONSTRAINT fk_car_specs_makers
        FOREIGN KEY (maker_id) REFERENCES makers(maker_id);

-- used_cars.car_spec_id references car_specs.car_spec_id
-- Each used car is associated with one car specification.
ALTER TABLE used_cars
    ADD CONSTRAINT fk_used_cars_car_specs
        FOREIGN KEY (car_spec_id) REFERENCES car_specs(car_spec_id);

-- leases.used_car_id references used_cars.used_car_id
-- Lease information is linked to a specific used car listing.
ALTER TABLE leases
    ADD CONSTRAINT fk_leases_used_cars
        FOREIGN KEY (used_car_id) REFERENCES used_cars(used_car_id);


-- =========================================================
-- 4) Check Constraints (MySQL 8+)
-- =========================================================

-- maker_origin insert/update value check
ALTER TABLE makers
    ADD CONSTRAINT chk_makers_origin CHECK (maker_origin IN (0, 1));

-- is_lease check
ALTER TABLE used_cars
    ADD CONSTRAINT chk_used_cars_is_lease CHECK (is_lease IN (0, 1));

-- transmission insert/update value check
ALTER TABLE car_specs
    ADD CONSTRAINT chk_car_specs_transmission CHECK (transmission IN (0, 1));


-- =========================================================
-- 5) Indexes
-- =========================================================

-- Index for joining car_specs with makers
-- Used when filtering or joining car specifications by manufacturer.
CREATE INDEX idx_car_specs_maker_id
ON car_specs (maker_id);


-- Index for joining used_cars with car_specs
-- Used to efficiently retrieve used car listings by car specification.
CREATE INDEX idx_used_cars_car_spec_id
ON used_cars (car_spec_id);


-- Index for joining leases with used_cars
-- Used to quickly access lease information for a specific used car.
CREATE INDEX idx_leases_used_car_id
ON leases (used_car_id);