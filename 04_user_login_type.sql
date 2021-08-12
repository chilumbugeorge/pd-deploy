

CREATE TABLE `user_login_type`  (
  `ut_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ut_login_type` varchar(20) COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `ut_login_type_id` varchar(50) COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `ut_username` varchar(50) COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `ut_userpw` varchar(50) COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `ut_user_detail_id` int(10) NOT NULL,
  `ut_disabled` tinyint(1) NOT NULL DEFAULT 0,
  `ut_create_user` varchar(20) COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `ut_create_timestamp` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ut_update_user` varchar(20) COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `ut_update_timestamp` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ut_id`),
  INDEX `user_login_type_idx01`(`ut_login_type_id`),
  INDEX `user_login_type_idx02`(`ut_user_detail_id`),
  INDEX `user_login_type_idx03`(`ut_username`, `ut_userpw`)
) ENGINE = InnoDB DEFAULT CHARSET=utf8mb4 COLLATE = utf8mb4_bin;
