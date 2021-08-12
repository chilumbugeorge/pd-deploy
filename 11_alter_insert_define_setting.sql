

ALTER TABLE seller_detail
   DROP INDEX seller_detail_idx01;

ALTER TABLE seller_detail
   ADD UNIQUE INDEX seller_detail_idx01(sr_seller_id);
   
   

INSERT INTO sequence_data ( seq_name, seq_increment, seq_min_value, seq_max_value, seq_cur_value, seq_cycle, seq_disabled, seq_create_user, seq_create_timestamp, seq_update_user, seq_update_timestamp )
VALUES
	( 'ORDER_ID', '1', '1', '9999999999999999999', '1', '0', '0', 'SYSTEM', now(), 'SYSTEM', now() ),
	( 'ORDER_DETAIL_ID', '1', '1', '9999999999999999999', '1', '0', '0', 'SYSTEM', now(), 'SYSTEM', now() ),
	( 'TXN_ID', '1', '1', '9999999999999999999', '1', '0', '0', 'SYSTEM', now(), 'SYSTEM', now() ),
	( 'ADMIN_USER_ID', '1', '1', '9999999999999999999', '2', '0', '0', 'SYSTEM', now(), 'SYSTEM', now() ),
	( 'ADMIN_GROUP_ID', '1', '1', '9999999999999999999', '6', '0', '0', 'SYSTEM', now(), 'SYSTEM', now() );
	
	
INSERT INTO txn_supported (ts_code, ts_desc, ts_channel_code, ts_support, ts_req_token, ts_req_email, ts_req_log, ts_disabled, ts_create_user, ts_create_timestamp, ts_update_user, ts_update_timestamp) 
VALUES
	('ACONF', 'Admin Confing', 'ADM', '1', 'N', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('ALOGIN', 'Admin Login', 'ADM', '1', 'N', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('ADASH', 'Admin Dashbroad', 'ADM', '1', 'N', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('AGAL', 'Get Admin Account List', 'ADM', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('AGPGL', 'Admin Get Perm Group List', 'ADM', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('AGPGD', 'Admin Get Perm Group Detail', 'ADM', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('AGAD', 'Get Account Detail', 'ADM', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('ACUG', 'Admin Change User Group', 'ADM', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('AAUG', 'Admin Add User Group', 'ADM', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('AUUG', 'Admin Update User Group', 'ADM', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('ADUG', 'Admin Delete User Group', 'ADM', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('AUAD', 'Admin Update User Detail', 'ADM', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('AGGPL', 'Admin Get Group Person List', 'ADM', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('AGULL', 'Admin Get User Log List', 'ADM', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now());
 
 
INSERT INTO def_user_perm_sect ( du_sect_id, du_sect_cd, du_sect_desc, du_order, du_disabled, du_create_user, du_create_timestamp, du_update_user, du_update_timestamp )
VALUES
	( '200001', 'seller', '賣家列表', '2', '0', 'SYSTEM', now(), 'SYSTEM', now() ),
	( '300001', 'buyer', '買家列表', '2', '0', 'SYSTEM', now(), 'SYSTEM', now() ),
	( '400001', 'order', '訂單管理', '2', '0', 'SYSTEM', now(), 'SYSTEM', now() ),
	( '500001', 'tran', '交易管理', '2', '0', 'SYSTEM', now(), 'SYSTEM', now() ),
	( '600001', 'kyc', 'KYC管理', '2', '0', 'SYSTEM', now(), 'SYSTEM', now() ),
	( '700001', 'logistics', '物流管理', '2', '0', 'SYSTEM', now(), 'SYSTEM', now() ),
	( '800001', 'report', '報表', '3', '0', 'SYSTEM', now(), 'SYSTEM', now() ),
	( '900001', 'cs', '客服工作台', '3', '0', 'SYSTEM', now(), 'SYSTEM', now() ),
	( '110001', 'qanda', '服務條款與Q&A', '3', '0', 'SYSTEM', now(), 'SYSTEM', now() ),
	( '100001', 'accountList', '管理員管理', '1', '0', 'SYSTEM', now(), 'SYSTEM', now() ),
	( '120001', 'system', '設定', '0', '0', 'SYSTEM', now(), 'SYSTEM', now() ),
	( '130001', '3RD_PARTY', '第三方支付管理', '2', '0', 'SYSTEM', now(), 'SYSTEM', now() ),
	( '140001', 'event', '拍賣活動管理', '2', '0', 'SYSTEM', now(), 'SYSTEM', now() ),
	( '100000', 'BASE', '基本功能', '0', '0', 'SYSTEM', now(), 'SYSTEM', now() );
	
INSERT INTO user_perm_group ( ug_group_id, ug_group_name, ug_group_desc, ug_status, ug_disabled, ug_create_user, ug_create_timestamp, ug_update_user, ug_update_timestamp )
VALUES
	( 'S001', '其他', '其他', '1', '0', 'SYSTEM', now(), 'SYSTEM', now() ),
	( 'S002', '最高管理者', '最高管理者', '1', '0', 'SYSTEM', now(), 'SYSTEM', now() ),
	( 'S003', '會計組', '會計組', '1', '0', 'SYSTEM', now(), 'SYSTEM', now() ),
	( 'S004', '客服人員', '客服人員', '1', '0', 'SYSTEM', now(), 'SYSTEM', now() ),
	( 'S005', 'Admin', 'Admin', '1', '0', 'SYSTEM', now(), 'SYSTEM', now()); 

	
INSERT INTO def_err_code ( ec_code, ec_init_code, ec_desc, ec_disabled, ec_create_user, ec_create_timestamp, ec_update_user, ec_update_timestamp )
VALUES
	( '90000', 'INT_INVALID_LDAP_FAIL', 'LDAP Fail', '0', 'SYSTEM', now(), 'SYSTEM', now() ),
	( '90002', 'INT_INVALID_ADMIN_USERNAME', 'Username Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now() ),
	( '90003', 'INT_INVALID_ADMIN_PASSWORD', 'Password Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now() ),
	( '90004', 'INT_INVALID_LDAP_ACCOUNT_FAIL', 'LDAP Login Account Fail', '0', 'SYSTEM', now(), 'SYSTEM', now() ),
	( '90005', 'INT_INVALID_USER_ID', 'User ID Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now() ),
	( '90006', 'INT_INVALID_GET_USER_DETAIL_FAIL', 'Get User Detail Fail', '0', 'SYSTEM', now(), 'SYSTEM', now() ),
	( '90007', 'INT_GET_USER_PERMISSION_FAIL', 'Get User Permission Fail', '0', 'SYSTEM', now(), 'SYSTEM', now() ),
	( '90008', 'INT_INVALID_GROUP_ID', 'Group ID Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now() ),
	( '90009', 'INT_CHANGE_USER_GROUP_FAIL', 'Change User Group Fail', '0', 'SYSTEM', now(), 'SYSTEM', now() ),
	( '90010', 'INT_INVALID_GROUP_NAME', 'Group Name Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now() ),
	( '90011', 'INT_INVALID_GROUP_DESC', 'Group Description Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now() ),
	( '90012', 'INT_ADD_USER_GROUP_FAIL', 'Add User Group Fail', '0', 'SYSTEM', now(), 'SYSTEM', now() ),
	( '90013', 'INT_UPDATE_USER_GROUP_FAIL', 'Update User Group Fail', '0', 'SYSTEM', now(), 'SYSTEM', now() ),
	( '90014', 'INT_DELETE_USER_GROUP_FAIL', 'Delete User Group Fail', '0', 'SYSTEM', now(), 'SYSTEM', now() ),
	( '90015', 'INT_UPDATE_USER_PERM_FAIL', 'Update User Permission Fail', '0', 'SYSTEM', now(), 'SYSTEM', now() ),
	( '90016', 'INT_UPDATE_USER_FAIL', 'Update User Fail', '0', 'SYSTEM', now(), 'SYSTEM', now() ),
	( '90017', 'INT_INVALID_USER_STATUS', 'User Status Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now() );
	
INSERT INTO user_perm ( up_sect_id, up_perm_id, up_msg_code, up_cd, up_name, up_desc, up_disabled, up_create_user, up_create_timestamp, up_update_user, up_update_timestamp )
VALUES
	( '100000', '100000', 'ADASH', 'ADMIN_DASHBOARD', 'View Dashboard', 'View Dashboard', '0', 'SYSTEM', now(), 'SYSTEM', now() ),
	( '100001', '100001', 'AGAL', 'ADMIN_USER_LIST', '管理員列表', '查看所有管理員', '0', 'SYSTEM', now(), 'SYSTEM', now() ),
	( '100001', '100002', 'AGAD', 'ADMIN_USER_DETAIL', '管理員資料', '可以編輯管理員資料', '0', 'SYSTEM', now(), 'SYSTEM', now() ),
	( '100001', '100004', 'AGPGL', 'ADMIN_GROUP_LIST', '權限群組列表', '查看所有權限群組', '0', 'SYSTEM', now(), 'SYSTEM', now() ),
	( '100001', '100005', 'AGPGD', 'ADMIN_GROUP_DETAIL', '權限群組資料', '可以新增,編輯，刪除權限群組', '0', 'SYSTEM', now(), 'SYSTEM', now() );

INSERT INTO user_detail ( ud_login_type, ud_login_type_id, ud_user_id, ud_username, ud_email, ud_dispaly_name, ud_user_status, ud_first_name, ud_last_name, ud_locked, ud_fail_count, ud_disabled, ud_create_user, ud_create_timestamp, ud_update_user, ud_update_timestamp ) 
VALUES
	( 'ADMIN', 'admin', 'A0000000000000000001', 'admin', 'Admin@shipaucation.com', 'Admin User', '1', 'Admin', 'Admin', '0', '0', '0', 'SYSTEM', now(), 'SYSTEM', now()) ; 

	
INSERT INTO user_perm_group_rel ( ugr_group_id, ugr_perm_id, ugr_disabled, ugr_create_user, ugr_create_timestamp, ugr_update_user, ugr_update_timestamp )
VALUES
	( 'S001', '100000', '0', 'SYSTEM', now(), 'SYSTEM', now() ),
	( 'S001', '100001', '0', 'SYSTEM', now(), 'SYSTEM', now() ),
	( 'S005', '100000', '0', 'SYSTEM', now(), 'SYSTEM', now() ),
	( 'S005', '100001', '0', 'SYSTEM', now(), 'SYSTEM', now() ),
	( 'S005', '100002', '0', 'SYSTEM', now(), 'SYSTEM', now() ),
	( 'S005', '100004', '0', 'SYSTEM', now(), 'SYSTEM', now() ),
	( 'S005', '100005', '0', 'SYSTEM', now(), 'SYSTEM', now() );
	
INSERT INTO user_perm_group_assign ( uga_user_id, uga_group_id, uga_disabled, uga_create_user, uga_create_timestamp, uga_update_user, uga_update_timestamp )
VALUES
	( 'A0000000000000000001', 'S005', '0', 'SYSTEM', now(), 'SYSTEM', now() );
	

	


