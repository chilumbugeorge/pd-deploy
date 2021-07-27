CREATE TABLE `user_detail`  (
  `ud_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT, 
  `ud_login_type` VARCHAR(10)  COLLATE utf8mb4_bin DEFAULT NULL,
  `ud_login_type_id` VARCHAR(50)  COLLATE utf8mb4_bin DEFAULT NULL,
  `ud_user_id` VARCHAR(20) NOT NULL,
  `ud_username` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `ud_email` VARCHAR(300)  COLLATE utf8mb4_bin DEFAULT NULL,
  `ud_display_name` VARCHAR(20)  COLLATE utf8mb4_bin DEFAULT NULL,
  `ud_user_status` TINYINT(1) NOT NULL DEFAULT 1 ,
  `ud_first_name` VARCHAR(20)  COLLATE utf8mb4_bin DEFAULT NULL,
  `ud_last_name` VARCHAR(20)  COLLATE utf8mb4_bin DEFAULT NULL,
  `ud_locked` TINYINT(1) NOT NULL DEFAULT 0 ,
  `ud_fail_count` INT(11) NULL DEFAULT NULL,
  `ud_disabled` TINYINT(1) NOT NULL DEFAULT 0 ,
  `ud_create_user` VARCHAR(20)  COLLATE utf8mb4_bin DEFAULT NULL,
  `ud_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `ud_update_user` VARCHAR(20)  COLLATE utf8mb4_bin DEFAULT NULL,
  `ud_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY(`ud_id`),
  KEY `user_detail_idx01`(`ud_login_type`,`ud_login_type_id`),
  KEY `user_detail_idx02`(`ud_user_id`),
  KEY `user_detail_idx03`(`ud_username`),
  KEY `user_detail_idx04`(`ud_email`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin;

 