

CREATE TABLE `settlement_detail` (
	`sd_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`sd_txn_date` VARCHAR(8) COLLATE utf8mb4_bin NOT NULL,
	`sd_merchant_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`sd_ccy` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`sd_amt` decimal(11,4) NOT NULL,
	`sd_acct_region` VARCHAR(2) COLLATE utf8mb4_bin NOT NULL,
	`sd_acct_ccy` VARCHAR(3) COLLATE utf8mb4_bin NOT NULL,
	`sd_bank_name` VARCHAR(255) COLLATE utf8mb4_bin NOT NULL,
	`sd_holder_name` VARCHAR(50) COLLATE utf8mb4_bin NOT NULL,
	`sd_holder_id` VARCHAR(10) COLLATE utf8mb4_bin NOT NULL,
	`sd_acct_num` VARCHAR(50) COLLATE utf8mb4_bin NOT NULL,
	`sd_branch` VARCHAR(255) COLLATE utf8mb4_bin NOT NULL,
	`sd_city` VARCHAR(255) COLLATE utf8mb4_bin NOT NULL,
	`sd_district` VARCHAR(255) COLLATE utf8mb4_bin NOT NULL,
	`sd_status` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`sd_disabled` TINYINT(1) NOT NULL DEFAULT '0',
	`sd_create_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`sd_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`sd_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`sd_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`sd_id`),
	KEY `settlement_detail_idx01`(`sd_txn_date`),
	KEY `settlement_detail_idx02`(`sd_merchant_id`),
	KEY `settlement_detail_idx03`(`sd_ccy`) ,
	KEY `settlement_detail_idx04`(`sd_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

