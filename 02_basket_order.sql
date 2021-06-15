

CREATE TABLE `order_detail_status_log` (
	`osl_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`osl_order_detail_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`osl_status` VARCHAR(10) COLLATE utf8mb4_bin NOT NULL,
	`osl_disabled` TINYINT(1) NOT NULL DEFAULT '0',
	`osl_create_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`osl_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`osl_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`osl_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`osl_id`)
	KEY `order_detail_status_log_idx01`(`osl_order_detail_id`)
	KEY `order_detail_status_log_idx02`(`osl_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;


CREATE TABLE `order_lsp_detail` (
	`old_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`old_order_detail_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`old_lsp_shipping_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`old_txn_ccy` VARCHAR(3) COLLATE utf8mb4_bin NOT NULL,
	`old_txn_amt` DECIMAL(11,4) NOT NULL DEFAULT '0',
	`old_txn_cost` DECIMAL(11,4) NOT NULL DEFAULT '0',
	`old_lsp_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`old_status` VARCHAR(10) COLLATE utf8mb4_bin NOT NULL,
	`old_disabled` TINYINT(1) NOT NULL DEFAULT '0',
	`old_create_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`old_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`old_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`old_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`old_id`)
	KEY `order_lsp_detail_idx01`(`old_order_detail_id`)
	KEY `order_lsp_detail_idx02`(`old_lsp_shipping_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;


CREATE TABLE `order_lsp_api_log` (
	`oll_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`oll_order_detail_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`oll_api_type` VARCHAR(10) COLLATE utf8mb4_bin NOT NULL,
	`oll_log_type` VARCHAR(10) COLLATE utf8mb4_bin NOT NULL,
	`oll_return_val` TEXT COLLATE utf8mb4_bin NOT NULL,
	`oll_disabled` TINYINT(1) NOT NULL DEFAULT '0',
	`oll_create_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`oll_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`oll_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`oll_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`oll_id`)
	KEY `order_lsp_api_log_idx01`(`oll_order_detail_id`)
	KEY `order_lsp_api_log_idx02`(`oll_api_type`)
	KEY `order_lsp_api_log_idx03`(`oll_log_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

