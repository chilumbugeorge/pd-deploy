

ALTER TABLE order_header
	ADD COLUMN `oh_payment_type` VARCHAR(10) COLLATE utf8mb4_bin NOT NULL AFTER oh_buyer_id,
	ADD COLUMN `oh_tol_tax` decimal(11,4) DEFAULT NULL AFTER oh_tol_shipping,
	DROP COLUMN `oh_status`;


ALTER TABLE order_detail
	DROP COLUMN `od_lsp_shipping_id`;

