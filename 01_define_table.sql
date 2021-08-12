

CREATE TABLE `def_user_perm_sect` (
	`du_id` INT ( 10 ) UNSIGNED NOT NULL AUTO_INCREMENT,
	`du_sect_id` INT ( 10 ) NOT NULL,
	`du_sect_cd` VARCHAR ( 100 ) COLLATE utf8mb4_bin NULL DEFAULT NULL,
	`du_sect_desc` VARCHAR ( 100 ) COLLATE utf8mb4_bin NULL DEFAULT NULL,
	`du_disabled` TINYINT ( 1 ) NOT NULL DEFAULT 0,
	`du_create_user` VARCHAR ( 20 ) COLLATE utf8mb4_bin NULL DEFAULT NULL,
	`du_create_timestamp` datetime ( 0 ) NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`du_update_user` VARCHAR ( 20 ) COLLATE utf8mb4_bin NULL DEFAULT NULL,
	`du_update_timestamp` datetime ( 0 ) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`du_order` INT ( 10 ) NULL DEFAULT NULL,
	PRIMARY KEY ( `du_id` ),
	INDEX `def_user_perm_sect_idx01` ( `du_sect_id` ),
	INDEX `def_user_perm_sect_idx02` ( `du_sect_cd` ) 
) ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_bin;