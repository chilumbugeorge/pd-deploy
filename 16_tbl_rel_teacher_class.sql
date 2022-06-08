



CREATE TABLE `rel_teacher_class` (
    `ltc_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `ltc_class_id` INT(10) UNSIGNED NOT NULL,
    `ltc_teacher_id` INT(10) UNSIGNED NOT NULL,
    `ltc_master` TINYINT(1) NOT NULL DEFAULT '0',
    `ltc_disabled` TINYINT(1) NOT NULL DEFAULT '0',
    `ltc_create_user` VARCHAR(20) COLLATE UTF8MB4_BIN DEFAULT NULL,
    `ltc_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `ltc_update_user` VARCHAR(20) COLLATE UTF8MB4_BIN DEFAULT NULL,
    `ltc_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`ltc_id`),
    UNIQUE `rel_teacher_class_udx01` (`ltc_id`)
)  ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=UTF8MB4 COLLATE = UTF8MB4_BIN;


