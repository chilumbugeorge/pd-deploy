

CREATE TABLE `user_perm`  (
  `up_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `up_sect_id` int(10) NOT NULL,
  `up_perm_id` int(10) NOT NULL,
  `up_msg_code` varchar(50) COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `up_cd` varchar(50) COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `up_name` varchar(250) COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `up_desc` varchar(250) COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `up_disabled` tinyint(1) NOT NULL DEFAULT 0,
  `up_create_user` varchar(20) COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `up_create_timestamp` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `up_update_user` varchar(20) COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `up_update_timestamp` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`up_id`),
  INDEX `user_perm_idx01`(`up_sect_id`),
  INDEX `user_perm_idx02`(`up_perm_id`),
  INDEX `user_perm_idx03`(`up_msg_code`),
  INDEX `user_perm_idx04`(`up_cd`)
) ENGINE = InnoDB DEFAULT CHARSET=utf8mb4 COLLATE = utf8mb4_bin;
