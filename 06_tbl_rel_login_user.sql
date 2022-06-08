



CREATE TABLE `rel_login_user` (
    `llu_login_user_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `llu_login_id` INT(10) UNSIGNED NOT NULL,
    `llu_user_type` VARCHAR(10) COLLATE UTF8MB4_BIN NOT NULL,
    `llu_user_id` INT(10) UNSIGNED NOT NULL,
    `llu_disabled` TINYINT(1) NOT NULL DEFAULT '0',
    `llu_create_user` VARCHAR(20) COLLATE UTF8MB4_BIN DEFAULT NULL,
    `llu_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `llu_update_user` VARCHAR(20) COLLATE UTF8MB4_BIN DEFAULT NULL,
    `llu_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`llu_login_user_id`),
    UNIQUE `rel_login_user_udx01` (`llu_login_user_id`)
)  ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=UTF8MB4 COLLATE = UTF8MB4_BIN;