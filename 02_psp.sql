

CREATE TABLE `psp_balance` (
	`pb_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`pb_psp_id` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`pb_ccy` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`pb_current_bal` decimal(11,4) NOT NULL,
	`pb_available_bal` decimal(11,4) NOT NULL,
	`pb_holding_bal` decimal(11,4) NOT NULL,
	`pb_disabled` TINYINT(1) NOT NULL DEFAULT '0',
	`pb_create_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`pb_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`pb_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`pb_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`pb_id`)
	KEY `psp_balance_idx01`(`pb_psp_id`,`pb_ccy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

