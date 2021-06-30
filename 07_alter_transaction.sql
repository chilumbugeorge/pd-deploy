

ALTER TABLE txn_psp_api_log
	ADD COLUMN `tpl_return_code` VARCHAR(10) COLLATE utf8mb4_bin DEFAULT NULL AFTER `tpl_log_type`;

