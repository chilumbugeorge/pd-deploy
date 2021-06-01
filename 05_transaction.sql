

CREATE TABLE `txn_header` (
	`th_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`th_txn_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`th_org_txn_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`th_req_ccy` VARCHAR(3) COLLATE utf8mb4_bin NOT NULL,
	`th_req_amt` DECIMAL(11,4) NOT NULL DEFAULT '0',
	`th_ex_rate` DECIMAL(11,4) NOT NULL DEFAULT '0',
	`th_txn_ccy` VARCHAR(3) COLLATE utf8mb4_bin NOT NULL,
	`th_txn_amt` DECIMAL(11,4) NOT NULL DEFAULT '0',
	`th_txn_fee` DECIMAL(11,4) NOT NULL DEFAULT '0',
	`th_status` VARCHAR(10) COLLATE utf8mb4_bin NOT NULL,
	`th_merchant_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`th_txn_type` VARCHAR(10) COLLATE utf8mb4_bin NOT NULL,
	`th_order_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`th_disabled` TINYINT(1) NOT NULL DEFAULT '0',
	`th_create_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`th_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`th_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`th_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`th_id`)
	UNIQUE `txn_header_udx01`(`th_txn_id`)
	KEY `txn_header_idx01`(`th_org_txn_id`)
	KEY `txn_header_idx02`(`th_merchant_id`)
	KEY `txn_header_idx03`(`th_order_id`)
	KEY `txn_header_idx04`(`th_txn_type`)
	KEY `txn_header_idx05`(`th_status`)
	KEY `txn_header_idx06`(`th_create_timestamp`)
	KEY `txn_header_idx07`(`th_update_timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;


CREATE TABLE `txn_psp_detail` (
	`tp_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`tp_txn_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`tp_txn_ccy` VARCHAR(3) COLLATE utf8mb4_bin NOT NULL,
	`tp_txn_amt` DECIMAL(11,4) NOT NULL DEFAULT '0',
	`tp_txn_cost` DECIMAL(11,4) NOT NULL DEFAULT '0',
	`tp_psp_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`tp_psp_txn_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`tp_psp_create_timestamp` DATETIME NULL ,
	`tp_disabled` TINYINT(1) NOT NULL DEFAULT '0',
	`tp_create_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`tp_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`tp_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`tp_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`tp_id`)
	KEY `txn_psp_detail_idx01`(`tp_txn_id`)
	KEY `txn_psp_detail_idx02`(`tp_psp_txn_id`)
	KEY `txn_psp_detail_idx03`(`tp_psp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;


CREATE TABLE `txn_psp_api_log` (
	`tpl_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`tpl_txn_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`tpl_api_type` VARCHAR(10) COLLATE utf8mb4_bin NOT NULL,
	`tpl_log_type` VARCHAR(10) COLLATE utf8mb4_bin NOT NULL,
	`tpl_return_val` TEXT COLLATE utf8mb4_bin NOT NULL,
	`tpl_disabled` TINYINT(1) NOT NULL DEFAULT '0',
	`tpl_create_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`tpl_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`tpl_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`tpl_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`tpl_id`)
	KEY `txn_psp_api_log_idx01`(`tpl_txn_id`)
	KEY `txn_psp_api_log_idx02`(`tpl_api_type`)
	KEY `txn_psp_api_log_idx03`(`tpl_log_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

