ALTER TABLE buyer_testing
	ADD COLUMN `br_remark` text COLLATE utf8mb4_bin AFTER br_ccy,
	ADD COLUMN `br_req_delete` tinyint(1) DEFAULT '0' AFTER br_status ;
