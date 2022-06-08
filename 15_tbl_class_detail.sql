



CREATE TABLE `class_detail` (
    `cd_class_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `cd_semester_id` INT(10) UNSIGNED NOT NULL,
    `cd_coruse_id` INT(10) UNSIGNED NOT NULL,
    `cd_class_name` VARCHAR(20) COLLATE UTF8MB4_BIN DEFAULT NULL,
    `cd_weekday` VARCHAR(30) COLLATE UTF8MB4_BIN DEFAULT NULL,
    `cd_start_date` DATE NOT NULL,
    `cd_end_date` DATE NOT NULL,
    `cd_start_time` TIME NOT NULL,
    `cd_end_time` TIME NOT NULL,
    `cd_total_session` INT(10) UNSIGNED NOT NULL,
    `cd_price` DECIMAL(11 , 4 ) NOT NULL DEFAULT '0.000',
    `cd_disabled` TINYINT(1) NOT NULL DEFAULT '0',
    `cd_create_user` VARCHAR(20) COLLATE UTF8MB4_BIN DEFAULT NULL,
    `cd_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `cd_update_user` VARCHAR(20) COLLATE UTF8MB4_BIN DEFAULT NULL,
    `cd_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`cd_class_id`),
    UNIQUE `class_detail_udx01` (`cd_class_id`)
)  ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=UTF8MB4 COLLATE = UTF8MB4_BIN;



