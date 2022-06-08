



CREATE TABLE `rel_parent_student`(
    `lps_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `lps_parent_id` INT(10) UNSIGNED NOT NULL,
    `lps_student_id` INT(10) UNSIGNED NOT NULL,
    `lps_disabled` TINYINT(1) NOT NULL DEFAULT '0',
    `lps_create_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
    `lps_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `lps_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
    `lps_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(`lps_id`),
    UNIQUE `rel_parent_student_udx01`(`lps_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin;


