

CREATE TABLE `def_verify_phone_type`(
	`dv_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`dv_code` VARCHAR(10) COLLATE utf8mb4_bin NOT NULL,
	`dv_desc` VARCHAR(50) COLLATE utf8mb4_bin NOT NULL,
	`dv_disabled` TINYINT(1) NOT NULL DEFAULT '0',
	`dv_create_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`dv_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`dv_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`dv_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY(`dv_id`),
	UNIQUE `def_verify_phone_type_udx01`(`dv_code`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin;

