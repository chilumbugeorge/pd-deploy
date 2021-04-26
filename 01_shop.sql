

CREATE TABLE `rel_shop_buyer` (
	`sb_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`sb_shop_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`sb_buyer_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`sb_disabled` TINYINT(1) NOT NULL DEFAULT '0',
	`sb_create_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`sb_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`sb_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`sb_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`sb_id`)
	KEY `rel_shop_buyer_idx01`(`sb_shop_id`,`sb_buyer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

