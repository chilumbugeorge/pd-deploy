



CREATE TABLE `rel_teacher_school`(
    `lts_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `lts_teacher_id` INT(10) UNSIGNED NOT NULL,
    `lts_school_id` INT(10) UNSIGNED NOT NULL,
    `lts_disabled` TINYINT(1) NOT NULL DEFAULT '0',
    `lts_create_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
    `lts_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `lts_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
    `lts_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(`lts_id`),
    UNIQUE `rel_teacher_school_udx01`(`lts_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin;
