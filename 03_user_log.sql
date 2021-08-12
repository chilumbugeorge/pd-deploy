

CREATE TABLE `user_log`  (
  `ul_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ul_user_id` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `ul_ip_address` varchar(50) COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `ul_user_agent` varchar(200) COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `ul_dev_type` varchar(20) COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `ul_txn_code` varchar(20) COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `ul_disabled` tinyint(1) NOT NULL DEFAULT 0,
  `ul_create_user` varchar(20) COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `ul_create_timestamp` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ul_update_user` varchar(20) COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `ul_update_timestamp` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ul_id`),
  INDEX `user_log_idx01`(`ul_user_id`),
  INDEX `user_log_idx02`(`ul_ip_address`),
  INDEX `user_log_idx03`(`ul_dev_type`)
) ENGINE = InnoDB DEFAULT CHARSET=utf8mb4 COLLATE = utf8mb4_bin;
