

ALTER TABLE order_lsp_detail
	ADD COLUMN `old_sender_name` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL AFTER `old_lsp_id`,
	ADD COLUMN `old_sender_prefix` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL AFTER `old_sender_name`,
	ADD COLUMN `old_sender_phone` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL AFTER `old_sender_prefix`,
	ADD COLUMN `old_txn_create_timestamp` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL AFTER `old_sender_phone`;


ALTER TABLE order_lsp_api_log
	ADD COLUMN `oll_return_code` VARCHAR(10) COLLATE utf8mb4_bin DEFAULT NULL AFTER `oll_log_type`;

