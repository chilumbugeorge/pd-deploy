

CREATE TABLE `verify_phone`(
	`rp_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`rp_party_type` VARCHAR(10) COLLATE utf8mb4_bin NOT NULL,
	`rp_region_prefix` VARCHAR(4) COLLATE utf8mb4_bin NOT NULL,
	`rp_phone_num` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`rp_verify_code` VARCHAR(10) COLLATE utf8mb4_bin NOT NULL,
	`rp_verify_type` VARCHAR(10) COLLATE utf8mb4_bin NOT NULL,
	`rp_disabled` TINYINT(1) NOT NULL DEFAULT '0',
	`rp_create_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`rp_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`rp_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`rp_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY(`rp_id`),
	KEY `kyc_bank_acct_idx01`(`rp_region_prefix`,`rp_phone_num`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin;

