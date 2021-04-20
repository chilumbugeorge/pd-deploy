

CREATE TABLE `cs_support_log`(
	`cs_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`cs_support_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`cs_party_type` VARCHAR(10) COLLATE utf8mb4_bin NOT NULL,
	`cs_party_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`cs_support_type` VARCHAR(10) COLLATE utf8mb4_bin NOT NULL,
	`cs_title` VARCHAR(50) COLLATE utf8mb4_bin NOT NULL,
	`cs_content` TEXT COLLATE utf8mb4_bin NOT NULL,
	`cs_disabled` TINYINT(1) NOT NULL DEFAULT '0',
	`cs_create_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`cs_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`cs_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`cs_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY(`cs_id`)
	KEY `cs_support_log_idx01`(`cs_support_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin;


CREATE TABLE `notification_message`(
	`nm_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`nm_message_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`nm_party_type` VARCHAR(10) COLLATE utf8mb4_bin NOT NULL,
	`nm_party_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`nm_function` VARCHAR(10) COLLATE utf8mb4_bin NOT NULL,
	`nm_request_content` TEXT COLLATE utf8mb4_bin NOT NULL,
	`nm_message` TEXT COLLATE utf8mb4_bin NOT NULL,
	`nm_checked` TINYINT(1) NOT NULL DEFAULT '0',
	`nm_checked_timestamp` DATETIME DEFAULT NULL,
	`nm_push_id` VARCHAR(30) COLLATE utf8mb4_bin DEFAULT NULL,
	`nm_disabled` TINYINT(1) NOT NULL DEFAULT '0',
	`nm_create_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`nm_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`nm_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`nm_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY(`nm_id`)
	KEY `notification_message_idx01`(`nm_message_id`)
	KEY `notification_message_idx02`(`nm_party_type`,`nm_party_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin;

