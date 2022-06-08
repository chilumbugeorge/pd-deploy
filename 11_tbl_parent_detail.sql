



CREATE TABLE `parent_detail` (
    `pd_parent_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `pd_name` VARCHAR(50) COLLATE UTF8MB4_BIN DEFAULT NULL,
    `pd_gender` CHAR(1) COLLATE UTF8MB4_BIN DEFAULT NULL,
    `pd_email` VARCHAR(300) COLLATE UTF8MB4_BIN DEFAULT NULL,
    `pd_phone` VARCHAR(20) COLLATE UTF8MB4_BIN DEFAULT NULL,
    `pd_remark` VARCHAR(500) COLLATE UTF8MB4_BIN DEFAULT NULL,
    `pd_status` VARCHAR(10) COLLATE UTF8MB4_BIN DEFAULT NULL,
    `pd_disabled` TINYINT(1) NOT NULL DEFAULT '0',
    `pd_create_user` VARCHAR(20) COLLATE UTF8MB4_BIN DEFAULT NULL,
    `pd_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `pd_update_user` VARCHAR(20) COLLATE UTF8MB4_BIN DEFAULT NULL,
    `pd_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`pd_parent_id`),
    UNIQUE `parent_detail_udx01` (`pd_parent_id`)
)  ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=UTF8MB4 COLLATE = UTF8MB4_BIN;

