 


CREATE TABLE `def_shop_type` (
	`st_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`st_code`  VARCHAR(20) COLLATE utf8mb4_bin NOT NULL,
	`st_title_tc` VARCHAR(255) COLLATE utf8mb4_bin NOT NULL,
	`st_title_en` VARCHAR(255) COLLATE utf8mb4_bin NOT NULL,
	`st_disabled` TINYINT(1) NOT NULL DEFAULT '0',
	`st_create_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`st_create_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`st_update_user` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
	`st_update_timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`st_id`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;



ALTER TABLE `shop` 
	ADD COLUMN `sh_remark` text COLLATE utf8mb4_bin NOT NULL AFTER sh_update_timestamp ,
	ADD COLUMN `sh_type` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL AFTER sh_remark ;

  

 