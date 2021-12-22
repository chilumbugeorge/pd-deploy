


INSERT INTO txn_supported 
(ts_code, ts_desc, ts_channel_code, ts_support, ts_req_token, ts_req_email, ts_req_log, ts_disabled, ts_create_user, ts_create_timestamp, ts_update_user, ts_update_timestamp) 
VALUES 
 ('BSE', 'Buyer Search Engine', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
 ('AGRE', 'Admin Report Event', 'ADM', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
 ('AGRP', 'Admin Report Product', 'ADM', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
 ('AGRS', 'Admin Report Seller', 'ADM', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()); 


 
 
INSERT INTO user_perm 
(up_sect_id,up_perm_id,up_msg_code, up_cd, up_name, up_desc, up_disabled, up_create_user, up_create_timestamp, up_update_user, up_update_timestamp) 
VALUES
 ('800001','800001','AGRS','ADMIN_REPORT_SELLER','賣家銷售報表','查看賣家銷售報表','0','SYSTEM',now(),'SYSTEM',now()) , 
 ('800001','800002','AGRP','ADMIN_REPORT_PRODUCT','產品銷售報表','查看產品銷售報表','0','SYSTEM',now(),'SYSTEM',now()) , 
 ('800001','800003','AGRE','ADMIN_REPORT_EVENT','拍賣活動報表','查看拍賣活動報表','0','SYSTEM',now(),'SYSTEM',now()) ; 

