
CREATE TABLE `user_log`  (
  `ul_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ul_user_id` varchar(20) NOT NULL,
  `ul_ip_address` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `ul_user_agent` varchar(200)  COLLATE utf8mb4_bin DEFAULT NULL,
  `ul_dev_type` varchar(20)  COLLATE utf8mb4_bin DEFAULT NULL,
  `ul_txn_code` varchar(20)  COLLATE utf8mb4_bin DEFAULT NULL,
  `ul_disabled` TINYINT(1) NOT NULL DEFAULT 0 ,
  `ul_create_user` VARCHAR(20)  COLLATE utf8mb4_bin DEFAULT NULL,
  `ul_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `ul_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `ul_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY(`ul_id`),
  KEY `user_log_idx01`(`ul_user_id`),
  KEY `user_log_idx02`(`ul_ip_address`),
  KEY `user_log_idx03`(`ul_dev_type`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin;