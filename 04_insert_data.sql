



INSERT INTO system_parameter 
	(sp_code, sp_desc, sp_val, sp_disabled, sp_create_user, sp_create_timestamp, sp_update_user, sp_update_timestamp) 
VALUES 
	('SMS_SWITCH', 'SMS_SWITCH', '0', '0', 'SYSTEM', now(), 'SYSTEM', now());




INSERT INTO txn_supported 
	(ts_code, ts_desc, ts_channel_code, ts_support, ts_req_token, ts_req_email, ts_req_log, ts_disabled, ts_create_user, ts_create_timestamp, ts_update_user, ts_update_timestamp) 
VALUES
	('AGSL', 'Admin Get Seller List', 'ADM', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('AGSD', 'Admin Get Seller Detail', 'ADM', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('AGSAD', 'Admin Get Self Account Detail', 'ADM', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('AGSBL', 'Admin Get Seller Block List', 'ADM', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('AUSD', 'Admin Update Seller Detail', 'ADM', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('AGSE', 'Admin Get Seller Event ', 'ADM', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('AGSEL', 'Admin Get Seller Event List', 'ADM', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('ASSE', 'Admin Stop Seller Event', 'ADM', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('ASSEP', 'Admin Stop Seller Event Product', 'ADM', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('AGSOL', 'Admin Get Seller Event List', 'ADM', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('AGSOD', 'Admin Get Seller Event Detail', 'ADM', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('ADSD', 'Admin Delete Seller Detail', 'ADM', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()); 


INSERT INTO user_perm 
	(up_sect_id, up_perm_id,up_msg_code,up_cd,up_name, up_desc, up_disabled, up_create_user, up_create_timestamp, up_update_user, up_update_timestamp ) 
VALUES
 ('200001', '200001', 'AGSL', 'ADMIN_SELLER_LIST', '賣家列表', '查看所有賣家', '0', 'SYSTEM',  now() , 'SYSTEM',  now() ) , 
 ('200001', '200002', 'AGSD', 'ADMIN_SELLER_DETAIL', '賣家資料', '可以新增,編輯，刪除權限賣家資料', '0', 'SYSTEM',  now() , 'SYSTEM',  now() ) ; 

Delete  from member_token where mt_id > 1;





