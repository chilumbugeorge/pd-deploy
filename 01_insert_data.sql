 

 

INSERT INTO txn_supported 
(ts_code, ts_desc, ts_channel_code, ts_support, ts_req_token, ts_req_email, ts_req_log, ts_disabled, ts_create_user, ts_create_timestamp, ts_update_user, ts_update_timestamp) 
VALUES
 ('BLTE ', 'Buyer Link change to eventNo', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()),  
 ('AGSSL', 'Admin Seller Shop List', 'ADM', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()); 


INSERT INTO def_err_code 
(ec_code, ec_init_code, ec_desc, ec_disabled, ec_create_user, ec_create_timestamp, ec_update_user, ec_update_timestamp) 
VALUES 
 ('10206', 'INT_INVALID_LINK', 'Invalid Event Link', '0', 'SYSTEM', now(), 'SYSTEM', now()) ; 
