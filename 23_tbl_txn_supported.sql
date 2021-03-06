



CREATE TABLE `txn_supported` (
    `ts_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `ts_code` VARCHAR(10) COLLATE UTF8MB4_BIN DEFAULT NULL,
    `ts_desc` VARCHAR(50) COLLATE UTF8MB4_BIN DEFAULT NULL,
    `ts_channel_code` VARCHAR(3) COLLATE UTF8MB4_BIN DEFAULT NULL,
    `ts_support` TINYINT(1) NOT NULL DEFAULT '0',
    `ts_req_token` CHAR(1) COLLATE UTF8MB4_BIN DEFAULT NULL,
    `ts_req_email` CHAR(1) COLLATE UTF8MB4_BIN DEFAULT NULL,
    `ts_disabled` TINYINT(1) NOT NULL DEFAULT '0',
    `ts_create_user` VARCHAR(20) COLLATE UTF8MB4_BIN DEFAULT NULL,
    `ts_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `ts_update_user` VARCHAR(20) COLLATE UTF8MB4_BIN DEFAULT NULL,
    `ts_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`ts_id`),
    UNIQUE `txn_supported_udx01` (`ts_id`)
)  ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=UTF8MB4 COLLATE = UTF8MB4_BIN;
 