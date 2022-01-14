 


INSERT INTO txn_supported 
(ts_code, ts_desc, ts_channel_code, ts_support, ts_req_token, ts_req_email, ts_req_log, ts_disabled, ts_create_user, ts_create_timestamp, ts_update_user, ts_update_timestamp) 
VALUES 
 ('SAOR', 'Seller add Order Remark ', 'API', '2', 'Y', 'N', 'Y', '1', 'SYSTEM', now(), 'SYSTEM', now()), 
 ('BAOR', 'Buyer add Order Remark', 'API', '3', 'Y', 'N', 'Y', '2', 'SYSTEM', now(), 'SYSTEM', now()), 
 ('BCOD', 'Buyer Cancel Order ', 'API', '4', 'Y', 'N', 'Y', '3', 'SYSTEM', now(), 'SYSTEM', now()), 
 ('SCOD', 'Seller Cancel Order ', 'API', '5', 'Y', 'N', 'Y', '4', 'SYSTEM', now(), 'SYSTEM', now()); 
