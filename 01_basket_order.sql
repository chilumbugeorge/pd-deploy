

CREATE TABLE `order_return` (
	`or_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`or_order_detail_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`or_return_desc` TEXT COLLATE utf8mb4_bin NOT NULL,
	`or_refuse_desc` TEXT COLLATE utf8mb4_bin NOT NULL,
	`or_status` VARCHAR(10) COLLATE utf8mb4_bin NOT NULL,
	`or_disabled` TINYINT(1) NOT NULL DEFAULT '0',
	`or_create_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`or_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`or_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`or_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`or_id`)
	KEY `order_return_idx01`(`or_order_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

