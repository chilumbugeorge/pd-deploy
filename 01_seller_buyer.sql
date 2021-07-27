

CREATE TABLE `merchant_balance` (
	`mb_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`mb_merchant_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`mb_ccy` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`mb_current_bal` decimal(11,4) NOT NULL,
	`mb_available_bal` decimal(11,4) NOT NULL,
	`mb_dispute_bal` decimal(11,4) NOT NULL,
	`mb_holding_bal` decimal(11,4) NOT NULL,
	`mb_disabled` TINYINT(1) NOT NULL DEFAULT '0',
	`mb_create_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`mb_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`mb_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`mb_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`mb_id`)
	KEY `merchant_balance_idx01`(`mb_merchant_id`,`mb_ccy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;


CREATE TABLE `merchant_bucket` (
	`mk_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`mk_txn_date` VARCHAR(8) COLLATE utf8mb4_bin NOT NULL,
	`mk_merchant_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`mk_shop_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`mk_ccy` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`mk_total_amt` decimal(11,4) NOT NULL,
	`mk_remain_amt` decimal(11,4) NOT NULL,
	`mk_disabled` TINYINT(1) NOT NULL DEFAULT '0',
	`mk_create_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`mk_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`mk_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`mk_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`mk_id`)
	KEY `merchant_bucket_idx01`(`mk_txn_date`,`mk_merchant_id`,`mk_shop_id`,`mk_ccy`)
	KEY `merchant_bucket_idx02`(`mk_merchant_id`,`mk_ccy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;


CREATE TABLE `merchant_bucket_history` (
	`mh_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`mh_txn_date` VARCHAR(8) COLLATE utf8mb4_bin NOT NULL,
	`mh_merchant_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`mh_txn_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`mh_ccy` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`mh_amt_type` VARCHAR(5) COLLATE utf8mb4_bin NOT NULL,
	`mh_amt` decimal(11,4) NOT NULL,
	`mh_disabled` TINYINT(1) NOT NULL DEFAULT '0',
	`mh_create_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`mh_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`mh_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`mh_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`mh_id`)
	KEY `merchant_bucket_idx01`(`mh_txn_date`,`mh_merchant_id`,`mh_txn_id`,`mh_ccy`)
	KEY `merchant_bucket_idx02`(`mh_merchant_id`,`mh_ccy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

