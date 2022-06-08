



CREATE TABLE `rel_student_class` (
    `lsc_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `lsc_class_id` INT(10) UNSIGNED NOT NULL,
    `lsc_student_id` INT(10) UNSIGNED NOT NULL,
    `lsc_disabled` TINYINT(1) NOT NULL DEFAULT '0',
    `lsc_create_user` VARCHAR(20) COLLATE UTF8MB4_BIN DEFAULT NULL,
    `lsc_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `lsc_update_user` VARCHAR(20) COLLATE UTF8MB4_BIN DEFAULT NULL,
    `lsc_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`lsc_id`),
    UNIQUE `rel_student_class_udx01` (`lsc_id`)
)  ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=UTF8MB4 COLLATE = UTF8MB4_BIN;

