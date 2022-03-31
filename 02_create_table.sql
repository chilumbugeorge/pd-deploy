 

CREATE TABLE `psp_key` (
	`pk_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`pk_psp_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`pk_key_name` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`pk_key_value` VARCHAR(500) COLLATE utf8mb4_bin NOT NULL,
	`pk_disabled` TINYINT(1) NOT NULL DEFAULT '0',
	`pk_seller_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`pk_create_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`pk_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`pk_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`pk_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`pk_id`)
	KEY `psp_cost_idx01`(`pk_psp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;



CREATE TABLE `psp_detail` (
	`pd_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`pd_client_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`pd_psp_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`pd_psp_name` VARCHAR(50) COLLATE utf8mb4_bin NOT NULL,
	`pd_region` VARCHAR(2) COLLATE utf8mb4_bin NOT NULL,
	`pd_ccy` VARCHAR(3) COLLATE utf8mb4_bin NOT NULL,
	`pd_psp_domain` VARCHAR(250) COLLATE utf8mb4_bin NOT NULL,
	`pd_psp_txn_req_path` VARCHAR(250) COLLATE utf8mb4_bin NOT NULL,
	`pd_service_domain` VARCHAR(250) COLLATE utf8mb4_bin NOT NULL,
	`pd_service_request_path` VARCHAR(250) COLLATE utf8mb4_bin NOT NULL,
	`pd_service_response_path` VARCHAR(250) COLLATE utf8mb4_bin NOT NULL,
	`pd_service_callback_path` VARCHAR(250) COLLATE utf8mb4_bin NOT NULL,
	`pd_release_period`	INT(10) UNSIGNED NOT NULL ,
	`pd_status` VARCHAR(10) COLLATE utf8mb4_bin NOT NULL,
	`pd_disabled` TINYINT(1) NOT NULL DEFAULT '0',
	`pd_create_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`pd_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`pd_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`pd_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`pd_id`)
	UNIQUE `psp_detail_udx01`(`pd_psp_id`)
	KEY `psp_detail_idx01`(`pd_client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;



ALTER TABLE `txn_header`  
	ADD COLUMN `th_pay_method` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL AFTER th_update_timestamp ;


 

