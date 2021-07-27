CREATE TABLE `user_perm`  (
  `up_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `up_sect_id` int(10) NOT NULL,
  `up_perm_id` int(10) NOT NULL, 
  `up_msg_code` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `up_cd` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL, 
  `up_name` varchar(250) COLLATE utf8mb4_bin DEFAULT NULL,
  `up_desc` varchar(250) COLLATE utf8mb4_bin DEFAULT NULL, 
  `up_disabled` TINYINT(1) NOT NULL DEFAULT 0 ,
  `up_create_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `up_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `up_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `up_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
	PRIMARY KEY(`up_id`),
  KEY `user_perm_idx01`(`up_sect_id`),
  KEY `user_perm_idx02`(`up_perm_id`),
  KEY `user_perm_idx03`(`up_msg_code`),
  KEY `user_perm_idx04`(`up_cd`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin;