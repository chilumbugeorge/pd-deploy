ALTER TABLE order_header
	ADD COLUMN `oh_event_id` varchar(20) COLLATE utf8mb4_bin NOT NULL AFTER oh_buyer_id,
	ADD COLUMN `oh_status` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL AFTER oh_update_timestamp ,
	ADD KEY `order_header_idx03`(`oh_event_id`);