 


INSERT INTO def_err_code 
(ec_code, ec_init_code, ec_desc, ec_disabled, ec_create_user, ec_create_timestamp, ec_update_user, ec_update_timestamp) 
VALUES  
 ('80020', 'INT_PSP_RETURN_NOT_FOUND', 'PSP Return Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
 ('10207', 'INT_INVALID_PSPID', 'Invalid PSP ID', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
 ('10208', 'INT_INVALID_MID', 'Invalid MID', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
 ('10209', 'INT_INVALID_HASHKEY', 'Invalid Hash Key', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
 ('10210', 'INT_INVALID_HASHIV', 'Invalid Hash IV', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
 ('10211', 'INT_INVALID_PAYMETHOD', 'Invalid PAY Method', '0', 'SYSTEM', now(), 'SYSTEM', now()); 

  

INSERT INTO txn_supported 
(ts_code, ts_desc, ts_channel_code, ts_support, ts_req_token, ts_req_email, ts_req_log, ts_disabled, ts_create_user, ts_create_timestamp, ts_update_user, ts_update_timestamp) 
VALUES  
('PCB', 'PSP Callback', 'API', '1', 'N', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
('SEPSP', 'Seller Edit PSP Key', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()); 


INSERT INTO `psp_client`( `pc_client_id`,`pc_client_name`,`pc_status`,`pc_disabled`,`pc_create_user`,`pc_create_timestamp`,`pc_update_user`,`pc_update_timestamp`) 
VALUES 
( 'ECPAY','綠界科技','OPEN',0 , 'SYSTEM', now(), 'SYSTEM', now() ),
( 'SUNPAY','紅陽','OPEN',0, 'SYSTEM', now(), 'SYSTEM', now()),
( 'NEWEBPAY','藍新','OPEN',0, 'SYSTEM', now(), 'SYSTEM', now());

 

INSERT INTO `psp_detail`( `pd_client_id`,`pd_psp_id`,`pd_psp_name`,`pd_region`,`pd_ccy`,`pd_psp_domain`,`pd_psp_txn_req_path`,`pd_service_domain`,`pd_service_request_path`,`pd_service_response_path`,`pd_service_callback_path`,`pd_release_period`,`pd_status`,`pd_disabled`,`pd_create_user`,`pd_create_timestamp`,`pd_update_user`,`pd_update_timestamp`) 
VALUES 
( 'ECPAY','ECPAY001','ECPAY','TW','TWD','http://mock.systest.site','https://payment-stage.ecpay.com.tw/Cashier/AioCheckOut/V5','https://apisaqa.systest.site/fe/psp/','https://payment-stage.ecpay.com.tw/Cashier/AioCheckOut/V5','response/','callback/',7,'OPEN',0, 'SYSTEM', now(), 'SYSTEM', now()),
( 'SUNPAY','SUNPAY001','DK MOCK','TW','TWD','http://mock.systest.site/','/devsimulator/dkpsp/','https://apisaqa.systest.site/fe/psp/','dk/request/index.php','dk/response/index.php','dk/callback/index.php',7,'OPEN',0, 'SYSTEM', now(), 'SYSTEM', now() ) ,
( 'NEWEBPAY','NEWEBPAY001','NEWEBPAY','TW','TWD','http://mock.systest.site/','https://ccore.newebpay.com/MPG/mpg_gateway','https://apisaqa.systest.site/fe/psp/','https://ccore.newebpay.com/MPG/mpg_gateway','response/','callback/',7,'OPEN',0, 'SYSTEM', now(), 'SYSTEM', now());
























