

CREATE TABLE `user_perm_group_rel`  (
  `ugr_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ugr_group_id` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `ugr_perm_id` int(10) NOT NULL,
  `ugr_disabled` tinyint(1) NOT NULL DEFAULT 0,
  `ugr_create_user` varchar(20) COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `ugr_create_timestamp` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ugr_update_user` varchar(20) COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `ugr_update_timestamp` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ugr_id`),
  INDEX `user_perm_group_rel_idx01`(`ugr_group_id`),
  INDEX `user_perm_group_rel_idx02`(`ugr_perm_id`)
) ENGINE = InnoDB DEFAULT CHARSET=utf8mb4 COLLATE = utf8mb4_bin;