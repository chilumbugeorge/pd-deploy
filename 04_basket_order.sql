

CREATE TABLE `basket` (
	`ba_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`ba_basket_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`ba_buyer_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`ba_shop_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`ba_ccy` VARCHAR(3) COLLATE utf8mb4_bin NOT NULL,
	`ba_disabled` TINYINT(1) NOT NULL DEFAULT '0',
	`ba_create_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`ba_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`ba_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`ba_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`ba_id`),
	KEY `basket_idx01`(`ba_basket_id`),
	KEY `basket_idx02`(`ba_buyer_id`),
	KEY `basket_idx03`(`ba_shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;


CREATE TABLE `basket_detail` (
	`bd_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`bd_basket_detail_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`bd_basket_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`bd_event_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`bd_product_detail_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`bd_bid_price` DECIMAL(11,4) DEFAULT NULL,
	`bd_bid_quantity` INT(10) UNSIGNED DEFAULT 1,
	`bd_status` VARCHAR(10) COLLATE utf8mb4_bin NOT NULL,
	`bd_disabled` TINYINT(1) NOT NULL DEFAULT '0',
	`bd_create_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`bd_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`bd_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`bd_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`bd_id`),
	KEY `basket_detail_idx01`(`bd_basket_detail_id`),
	KEY `basket_detail_idx02`(`bd_basket_id`),
	KEY `basket_detail_idx03`(`bd_product_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;


CREATE TABLE `order_header` (
	`oh_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`oh_order_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`oh_buyer_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`oh_ccy` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`oh_tol_amt` DECIMAL(11,4) DEFAULT NULL,
	`oh_tol_shipping` DECIMAL(11,4) DEFAULT NULL,
	`oh_unified_number` VARCHAR(10) COLLATE utf8mb4_bin DEFAULT NULL,
	`oh_invoice_number` VARCHAR(50) COLLATE utf8mb4_bin DEFAULT NULL,
	`oh_status` VARCHAR(10) COLLATE utf8mb4_bin NOT NULL,
	`oh_disabled` TINYINT(1) NOT NULL DEFAULT '0',
	`oh_create_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`oh_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`oh_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`oh_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`oh_id`),
	KEY `order_header_idx01`(`oh_order_id`),
	KEY `order_header_idx02`(`oh_buyer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;


CREATE TABLE `order_detail` (
	`od_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`od_order_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`od_order_detail_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`od_basket_detail_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`od_amt` DECIMAL(11,4) DEFAULT NULL,
	`od_shipping_amt` DECIMAL(11,4) DEFAULT NULL,
	`od_region_lg_code` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`od_lsp_shipping_id` VARCHAR(50) COLLATE utf8mb4_bin NOT NULL,
	`od_name` VARCHAR(50) COLLATE utf8mb4_bin NOT NULL,
	`od_prefix` VARCHAR(6) COLLATE utf8mb4_bin NOT NULL,
	`od_phone_num` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`od_store_id` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`od_store_name` VARCHAR(50) COLLATE utf8mb4_bin DEFAULT NULL,
	`od_store_phone` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`od_store_address` VARCHAR(500) COLLATE utf8mb4_bin DEFAULT NULL,
	`od_zip_code` VARCHAR(10) COLLATE utf8mb4_bin DEFAULT NULL,
	`od_own_addr` VARCHAR(500) COLLATE utf8mb4_bin DEFAULT NULL,
	`od_own_city` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`od_own_district` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`od_status` VARCHAR(10) COLLATE utf8mb4_bin NOT NULL,
	`od_disabled` TINYINT(1) NOT NULL DEFAULT '0',
	`od_create_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`od_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`od_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`od_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`od_id`),
	KEY `order_detail_idx01`(`od_order_id`),
	KEY `order_detail_idx02`(`od_order_detail_id`),
	KEY `order_detail_idx03`(`od_basket_detail_id`),
	KEY `order_detail_idx04`(`od_region_lg_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

