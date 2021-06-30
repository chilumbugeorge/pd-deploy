

ALTER TABLE shop_addr
	DROP COLUMN `sa_postal_code`,
	ADD COLUMN `sa_zip_code` VARCHAR(10) COLLATE utf8mb4_bin DEFAULT NULL AFTER `sa_district`;


UPDATE shop_addr SET sa_lg_type='CONV_' WHERE sa_lg_type='HOME_DLI';


UPDATE shop_addr SET sa_lg_type='HOME_DLI' WHERE sa_lg_type='CONV_STORE';


UPDATE shop_addr SET sa_lg_type='CONV_STORE' WHERE sa_lg_type='CONV_';

