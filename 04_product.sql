

CREATE TABLE `product`(
	`pd_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`pd_product_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`pd_name` VARCHAR(50) COLLATE utf8mb4_bin NOT NULL,
	`pd_price` DECIMAL(11,4) NOT NULL,
	`pd_desc` VARCHAR(500) COLLATE utf8mb4_bin DEFAULT NULL,
	`pd_length` DECIMAL(11,4) DEFAULT NULL,
	`pd_width` DECIMAL(11,4) DEFAULT NULL,
	`pd_height` DECIMAL(11,4) DEFAULT NULL,
	`pd_weight` DECIMAL(11,4) DEFAULT NULL,
	`pd_generate_link` VARCHAR(50) COLLATE utf8mb4_bin NOT NULL,
	`pd_status` VARCHAR(10) COLLATE utf8mb4_bin NOT NULL,
	`pd_disabled` TINYINT(1) NOT NULL DEFAULT '0',
	`pd_create_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`pd_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`pd_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`pd_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY(`pd_id`)
	KEY `product_idx01`(`pd_product_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin;


CREATE TABLE `product_detail`(
	`pt_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`pt_product_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`pt_product_detail_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`pt_style_desc` VARCHAR(250) COLLATE utf8mb4_bin NOT NULL,
	`pt_quantity` INT(10) UNSIGNED DEFAULT NULL,
	`pt_disabled` TINYINT(1) NOT NULL DEFAULT '0',
	`pt_create_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`pt_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`pt_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`pt_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY(`pt_id`)
	KEY `product_detail_idx01`(`pt_product_id`)
	KEY `product_detail_idx02`(`pt_product_detail_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin;


CREATE TABLE `rel_shop_product`(
	`lsp_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`lsp_shop_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`lsp_product_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`lsp_disabled` TINYINT(1) NOT NULL DEFAULT '0',
	`lsp_create_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`lsp_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`lsp_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`lsp_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY(`lsp_id`)
	KEY `rel_shop_product_idx01`(`lsp_shop_id`,`lsp_product_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin;


CREATE TABLE `product_image`(
	`pi_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`pi_product_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`pi_image_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`pi_generate_link` VARCHAR(50) COLLATE utf8mb4_bin NOT NULL,
	`pi_disabled` TINYINT(1) NOT NULL DEFAULT '0',
	`pi_create_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`pi_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`pi_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`pi_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY(`pi_id`)
	KEY `product_image_idx01`(`pi_product_id`)
	KEY `product_image_idx02`(`pi_image_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin;


CREATE TABLE `product_shipping`(
	`ps_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`ps_product_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`ps_region` VARCHAR(2) COLLATE utf8mb4_bin NOT NULL,
	`ps_lg_type` VARCHAR(10) COLLATE utf8mb4_bin NOT NULL,
	`ps_lg_sub_type` VARCHAR(10) COLLATE utf8mb4_bin NOT NULL,
	`ps_shipping_price` DECIMAL(11,4) DEFAULT NULL,
	`ps_paid_by` VARCHAR(10) COLLATE utf8mb4_bin DEFAULT NULL,
	`ps_packing` VARCHAR(10) COLLATE utf8mb4_bin DEFAULT NULL,
	`ps_support` TINYINT(1) NOT NULL,
	`ps_disabled` TINYINT(1) NOT NULL DEFAULT '0',
	`ps_create_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`ps_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`ps_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`ps_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY(`ps_id`)
	KEY `product_shipping_idx01`(`ps_product_id`)
	KEY `product_shipping_idx02`(`ps_region`,`ps_lg_type`,`ps_lg_sub_type`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin;

