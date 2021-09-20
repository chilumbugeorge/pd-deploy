ALTER TABLE seller
	ADD COLUMN `sr_remark` text COLLATE utf8mb4_bin AFTER sr_type,
	ADD COLUMN `sr_req_delete` tinyint(1) DEFAULT '0' AFTER sr_status ;
