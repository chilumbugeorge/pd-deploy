

ALTER TABLE lsp_detail
	ADD COLUMN `ld_effective_period` INT(10) NOT NULL DEFAULT '0' AFTER `ld_service_callback_path`;

