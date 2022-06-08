



CREATE TABLE `coruse_detail` (
    `cd_coruse_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `cd_school_id` INT(10) UNSIGNED NOT NULL,
    `cd_coruse_name` VARCHAR(50) COLLATE UTF8MB4_BIN DEFAULT NULL,
    `cd_coruse_desc` VARCHAR(250) COLLATE UTF8MB4_BIN DEFAULT NULL,
    `cd_status` TINYINT(1) NOT NULL DEFAULT '0',
    `cd_disabled` TINYINT(1) NOT NULL DEFAULT '0',
    `cd_create_user` VARCHAR(20) COLLATE UTF8MB4_BIN DEFAULT NULL,
    `cd_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `cd_update_user` VARCHAR(20) COLLATE UTF8MB4_BIN DEFAULT NULL,
    `cd_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`cd_coruse_id`),
    UNIQUE `coruse_detail_udx01` (`cd_coruse_id`)
)  ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=UTF8MB4 COLLATE = UTF8MB4_BIN;
