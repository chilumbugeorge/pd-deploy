

CREATE TABLE `user_perm_assign`  (
  `ua_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ua_user_id` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `ua_perm_id` int(10) NOT NULL,
  `ua_disabled` tinyint(1) NOT NULL DEFAULT 0,
  `ua_create_user` varchar(20) COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `ua_create_timestamp` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ua_update_user` varchar(20) COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `ua_update_timestamp` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ua_id`),
  INDEX `user_perm_assign_idx01`(`ua_user_id`),
  INDEX `user_perm_assign_idx02`(`ua_perm_id`)
) ENGINE = InnoDB DEFAULT CHARSET=utf8mb4 COLLATE = utf8mb4_bin;