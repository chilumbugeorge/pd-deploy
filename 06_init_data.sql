

INSERT INTO def_status_group
	(sg_code, sg_desc, sg_disabled, sg_create_user, sg_create_timestamp, sg_update_user, sg_update_timestamp)
VALUES
	('EVENT_PROD', 'Product status in the event', 0, 'SYSTEM', now(), 'SYSTEM', now()),
	('EVENT_BUY', 'Buyer status in the event', 0, 'SYSTEM', now(), 'SYSTEM', now()),
	('BAKYC', 'Bank Account KYC Status', 0, 'SYSTEM', now(), 'SYSTEM', now());


INSERT INTO def_status
	(s_group, s_code, s_desc, s_disabled, s_create_user, s_create_timestamp, s_update_user, s_update_timestamp)
VALUES
	('EVENT', 'PEND', 'Pending', '0', 'SYSTEM', now(),'SYSTEM', now()),
	('EVENT', 'START', 'Start', '0', 'SYSTEM', now(),'SYSTEM', now()),
	('EVENT', 'END', 'End', '0', 'SYSTEM', now(),'SYSTEM', now()),
	('PROD', 'OPEN', 'Open', '0', 'SYSTEM', now(),'SYSTEM', now()),
	('PROD', 'CLOSE', 'Close', '0', 'SYSTEM', now(),'SYSTEM', now()),
	('EVENT_PROD', 'PEND', 'Pending', '0', 'SYSTEM', now(),'SYSTEM', now()),
	('EVENT_PROD', 'START', 'Start', '0', 'SYSTEM', now(),'SYSTEM', now()),
	('EVENT_PROD', 'END', 'End', '0', 'SYSTEM', now(),'SYSTEM', now()),
	('EVENT_BUY', 'JOIN', 'Joining the event', '0', 'SYSTEM', now(),'SYSTEM', now()),
	('EVENT_BUY', 'LEAVE', 'Leave event', '0', 'SYSTEM', now(),'SYSTEM', now()),
	('BAKYC', 'NVER', 'Not Verify', '0', 'SYSTEM', now(),'SYSTEM', now()),
	('BAKYC', 'VER', 'Verified', '0', 'SYSTEM', now(), 'SYSTEM', now());


INSERT INTO txn_supported
	(ts_code, ts_desc, ts_channel_code, ts_support, ts_req_token, ts_req_email, ts_req_log, ts_disabled, ts_create_user, ts_create_timestamp, ts_update_user, ts_update_timestamp)
VALUES
	('SGBA', 'Seller Bank Account List', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('SGBAD', 'Seller Bank Account Detail', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('SCBA', 'Seller Create Bank Account', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('SUBA', 'Seller Update Bank Account', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('SVAB', 'Seller View Account Balance  ', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('SUDBA', 'Seller Update Default Bank Account', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('SDBA', 'Seller Delete Bank Account', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('SRAR', 'Seller Requests remove account', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('SVLL', 'View Logistics List', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('SGBL', 'Seller View Block List', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('SABL', 'Seller Add Buyer into Block List', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('SDBL', 'Seller Delete Buyer into Block List', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('SULL ', 'Seller Update Logistics List', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('BRAR', 'Buyer Remove Account Request', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('SULS ', 'Seller Update Logistics Sender', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('SCLA ', 'Seller Create Logistics Address', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('SVLAL ', 'Seller View Logistics Address List', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('SVLS ', 'Seller View Logistics Sender', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('SDLA ', 'Seller Delete Logistics Address', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('BVNL', 'Buyer View Notification List', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('BUNRD', 'Buyer Update Notification Readed', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('BGNURC', 'Buyer Get Notification Un Read Count', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()) ; 



INSERT INTO system_parameter
	(sp_code, sp_desc, sp_val, sp_disabled, sp_create_user, sp_create_timestamp, sp_update_user, sp_update_timestamp)
VALUES
	('EVENT_LENGTH_DEFAULT', 'Event length default time (In minutes)', '180', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('ORDER_CUTOFF_DEFAULT', 'Event order cutoff time (In minutes)', '180', '0', 'SYSTEM', now(), 'SYSTEM', now());


INSERT INTO sequence_data
	(seq_name, seq_increment, seq_min_value, seq_max_value, seq_cur_value, seq_cycle, seq_disabled, seq_create_user, seq_create_timestamp, seq_update_user, seq_update_timestamp)
VALUES
	('BUYER_ADDR_ID', '1', '1', '9999999999999999999', '1', '0', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('ACCT_ID', '1', '1', '9999999999999999999', '1', '0', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('SUPPORT_ID', '1', '1', '9999999999999999999', '1', '0', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('BUYER_ADDR_ID', '1', '1', '9999999999999999999', '1', '0', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('ACCT_ID', '1', '1', '9999999999999999999', '1', '0', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('SUPPORT_ID', '1', '1', '9999999999999999999', '1', '0', '0', 'SYSTEM', now(), 'SYSTEM', now()); 



INSERT INTO def_packing_type
(dp_code,dp_region,dp_lg_type, dp_lg_sub_type, dp_desc, dp_disabled, dp_create_user, dp_create_timestamp, dp_update_user,dp_update_timestamp)
VALUES
	('TW_HOME_TCAT_01','TW','HOME_DLI', 'TCAT', '0-60 cm', '0', 'SYSTEM', now(), 'SYSTEM',now()),
	('TW_HOME_TCAT_02','TW','HOME_DLI', 'TCAT', '61-90 cm', '0', 'SYSTEM', now(), 'SYSTEM',now()),
	('TW_HOME_TCAT_03','TW','HOME_DLI', 'TCAT', '91-120 cm', '0', 'SYSTEM', now(), 'SYSTEM',now()),
	('TW_HOME_TCAT_04','TW','HOME_DLI', 'TCAT', '121-150 cm', '0', 'SYSTEM', now(), 'SYSTEM',now()),
	('TW_HOME_ECAN_01','TW','HOME_DLI', 'ECAN', '0-60 cm', '0', 'SYSTEM', now(), 'SYSTEM',now()),
	('TW_HOME_ECAN_02','TW','HOME_DLI', 'ECAN', '61-90 cm', '0', 'SYSTEM', now(), 'SYSTEM',now()),
	('TW_HOME_ECAN_03','TW','HOME_DLI', 'ECAN', '91-120 cm', '0', 'SYSTEM', now(), 'SYSTEM',now()),
	('TW_HOME_ECAN_04','TW','HOME_DLI', 'ECAN', '121-150 cm', '0', 'SYSTEM', now(), 'SYSTEM',now());

