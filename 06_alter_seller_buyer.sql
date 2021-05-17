

ALTER TABLE buyer_ship_addr
	DROP COLUMN `ba_region`,
	DROP COLUMN `ba_lg_type`,
	DROP COLUMN `ba_lg_sub_type`,
	ADD COLUMN `ba_region_lg_code` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL AFTER ba_buyer_id;

