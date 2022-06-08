


CREATE TABLE `teacher_detail`(
	`ud_teacher_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `ud_email` VARCHAR(300) COLLATE utf8mb4_bin NOT NULL,
    `ud_phone` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL, 
    `ud_name`  VARCHAR(50) COLLATE utf8mb4_bin NOT NULL,
    `ud_gender`  CHAR(1) COLLATE utf8mb4_bin NOT NULL,
    `ud_remark`  VARCHAR(500) COLLATE utf8mb4_bin NOT NULL,
    `ud_status`  VARCHAR(10) COLLATE utf8mb4_bin NOT NULL,
    `ud_disabled` TINYINT(1) NOT NULL DEFAULT '0',
    `ud_create_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
    `ud_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `ud_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
    `ud_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(`ud_teacher_id`),
    UNIQUE `rel_login_user_udx01`(`ud_teacher_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin;

