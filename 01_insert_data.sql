


INSERT INTO txn_supported 
(ts_code, ts_desc, ts_channel_code, ts_support, ts_req_token, ts_req_email, ts_req_log, ts_disabled, ts_create_user, ts_create_timestamp, ts_update_user, ts_update_timestamp) 
VALUES 
 ('AGOD', 'Admin Get Order Detail', 'ADM', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
 ('AGCSL', 'Admin Get Cs Support List', 'ADM', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
 ('AGCSD', 'Admin Get Cs Support Detail', 'ADM', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
 ('ARCSD', 'Admin Reply Support Content', 'ADM', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
 ('AGRDL', 'Admin Get Request Delete Listt', 'ADM', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()); 



INSERT INTO def_cs_support_type 
(dc_code, dc_desc, dc_disabled, dc_create_user, dc_create_timestamp, dc_update_user,dc_update_timestamp) 
VALUES 
 ('ADMIN_REP', 'CS reply Contact', '0', 'SYSTEM', now(), 'SYSTEM', now()); 

 
 
 INSERT INTO def_err_code 
(ec_code, ec_init_code, ec_desc, ec_disabled, ec_create_user, ec_create_timestamp, ec_update_user, ec_update_timestamp) 
VALUES 
 ('90023', 'Get Seller Detail Fail', 'INT_INVALID_GET_SELLER_DETAIL_FAIL', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
 ('90024', 'Get BuyerDetail Fail', 'INT_INVALID_GET_BUYER_DETAIL_FAIL', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
 ('90025', 'Buyer ID Not Found', 'INT_INVALID_BUYER_ID', '0', 'SYSTEM', now(), 'SYSTEM', now()),   
 ('10200', 'Invalid Support ID', 'INT_INVALID_SUPPORT_ID', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
 ('10201', 'Invalid Support Content', 'INT_INVALID_REPLY_CONTENT', '0', 'SYSTEM', now(), 'SYSTEM', now()); 
