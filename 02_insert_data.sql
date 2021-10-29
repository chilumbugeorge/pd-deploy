

INSERT INTO txn_supported
	(ts_code, ts_desc, ts_channel_code, ts_support, ts_req_token, ts_req_email, ts_req_log, ts_disabled, ts_create_user, ts_create_timestamp, ts_update_user, ts_update_timestamp)
VALUES
	('AGEL', 'Admin Get Event List', 'ADM', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('AGOL', 'Admin Get Order List', 'ADM', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('AGOD', 'Admin Get Order Detail', 'ADM', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()); 



INSERT INTO user_perm 
	(up_sect_id,up_perm_id,up_msg_code, up_cd, up_name, up_desc, up_disabled, up_create_user, up_create_timestamp, up_update_user, up_update_timestamp) 
VALUES
	('140001','140001','AGEL','ADMIN_EVENT_LIST','拍賣活動管理','查看所有拍賣活動管理','0','SYSTEM',now(),'SYSTEM',now()) , 
	('400001','400001','AGEL','ADMIN_ORDER_LIST','訂單管理','查看所有訂單管理','0','SYSTEM',now(),'SYSTEM',now()) ; 


INSERT INTO def_status 
(s_group, s_code, s_desc, s_disabled, s_create_user, s_create_timestamp, s_update_user, s_update_timestamp) 
VALUES
 ('BASKET', 'SCONFIRM', 'Seller Confirm', '0', 'SYSTEM', now(),'SYSTEM', now()), 
 ('BASKET', 'BPAID', 'Buyer Paid', '0', 'SYSTEM', now(),'SYSTEM', now()), 
 ('BASKET', 'TIMEOUT', 'Payment Timeout', '0', 'SYSTEM', now(),'SYSTEM', now()), 
 ('ORDER_DETA', 'BCANCEL', 'Buyer Cancel', '0', 'SYSTEM', now(),'SYSTEM', now()), 
 ('ORDER_DETA', 'SCANCEL', 'Seller Cancel', '0', 'SYSTEM', now(),'SYSTEM', now()), 
 ('ORDER_DETA', 'SCONFIRM', 'Seller Confirm', '0', 'SYSTEM', now(),'SYSTEM', now()), 
 ('ORDER_DETA', 'BPAID', 'Buyer Paid', '0', 'SYSTEM', now(),'SYSTEM', now()), 
 ('ORDER_DETA', 'TIMEOUT', 'Payment Timeout', '0', 'SYSTEM', now(),'SYSTEM', now()), 
 ('ORDER_DETA', 'FAIL', 'Fail', '0', 'SYSTEM', now(),'SYSTEM', now()), 
 ('ORDER_DETA', 'OTHER', 'Other (其他)', '0', 'SYSTEM', now(),'SYSTEM', now());













 
