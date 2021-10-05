



INSERT INTO  def_region_logistics
	( rl_code , rl_region , rl_lg_type , rl_lg_sub_type , rl_lg_desc , rl_ccy , rl_amt , rl_support , rl_disabled , rl_create_user , rl_create_timestamp , rl_update_user , rl_update_timestamp )
VALUES
	('TW_H_SELLER','TW','HOME_DLI','SELLER','Seller Delivery','TWD',0.0000,1,0,'SYSTEM',now(),'SYSTEM',now());


INSERT INTO txn_supported
	(ts_code, ts_desc, ts_channel_code, ts_support, ts_req_token, ts_req_email, ts_req_log, ts_disabled, ts_create_user, ts_create_timestamp, ts_update_user, ts_update_timestamp)
VALUES
	 ('AGBL', 'Admin Get Buyer List', 'ADM', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	 ('AGBD', 'Admin Get Buyer Detail', 'ADM', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	 ('AGBOL', 'Admin Get Buyer Order List', 'ADM', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	 ('AGBOD', 'Admin Get Buyer Order Detail', 'ADM', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	 ('AGBRTE', 'Admin Get Buyer Real Event Detail', 'ADM', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	 ('AGBELH', 'Admin Get Buyer Event List History', 'ADM', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	 ('AGKYCL', 'Admin Get KYC List', 'ADM', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	 ('ADBD', 'Admin Delete Buyer Detail', 'ADM', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	 ('AGBA', 'Admin Get Buyer Address', 'ADM', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now());



INSERT INTO user_perm
	(up_sect_id, up_perm_id,up_msg_code,up_cd,up_name, up_desc, up_disabled, up_create_user, up_create_timestamp, up_update_user, up_update_timestamp )
VALUES
	('300001','300001','AGBL','ADMIN_BUYER_LIST','買家列表','查看所有買家','0','SYSTEM',now(),'SYSTEM',now()) , 
	('300001','300002','AGBD','ADMIN_BUYER_DETAIL','買家資料','可以新增,編輯，刪除權限買家資料','0','SYSTEM',now(),'SYSTEM',now()) , 
	('600001','600001','AGKYCL','ADMIN_KYC_LIST','KYC管理','可以新增,編輯，刪除權限買家/賣家資料','0','SYSTEM',now(),'SYSTEM',now()) ; 


 
UPDATE system_parameter SET
	sp_val =  '20211006000000'
WHERE 
	sp_code = 'CONSOLE_UPDATE' ;



DELETE FROM member_token WHERE mt_id > 1;





