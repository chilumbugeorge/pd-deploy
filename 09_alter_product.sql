

ALTER TABLE product
	DROP COLUMN `pd_price`;


ALTER TABLE product_detail
	ADD COLUMN `pt_price` DECIMAL(11,4) NOT NULL AFTER pt_style_desc;


ALTER TABLE product_image
	ADD COLUMN `pi_image_type` VARCHAR(10) COLLATE utf8mb4_bin NOT NULL AFTER pi_generate_link;


ALTER TABLE product_shipping
	DROP INDEX `product_shipping_idx02`,
	DROP COLUMN `ps_region`,
	DROP COLUMN `ps_lg_type`,
	DROP COLUMN `ps_lg_sub_type`,
	DROP COLUMN `ps_shipping_price`,
	ADD COLUMN `ps_region_lg_code` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL AFTER ps_product_id,
	MODIFY COLUMN `ps_packing` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	ADD KEY `product_shipping_idx02`(`ps_region_lg_code`),
	ADD KEY `product_shipping_idx03`(`ps_packing`);

