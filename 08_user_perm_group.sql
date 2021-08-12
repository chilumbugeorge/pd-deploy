

CREATE TABLE `user_perm_group`  (
  `ug_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ug_group_id` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `ug_group_name` varchar(100) COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `ug_group_desc` varchar(250) COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `ug_status` tinyint(1) NOT NULL DEFAULT 1,
  `ug_disabled` tinyint(1) NOT NULL DEFAULT 0,
  `ug_create_user` varchar(20) COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `ug_create_timestamp` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ug_update_user` varchar(20) COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `ug_update_timestamp` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ug_delete` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ug_id`),
  INDEX `user_perm_group_idx01`(`ug_group_id`),
  INDEX `user_perm_group_idx02`(`ug_group_name`)
) ENGINE = InnoDB DEFAULT CHARSET=utf8mb4 COLLATE = utf8mb4_bin;