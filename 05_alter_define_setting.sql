

ALTER TABLE def_region_logistics
	DROP INDEX `def_region_logistics_udx01`,
	ADD COLUMN `rl_code` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL AFTER rl_id,
	ADD COLUMN `rl_ccy` VARCHAR(3) COLLATE utf8mb4_bin NOT NULL AFTER rl_lg_desc,
	ADD COLUMN `rl_amt` decimal(11,4) NOT NULL AFTER rl_ccy;

UPDATE def_region_logistics SET rl_code = 'TW_H_TCAT', rl_ccy = 'TWD', rl_amt = 60 WHERE rl_lg_type = 'HOME_DLI' and rl_lg_sub_type = 'TCAT';
UPDATE def_region_logistics SET rl_code = 'TW_H_ECAN', rl_ccy = 'TWD', rl_amt = 60 WHERE rl_lg_type = 'HOME_DLI' and rl_lg_sub_type = 'ECAN';
UPDATE def_region_logistics SET rl_code = 'TW_C_FAMILY', rl_ccy = 'TWD', rl_amt = 60 WHERE rl_lg_type = 'CONV_STORE' and rl_lg_sub_type = 'FAMILY';
UPDATE def_region_logistics SET rl_code = 'TW_C_UNIMART', rl_ccy = 'TWD', rl_amt = 60 WHERE rl_lg_type = 'CONV_STORE' and rl_lg_sub_type = 'UNIMART';
UPDATE def_region_logistics SET rl_code = 'TW_C_HILIFE', rl_ccy = 'TWD', rl_amt = 60 WHERE rl_lg_type = 'CONV_STORE' and rl_lg_sub_type = 'HILIFE';
UPDATE def_region_logistics SET rl_code = 'TW_C_OKMART', rl_ccy = 'TWD', rl_amt = 60 WHERE rl_lg_type = 'CONV_STORE' and rl_lg_sub_type = 'OKMART';

ALTER TABLE def_region_logistics
	ADD UNIQUE `def_region_logistics_udx01`(`rl_code`),
	ADD UNIQUE `def_region_logistics_udx02`(`rl_region`,`rl_lg_type`,`rl_lg_sub_type`);


ALTER TABLE def_packing_type
	DROP COLUMN dp_region,
	DROP COLUMN dp_lg_type,
	DROP COLUMN dp_lg_sub_type,
	ADD COLUMN `dp_region_lg_code` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL AFTER dp_code,
	ADD COLUMN `dp_max_size` DECIMAL(11,4) NOT NULL AFTER dp_region_lg_code,
	ADD COLUMN `dp_amt` DECIMAL(11,4) NOT NULL AFTER dp_max_size;


UPDATE def_packing_type SET dp_region_lg_code = 'TW_H_TCAT', dp_max_size = 60, dp_amt = 130 WHERE dp_code = 'TW_HOME_TCAT_01';
UPDATE def_packing_type SET dp_region_lg_code = 'TW_H_TCAT', dp_max_size = 90, dp_amt = 170 WHERE dp_code = 'TW_HOME_TCAT_02';
UPDATE def_packing_type SET dp_region_lg_code = 'TW_H_TCAT', dp_max_size = 120, dp_amt = 210 WHERE dp_code = 'TW_HOME_TCAT_03';
UPDATE def_packing_type SET dp_region_lg_code = 'TW_H_TCAT', dp_max_size = 150, dp_amt = 250 WHERE dp_code = 'TW_HOME_TCAT_04';
UPDATE def_packing_type SET dp_region_lg_code = 'TW_H_TCAT', dp_max_size = 60, dp_amt = 130 WHERE dp_code = 'TW_HOME_ECAN_01';
UPDATE def_packing_type SET dp_region_lg_code = 'TW_H_TCAT', dp_max_size = 90, dp_amt = 170 WHERE dp_code = 'TW_HOME_ECAN_02';
UPDATE def_packing_type SET dp_region_lg_code = 'TW_H_TCAT', dp_max_size = 120, dp_amt = 210 WHERE dp_code = 'TW_HOME_ECAN_03';
UPDATE def_packing_type SET dp_region_lg_code = 'TW_H_TCAT', dp_max_size = 150, dp_amt = 250 WHERE dp_code = 'TW_HOME_ECAN_04';


UPDATE def_status_group SET sg_code = 'BASKET', sg_desc = 'Shopping Basket Status' WHERE sg_code = 'SHOPCART';


INSERT INTO def_status_group
	(sg_code, sg_desc, sg_disabled, sg_create_user, sg_create_timestamp, sg_update_user, sg_update_timestamp)
VALUES
	('ORDER_HEAD', 'Order Header Status', 0, 'SYSTEM', now(), 'SYSTEM', now()),
	('ORDER_DETA', 'Order Detail Status', 0, 'SYSTEM', now(), 'SYSTEM', now());


INSERT INTO def_status
	(s_group, s_code, s_desc, s_disabled, s_create_user, s_create_timestamp, s_update_user, s_update_timestamp)
VALUES
	('BASKET', 'PEND', 'Pending', '0', 'SYSTEM', now(),'SYSTEM', now()),
	('BASKET', 'CHECKED', 'Check Out', '0', 'SYSTEM', now(),'SYSTEM', now());


INSERT INTO txn_supported
	(ts_code, ts_desc, ts_channel_code, ts_support, ts_req_token, ts_req_email, ts_req_log, ts_disabled, ts_create_user, ts_create_timestamp, ts_update_user, ts_update_timestamp)
VALUES
	('SCED', 'Seller Create Event Detail', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('SVED', 'Seller View Event Detail', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('SVSETL', 'Seller View Setting List', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('SUSET', 'Seller Update Setting', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('BGMPC', 'Buyer Get Main Page Content', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('SEED', 'Seller Edit Event Detail', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('BJCSEC', 'Buyer Join/Cancel/Switch Event Control', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('SDED', 'Seller Delete Event Detail', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('SEE', 'Seller Extends Event', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('SFE', 'Seller Finish Event', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('SAEPD', 'Seller Add Product', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('SVPLL', 'Seller View Product Logistics List', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('SEEPD', 'Seller Edit Product', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('SDEPD', 'Seller Delete Product', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('BGPI', 'Buyer Get Product Info', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('BAPTB', 'Buyer Add Product To Basket', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('BRPIB', 'Buyer Remove Product In Basket', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('BVUPL', 'Buyer View Un Pay List', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('SEPL', 'Event Product List', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('BVUPD', 'Buyer View Un Pay Detail', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('SVEPD', 'Seller View Event Product List', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('SASEPD', 'Add and Start Event Product ', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('SSEP ', 'Start Event Product ', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('SEEP ', 'End Event Product ', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('BGMI', 'Buyer Get Minimize Info', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now());


INSERT INTO system_parameter
	(sp_code, sp_desc, sp_val, sp_disabled, sp_create_user, sp_create_timestamp, sp_update_user, sp_update_timestamp)
VALUES
	('SYS_DEFAULT_LG_SP', 'System default logistics support', 'N', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('SELLER_URL', 'Seller App URL', 'https://apisaqa.systest.site/fe/seller/', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('BUYER_URL', 'Buyer App URL', 'https://apisaqa.systest.site/fe/buyer/', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('TW_LG_W_LIMIT', 'Taiwan Logistics Weight Limit (kg)', '5', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('TW_LG_S_LIMIT', 'Taiwan Logistics Total Size Limit (cm)', '150', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('TW_TAX_PERCENT', 'Taiwan Tax Percent', '5', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('IMAGE_URL', 'IMAGE URL', 'https://apisaqa.systest.site/api/upload/', '0', 'SYSTEM', now(), 'SYSTEM', now());


INSERT INTO sequence_data
	(seq_name, seq_increment, seq_min_value, seq_max_value, seq_cur_value, seq_cycle, seq_disabled, seq_create_user, seq_create_timestamp, seq_update_user, seq_update_timestamp)
VALUES
	('PUSH_MSG_ID', '1', '1', '9999999999999999999', '1', '0', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('SHOP_ADDR_ID', '1', '1', '9999999999999999999', '1', '0', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('EVENT_ID', '1', '1', '9999999999999999999', '1', '0', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('PRODUCT_ID', '1', '1', '9999999999999999999', '1', '0', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('PRODUCT_DETAIL_ID', '1', '1', '9999999999999999999', '1', '0', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('BASKET_ID', '1', '1', '9999999999999999999', '1', '0', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('BASKET_DETAIL_ID', '1', '1', '9999999999999999999', '1', '0', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('PIMAGE_ID', '1', '1', '9999999999999999999', '1', '0', '0', 'SYSTEM', now(), 'SYSTEM', now());


INSERT INTO def_verify_phone_type
	(dv_code,dv_desc,dv_disabled, dv_create_user, dv_create_timestamp, dv_update_user, dv_update_timestamp)
VALUES
	('REGISTER', 'Phone Register', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('FORGOT', 'Forgot Password', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('CHANGE', 'Change Phone Number', '0', 'SYSTEM', now(), 'SYSTEM', now());

