



CREATE TABLE `student_session` (
    `ss_student_session_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `ss_init_student_session_id` INT(10) UNSIGNED NOT NULL,
    `ss_class_session_id` INT(10) UNSIGNED NOT NULL,
    `ss_student_id` INT(10) UNSIGNED NOT NULL,
    `ss_remark` VARCHAR(500) COLLATE UTF8MB4_BIN DEFAULT NULL,
    `ss_status` VARCHAR(10) COLLATE UTF8MB4_BIN DEFAULT NULL,
    `ss_disabled` TINYINT(1) NOT NULL DEFAULT '0',
    `ss_create_user` VARCHAR(20) COLLATE UTF8MB4_BIN DEFAULT NULL,
    `ss_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `ss_update_user` VARCHAR(20) COLLATE UTF8MB4_BIN DEFAULT NULL,
    `ss_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`ss_student_session_id`),
    UNIQUE `student_session_udx01` (`ss_student_session_id`)
)  ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=UTF8MB4 COLLATE = UTF8MB4_BIN;
	
	  