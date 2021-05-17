

ALTER TABLE event
	MODIFY COLUMN `ed_title` VARCHAR(150) COLLATE utf8mb4_bin NOT NULL,
	ADD KEY `event_idx02`(`ed_title`);

