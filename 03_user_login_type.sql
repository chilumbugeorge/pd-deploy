CREATE TABLE `user_login_type`  (
  `ut_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ut_login_type` varchar(20)  COLLATE utf8mb4_bin DEFAULT NULL,
  `ut_login_type_id` varchar(50)  COLLATE utf8mb4_bin DEFAULT NULL,
  `ut_username` varchar(50)  COLLATE utf8mb4_bin DEFAULT NULL,
  `ut_userpw` varchar(50)  COLLATE utf8mb4_bin DEFAULT NULL,
  `ut_user_detail_id` int(10) NOT NULL,
  `ut_disabled` TINYINT(1) NOT NULL DEFAULT 0 ,
  `ut_create_user` VARCHAR(20)  COLLATE utf8mb4_bin DEFAULT NULL,
  `ut_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `ut_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `ut_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY(`ut_id`),
  KEY `user_login_type_idx01`(`ut_login_type_id`),
  KEY `user_login_type_idx02`(`ut_user_detail_id`),
  KEY `user_login_type_idx03`(`ut_username`,`ut_userpw`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin;


