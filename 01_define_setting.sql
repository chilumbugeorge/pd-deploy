

CREATE TABLE `def_packing_type`(
	`dp_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`dp_code` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`dp_region` VARCHAR(2) COLLATE utf8mb4_bin NOT NULL,
	`dp_lg_type` VARCHAR(10) COLLATE utf8mb4_bin NOT NULL,
	`dp_lg_sub_type` VARCHAR(10) COLLATE utf8mb4_bin NOT NULL,
	`dp_desc` VARCHAR(50) COLLATE utf8mb4_bin NOT NULL,
	`dp_disabled` TINYINT(1) NOT NULL DEFAULT '0',
	`dp_create_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`dp_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`dp_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`dp_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY(`dp_id`)
	KEY `def_packing_type_udx01`(`dp_code`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin;

