

CREATE TABLE `lsp_client` (
	`lc_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`lc_client_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`lc_client_name` VARCHAR(50) COLLATE utf8mb4_bin NOT NULL,
	`lc_status` VARCHAR(10) COLLATE utf8mb4_bin NOT NULL,
	`lc_disabled` TINYINT(1) NOT NULL DEFAULT '0',
	`lc_create_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`lc_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`lc_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`lc_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`lc_id`)
	KEY `lsp_client_udx01`(`lc_client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;


CREATE TABLE `lsp_detail` (
	`ld_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`ld_client_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`ld_lsp_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`ld_lsp_name` VARCHAR(50) COLLATE utf8mb4_bin NOT NULL,
	`ld_region` VARCHAR(2) COLLATE utf8mb4_bin NOT NULL,
	`ld_ccy` VARCHAR(3) COLLATE utf8mb4_bin NOT NULL,
	`ld_lsp_domain` VARCHAR(250) COLLATE utf8mb4_bin NOT NULL,
	`ld_lsp_txn_req_path` VARCHAR(250) COLLATE utf8mb4_bin NOT NULL,
	`ld_service_domain` VARCHAR(250) COLLATE utf8mb4_bin NOT NULL,
	`ld_service_request_path` VARCHAR(250) COLLATE utf8mb4_bin NOT NULL,
	`ld_service_response_path` VARCHAR(250) COLLATE utf8mb4_bin NOT NULL,
	`ld_service_callback_path` VARCHAR(250) COLLATE utf8mb4_bin NOT NULL,
	`ld_status` VARCHAR(10) COLLATE utf8mb4_bin NOT NULL,
	`ld_disabled` TINYINT(1) NOT NULL DEFAULT '0',
	`ld_create_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`ld_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`ld_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`ld_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`ld_id`)
	UNIQUE `lsp_detail_udx01`(`ld_lsp_id`)
	KEY `lsp_detail_idx01`(`ld_client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;


CREATE TABLE `lsp_key` (
	`lk_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`lk_lsp_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`lk_key_name` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`lk_key_value` VARCHAR(500) COLLATE utf8mb4_bin NOT NULL,
	`lk_disabled` TINYINT(1) NOT NULL DEFAULT '0',
	`lk_create_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`lk_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`lk_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`lk_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`lk_id`)
	KEY `lsp_key_idx01`(`lk_lsp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

