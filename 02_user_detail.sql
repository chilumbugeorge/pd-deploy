

CREATE TABLE `user_detail`  (
  `ud_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ud_login_type` varchar(10) COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `ud_login_type_id` varchar(50) COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `ud_user_id` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `ud_username` varchar(20) COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `ud_email` varchar(300) COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `ud_display_name` varchar(20) COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `ud_user_status` tinyint(1) NOT NULL DEFAULT 1,
  `ud_first_name` varchar(20) COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `ud_last_name` varchar(20) COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `ud_locked` tinyint(1) NOT NULL DEFAULT 0,
  `ud_fail_count` int(11) NULL DEFAULT NULL,
  `ud_disabled` tinyint(1) NOT NULL DEFAULT 0,
  `ud_create_user` varchar(20) COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `ud_create_timestamp` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ud_update_user` varchar(20) COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `ud_update_timestamp` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ud_id`),
  INDEX `user_detail_idx01`(`ud_login_type`, `ud_login_type_id`),
  INDEX `user_detail_idx02`(`ud_user_id`),
  INDEX `user_detail_idx03`(`ud_username`),
  INDEX `user_detail_idx04`(`ud_email`)
) ENGINE = InnoDB DEFAULT CHARSET=utf8mb4 COLLATE = utf8mb4_bin;
 