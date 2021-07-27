CREATE TABLE `user_perm_group`  (
  `ug_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ug_group_id` int(10) NOT NULL ,
  `ug_group_name` varchar(100)  COLLATE utf8mb4_bin DEFAULT NULL,
  `ug_group_desc` varchar(250)  COLLATE utf8mb4_bin DEFAULT NULL, 
  `ug_status` TINYINT(1) NOT NULL DEFAULT 1 ,
  `ug_disabled` TINYINT(1) NOT NULL DEFAULT 0 ,
  `ug_create_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `ug_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `ug_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `ug_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY(`ug_id`),
  KEY `user_perm_group_idx01`(`ug_group_id`) ,
  KEY `user_perm_group_idx02`(`ug_group_name`) 
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin;