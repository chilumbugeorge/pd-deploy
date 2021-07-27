CREATE TABLE `user_perm_group_rel`  (
  `ugr_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ugr_group_id` int(10) NOT NULL,
  `ugr_perm_id` int(10) NOT NULL,
  `ugr_disabled` TINYINT(1) NOT NULL DEFAULT 0 ,
  `ugr_create_user` VARCHAR(20)  COLLATE utf8mb4_bin DEFAULT NULL,
  `ugr_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `ugr_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `ugr_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY(`ugr_id`),
  KEY `user_perm_group_rel_idx01`(`ugr_group_id`) ,
  KEY `user_perm_group_rel_idx02`(`ugr_perm_id`) 
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin;