



CREATE TABLE `rel_student_school`(
    `lss_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `lss_student_id` INT(10) UNSIGNED NOT NULL,
    `lss_school_id` INT(10) UNSIGNED NOT NULL,
    `lss_disabled` TINYINT(1) NOT NULL DEFAULT '0',
    `lss_create_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
    `lss_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `lss_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
    `lss_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(`lss_id`),
    UNIQUE `rel_student_school_udx01`(`lss_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin;



