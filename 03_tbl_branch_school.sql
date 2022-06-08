




CREATE TABLE `branch_school` (
    `bs_branch_school_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `bs_school_id` INT(10) UNSIGNED NOT NULL,
    `bs_branch_school_name` VARCHAR(50) COLLATE UTF8MB4_BIN NOT NULL,
    `bs_branch_school_desc` VARCHAR(250) COLLATE UTF8MB4_BIN NOT NULL,
    `bs_address_1` VARCHAR(100) COLLATE UTF8MB4_BIN NOT NULL,
    `bs_address_2` VARCHAR(100) COLLATE UTF8MB4_BIN NOT NULL,
    `bs_address_3` VARCHAR(100) COLLATE UTF8MB4_BIN NOT NULL,
    `bs_branch_school_remark` VARCHAR(500) COLLATE UTF8MB4_BIN NOT NULL,
    `bs_branch_school_status` VARCHAR(100) COLLATE UTF8MB4_BIN NOT NULL,
    `bs_headquarter` TINYINT(1) COLLATE UTF8MB4_BIN NOT NULL,
    `bs_disabled` TINYINT(1) NOT NULL DEFAULT '0',
    `bs_create_user` VARCHAR(20) COLLATE UTF8MB4_BIN DEFAULT NULL,
    `bs_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `bs_update_user` VARCHAR(20) COLLATE UTF8MB4_BIN DEFAULT NULL,
    `bs_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`bs_branch_school_id`),
    UNIQUE `branch_school_udx01` (`bs_branch_school_id`)
)  ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=UTF8MB4 COLLATE = UTF8MB4_BIN;

