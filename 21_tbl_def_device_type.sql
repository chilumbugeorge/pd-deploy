



CREATE TABLE `def_device_type` (
    `dt_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `dt_code` VARCHAR(10) COLLATE UTF8MB4_BIN DEFAULT NULL,
    `dt_desc` VARCHAR(50) COLLATE UTF8MB4_BIN DEFAULT NULL,
    `dt_disabled` TINYINT(1) NOT NULL DEFAULT '0',
    `dt_create_user` VARCHAR(20) COLLATE UTF8MB4_BIN DEFAULT NULL,
    `dt_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `dt_update_user` VARCHAR(20) COLLATE UTF8MB4_BIN DEFAULT NULL,
    `dt_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`dt_id`),
    UNIQUE `def_device_type_udx01` (`dt_id`)
)  ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=UTF8MB4 COLLATE = UTF8MB4_BIN;
	
	    