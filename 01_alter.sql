

ALTER TABLE order_header 
	ADD COLUMN `oh_buyer_remark` text COLLATE utf8mb4_bin DEFAULT NULL AFTER oh_status,
	ADD COLUMN `oh_seller_remark` text COLLATE utf8mb4_bin DEFAULT NULL AFTER oh_buyer_remark;

  