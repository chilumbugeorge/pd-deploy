 


INSERT INTO def_shop_type 
(st_code,st_title_tc,st_title_en, st_disabled, st_create_user, st_create_timestamp, st_update_user, st_update_timestamp) 
VALUES
 ('ST0001','美妝','美妝','0','SYSTEM',now(),'SYSTEM',now()) , 
 ('ST0002','服飾','服飾','0','SYSTEM',now(),'SYSTEM',now()) , 
 ('ST0003','電子產品','電子產品','0','SYSTEM',now(),'SYSTEM',now()) , 
 ('ST0004','家具','家具','0','SYSTEM',now(),'SYSTEM',now()) , 
 ('ST0005','手工藝品','手工藝品','0','SYSTEM',now(),'SYSTEM',now()) , 
 ('ST0006','珠寶','珠寶','0','SYSTEM',now(),'SYSTEM',now()) , 
 ('ST0007','繪畫','繪畫','0','SYSTEM',now(),'SYSTEM',now()) , 
 ('ST0008','攝影','攝影','0','SYSTEM',now(),'SYSTEM',now()) , 
 ('ST0009','餐廳','餐廳','0','SYSTEM',now(),'SYSTEM',now()) , 
 ('ST0010','雜貨','雜貨','0','SYSTEM',now(),'SYSTEM',now()) , 
 ('ST0011','其他餐飲','其他餐飲','0','SYSTEM',now(),'SYSTEM',now()) , 
 ('ST0012','運動','運動','0','SYSTEM',now(),'SYSTEM',now()) , 
 ('ST0013','玩具','玩具','0','SYSTEM',now(),'SYSTEM',now()) , 
 ('ST0014','服務','服務','0','SYSTEM',now(),'SYSTEM',now()) , 
 ('ST0015','虛擬服務','虛擬服務','0','SYSTEM',now(),'SYSTEM',now()) , 
 ('ST0016','其他餐飲','其他餐飲','0','SYSTEM',now(),'SYSTEM',now()) , 
 ('ST0017','我尚未做出決定','我尚未做出決定','0','SYSTEM',now(),'SYSTEM',now()) ; 



 INSERT INTO def_err_code 
(ec_code, ec_init_code, ec_desc, ec_disabled, ec_create_user, ec_create_timestamp, ec_update_user, ec_update_timestamp) 
VALUES 
 ('10203', 'INT_INVALID_SHOPNAME', 'Invalid Shop Name', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
 ('10204', 'INT_SHOPNAME_REPEATS', 'Invalid Shop Name Repeats', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
 ('10205', 'INT_INVALID_SHOPTPYPE', 'Invalid Shop Type', '0', 'SYSTEM', now(), 'SYSTEM', now()); 



INSERT INTO txn_supported 
(ts_code, ts_desc, ts_channel_code, ts_support, ts_req_token, ts_req_email, ts_req_log, ts_disabled, ts_create_user, ts_create_timestamp, ts_update_user, ts_update_timestamp) 
VALUES
 ('SCSN ', 'Seller Check Shop Name', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
 ('SUSN ', 'Seller Update Shop Name', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
 ('ADEF', 'APP Define Setting', 'API', '1', 'N', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
 ('AGSS', 'Admin Seller Shop', 'ADM', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()); 

