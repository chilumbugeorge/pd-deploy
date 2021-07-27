CREATE TABLE `user_perm_assign`  (
  `ua_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,	 
  `ua_user_id` int(10) NOT NULL,
  `ua_perm_id` int(10) NOT NULL,
  `ua_disabled` TINYINT(1) NOT NULL DEFAULT 0 ,
  `ua_create_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `ua_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `ua_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `ua_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY(`ua_id`),
  KEY `user_perm_assign_idx01`(`ua_user_id`),
  KEY `user_perm_assign_idx02`(`ua_perm_id`) 
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin;