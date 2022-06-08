



CREATE TABLE `semester` (
    `s_semester_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `s_branch_school_id` INT(10) UNSIGNED NOT NULL,
    `s_semester_name` VARCHAR(20) COLLATE UTF8MB4_BIN DEFAULT NULL,
    `s_start_date` DATE NOT NULL,
    `s_end_date` DATE NOT NULL,
    `s_disabled` TINYINT(1) NOT NULL DEFAULT '0',
    `s_create_user` VARCHAR(20) COLLATE UTF8MB4_BIN DEFAULT NULL,
    `s_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `s_update_user` VARCHAR(20) COLLATE UTF8MB4_BIN DEFAULT NULL,
    `s_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`s_semester_id`),
    UNIQUE `semester_udx01` (`s_semester_id`)
)  ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=UTF8MB4 COLLATE = UTF8MB4_BIN;

