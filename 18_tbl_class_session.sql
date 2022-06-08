



CREATE TABLE `class_session` (
    `cs_class_session_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `cs_init_class_session_id` INT(10) UNSIGNED NOT NULL,
    `cs_class_id` INT(10) UNSIGNED NOT NULL,
    `cs_class_date` DATE NOT NULL,
    `cs_start_time` TIME NOT NULL,
    `cs_end_time` TIME NOT NULL,
    `cs_remark` VARCHAR(500) COLLATE UTF8MB4_BIN DEFAULT NULL,
    `cs_class_status` VARCHAR(10) COLLATE UTF8MB4_BIN DEFAULT NULL,
    `cs_disabled` TINYINT(1) NOT NULL DEFAULT '0',
    `cs_create_user` VARCHAR(20) COLLATE UTF8MB4_BIN DEFAULT NULL,
    `cs_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `cs_update_user` VARCHAR(20) COLLATE UTF8MB4_BIN DEFAULT NULL,
    `cs_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`cs_class_session_id`),
    UNIQUE `class_session_udx01` (`cs_class_session_id`)
)  ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=UTF8MB4 COLLATE = UTF8MB4_BIN;




