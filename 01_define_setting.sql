

CREATE TABLE `def_precal_type` (
	`pt_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`pt_code` VARCHAR(10) COLLATE utf8mb4_bin NOT NULL,
	`pt_desc` VARCHAR(50) COLLATE utf8mb4_bin NOT NULL,
	`pt_disabled` TINYINT(1) NOT NULL DEFAULT '0',
	`pt_create_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`pt_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`pt_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`pt_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`pt_id`)
	UNIQUE `def_precal_type_udx01`(`pt_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;


CREATE TABLE `def_payment_type` (
	`pm_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`pm_code` VARCHAR(10) COLLATE utf8mb4_bin NOT NULL,
	`pm_desc` VARCHAR(50) COLLATE utf8mb4_bin NOT NULL,
	`pm_disabled` TINYINT(1) NOT NULL DEFAULT '0',
	`pm_create_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`pm_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`pm_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`pm_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`pm_id`)
	UNIQUE `def_payment_type_udx01`(`pm_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;


CREATE TABLE `def_api_type` (
	`at_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`at_code` VARCHAR(10) COLLATE utf8mb4_bin NOT NULL,
	`at_desc` VARCHAR(50) COLLATE utf8mb4_bin NOT NULL,
	`at_disabled` TINYINT(1) NOT NULL DEFAULT '0',
	`at_create_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`at_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`at_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`at_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`at_id`)
	UNIQUE `def_api_type_udx01`(`at_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;


CREATE TABLE `def_log_type` (
	`lt_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`lt_code` VARCHAR(10) COLLATE utf8mb4_bin NOT NULL,
	`lt_desc` VARCHAR(50) COLLATE utf8mb4_bin NOT NULL,
	`lt_disabled` TINYINT(1) NOT NULL DEFAULT '0',
	`lt_create_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`lt_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`lt_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`lt_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`lt_id`)
	UNIQUE `def_log_type_udx01`(`lt_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;


CREATE TABLE `def_lsp_status_group` (
	`sg_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`sg_code` VARCHAR(10) COLLATE utf8mb4_bin NOT NULL,
	`sg_desc` VARCHAR(50) COLLATE utf8mb4_bin NOT NULL,
	`sg_disabled` TINYINT(1) NOT NULL DEFAULT '0',
	`sg_create_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`sg_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`sg_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`sg_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`sg_id`)
	UNIQUE `def_lsp_status_group_udx01`(`sg_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;


CREATE TABLE `lsp_status_map` (
	`sm_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`sm_int_code` VARCHAR(10) COLLATE utf8mb4_bin NOT NULL,
	`sm_status_code` VARCHAR(10) COLLATE utf8mb4_bin NOT NULL,
	`sm_status_desc` VARCHAR(250) COLLATE utf8mb4_bin NOT NULL,
	`sm_group_code` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`sm_disabled` TINYINT(1) NOT NULL DEFAULT '0',
	`sm_create_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`sm_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`sm_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`sm_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`sm_id`)
	KEY `lsp_status_map_idx01`(`sm_int_code`)
	KEY `lsp_status_map_idx02`(`sm_status_code`)
	KEY `lsp_status_map_idx03`(`sm_group_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

