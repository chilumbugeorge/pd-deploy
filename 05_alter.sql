

ALTER TABLE shop
	ADD `sh_merchant_id` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL AFTER sh_desc;


ALTER TABLE shop_addr
	ADD `sa_lg_type` VARCHAR(10) COLLATE utf8mb4_bin NOT NULL AFTER sa_address_id;


ALTER TABLE shop_addr
	ADD `sa_postal_code` VARCHAR(50) COLLATE utf8mb4_bin DEFAULT NULL AFTER sa_district;


ALTER TABLE shop_lg_setting
	ADD `sl_shop_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL AFTER sl_id;


ALTER TABLE shop_lg_setting
	DROP KEY shop_lg_setting_idx01;


ALTER TABLE shop_lg_setting
	ADD KEY `shop_lg_setting_idx01`(`sl_shop_id`);


ALTER TABLE shop_lg_setting
	ADD KEY `shop_lg_setting_idx02`(`sl_region`,`sl_lg_type`,`sl_lg_sub_type`);

