CREATE TABLE `user_perm_group_assign`  (
  `uga_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uga_user_id` int(10) NOT NULL,
  `uga_group_id` int(10) NOT NULL,
  `uga_disabled` TINYINT(1) NOT NULL DEFAULT 0 ,
  `uga_create_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `uga_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `uga_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `uga_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY(`uga_id`),
  KEY `user_perm_group_assign_idx01`(`uga_user_id`) ,
  KEY `user_perm_group_assign_idx02`(`uga_group_id`) 
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin;