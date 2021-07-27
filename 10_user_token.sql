CREATE TABLE `user_token`  (
  `ut_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ut_user_id` varchar(20)  COLLATE utf8mb4_bin DEFAULT NULL,
  `ut_device_type` varchar(3)  COLLATE utf8mb4_bin DEFAULT NULL,
  `ut_push_id` varchar(256) COLLATE utf8mb4_bin DEFAULT NULL,
  `ut_login_token` varchar(256)  COLLATE utf8mb4_bin DEFAULT NULL,
  `ut_token_expiry` datetime(0) NOT NULL,
  `ut_media_token` varchar(256)  COLLATE utf8mb4_bin DEFAULT NULL,
  `ut_create_user` VARCHAR(20)  COLLATE utf8mb4_bin DEFAULT NULL,
  `ut_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `ut_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `ut_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY(`ut_id`),
  KEY `user_perm_group_rel_idx01`(`ut_user_id`) ,
  KEY `user_perm_group_rel_idx02`(`ut_device_type`) 
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin;