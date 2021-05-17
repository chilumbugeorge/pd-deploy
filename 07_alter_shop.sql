

ALTER TABLE shop_lg_setting
	DROP INDEX `shop_lg_setting_idx02`,
	DROP COLUMN `sl_region`,
	DROP COLUMN `sl_lg_type`,
	DROP COLUMN `sl_lg_sub_type`,
	ADD COLUMN `sl_region_lg_code` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL AFTER sl_shop_id,
	ADD KEY `shop_lg_setting_idx02`(`sl_region_lg_code`);

