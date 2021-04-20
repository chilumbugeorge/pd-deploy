

CREATE TABLE `event`(
	`ed_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`ed_event_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`ed_title` TEXT COLLATE utf8mb4_bin NOT NULL,
	`ed_generate_link` VARCHAR(50) COLLATE utf8mb4_bin NOT NULL,
	`ed_start_timestamp` DATETIME COLLATE utf8mb4_bin NOT NULL,
	`ed_end_timestamp` DATETIME COLLATE utf8mb4_bin NOT NULL,
	`ed_order_cutoff` INT(10) UNSIGNED NOT NULL,
	`ed_status` VARCHAR(10) COLLATE utf8mb4_bin NOT NULL,
	`ed_disabled` TINYINT(1) NOT NULL DEFAULT '0',
	`ed_create_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`ed_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`ed_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`ed_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY(`ed_id`)
	KEY `event_idx01`(`ed_event_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin;


CREATE TABLE `rel_event_product`(
	`lep_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`lep_event_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`lep_product_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`lep_sort` INT(10) NOT NULL,
	`lep_status` VARCHAR(10) COLLATE utf8mb4_bin NOT NULL,
	`lep_disabled` TINYINT(1) NOT NULL DEFAULT '0',
	`lep_create_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`lep_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`lep_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`lep_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY(`lep_id`)
	KEY `rel_event_product_idx01`(`lep_event_id`,`lep_product_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin;


CREATE TABLE `rel_event_seller`(
	`les_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`les_event_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`les_seller_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`les_disabled` TINYINT(1) NOT NULL DEFAULT '0',
	`les_create_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`les_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`les_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`les_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY(`les_id`)
	KEY `rel_event_seller_idx01`(`les_event_id`,`les_seller_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin;


CREATE TABLE `rel_event_shop`(
	`leh_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`leh_event_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`leh_shop_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`leh_disabled` TINYINT(1) NOT NULL DEFAULT '0',
	`leh_create_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`leh_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`leh_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`leh_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY(`leh_id`)
	KEY `rel_event_shop_idx01`(`leh_event_id`,`leh_shop_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin;


CREATE TABLE `rel_event_buyer`(
	`leb_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`leb_event_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`leb_buyer_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`leb_status` VARCHAR(10) COLLATE utf8mb4_bin NOT NULL,
	`leb_disabled` TINYINT(1) NOT NULL DEFAULT '0',
	`leb_create_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`leb_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`leb_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`leb_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY(`leb_id`)
	KEY `rel_event_buyer_idx01`(`leb_event_id`,`leb_buyer_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin;

