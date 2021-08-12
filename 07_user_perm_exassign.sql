

CREATE TABLE `user_perm_exassign`  (
  `uca_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uca_user_id` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `uca_perm_id` int(10) NOT NULL,
  `uca_disabled` tinyint(1) NOT NULL DEFAULT 0,
  `uca_create_user` varchar(20) COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `uca_create_timestamp` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uca_update_user` varchar(20) COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `uca_update_timestamp` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uca_id`),
  INDEX `user_perm_exassign_idx01`(`uca_user_id`),
  INDEX `user_perm_exassign_idx02`(`uca_perm_id`)
) ENGINE = InnoDB DEFAULT CHARSET=utf8mb4 COLLATE = utf8mb4_bin;