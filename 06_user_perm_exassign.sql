CREATE TABLE `user_perm_exassign`  (
  `uca_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uca_user_id` int(10) NOT NULL,
  `uca_perm_id` int(10) NOT NULL,
  `uca_disabled` TINYINT(1) NOT NULL DEFAULT 0 ,
  `uca_create_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `uca_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `uca_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `uca_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY(`uca_id`),
  KEY `user_perm_exassign_idx01`(`uca_user_id`),
  KEY `user_perm_exassign_idx02`(`uca_perm_id`) 
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin;