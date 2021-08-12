

CREATE TABLE `user_perm_group_assign`  (
  `uga_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uga_user_id` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `uga_group_id` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `uga_disabled` tinyint(1) NOT NULL DEFAULT 0,
  `uga_create_user` varchar(20) COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `uga_create_timestamp` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uga_update_user` varchar(20) COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `uga_update_timestamp` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uga_id`),
  INDEX `user_perm_group_assign_idx01`(`uga_user_id`),
  INDEX `user_perm_group_assign_idx02`(`uga_group_id`)
) ENGINE = InnoDB DEFAULT CHARSET=utf8mb4 COLLATE = utf8mb4_bin;