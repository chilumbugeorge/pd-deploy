

INSERT INTO def_status
	(s_group, s_code, s_desc, s_disabled, s_create_user, s_create_timestamp, s_update_user, s_update_timestamp)
VALUES
	('ORDER_DETA', 'FAIL', 'Fail', '0', 'SYSTEM', now(),'SYSTEM', now()),
	('ORDER_DETA', 'OTHER', 'Other', '0', 'SYSTEM', now(),'SYSTEM', now());


INSERT INTO txn_supported
	(ts_code, ts_desc, ts_channel_code, ts_support, ts_req_token, ts_req_email, ts_req_log, ts_disabled, ts_create_user, ts_create_timestamp, ts_update_user, ts_update_timestamp)
VALUES
	('BRORT', 'Buyer Request Order Return', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('BGRRD', 'Buyer Get Return And Refuse Description', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('SROR', 'Seller Response Order Return', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('SGRRD', 'Seller Get Return And Refuse Description', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('BRORF', 'Buyer Request Order Refund', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('BRARC', 'Buyer Request Account Remove Check', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('SRPS', 'Seller request Settlement', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now());


ALTER TABLE lsp_status_map
	ADD COLUMN `sm_order_group_code` VARCHAR(20) COLLATE utf8mb4_bin NOT NULL AFTER `sm_group_code`;


DELETE FROM lsp_status_map;


INSERT INTO lsp_status_map
	(sm_int_code, sm_status_code, sm_status_desc, sm_group_code, sm_order_group_code, sm_disabled, sm_create_user, sm_create_timestamp, sm_update_user, sm_update_timestamp)
VALUES
	('FAMILY','300','訂單處理中(已收到訂單資料)','PEND','CONFIRM','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','310','訂單上傳處理中','PEND','CONFIRM','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','2105','已申請門市變更','INTRANSIT','INTRANSIT','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','3018','到店尚未取貨，簡訊通知取件','DELIVERED','DELIVERED','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','3019','退件到店尚未取貨，簡訊通知取件','RETURN','REFUNDING','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','3020','貨件未取退回物流中心','RETURN','REFUNDING','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','3021','退貨商品未取退回物流中心','RETURN','REFUNDING','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','3022','買家已到店取貨','PICKED','COMPLETE','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','3023','賣家已取買家未取貨','PICKED','REFUNDED','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','3024','貨件已至物流中心','INTRANSIT','INTRANSIT','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','3025','退貨已退回物流中心','RETURN','REFUNDED','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','3029','商品已轉換店（商品送達指定更換之取件店舖）','DELIVERED','DELIVERED','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','3031','退貨商品已轉換店（退貨商品送達指定更換之取件店舖）','RETURN','REFUNDED','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','3032','賣家已到門市寄件','INTRANSIT','INTRANSIT','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','4001','退貨商品已至門市交寄','RETURN','REFUNDED','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','4002','退貨商品已至物流中心','RETURN','REFUNDED','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','5009','進貨門市發生緊急閉店，提早退貨至物流中心','RETURN','REFUNDED','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','7006','小物流遺失','OTHER','OTHER','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','7007','門市遺失','OTHER','OTHER','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','7008','小物流破損，退回物流中心','OTHER','OTHER','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','7009','商品包裝不良（物流中心反應）','OTHER','OTHER','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','7010','商品包裝不良（門市反應）','OTHER','OTHER','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','7011','取件門市閉店，轉退回原寄件店','OTHER','OTHER','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','7012','條碼錯誤，物流中心客服處理','OTHER','OTHER','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','7013','訂單超過驗收期限（商家未出貨）','OTHER','OTHER','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','7014','商家未到貨（若訂單成立隔日未到貨即會發送，直到訂單失效刪除）','OTHER','OTHER','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','7015','條碼重複，物流中心客服處理','OTHER','OTHER','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','7016','超才','OTHER','OTHER','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','7032','寄件門市閉店','OTHER','OTHER','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','2030','物流中心驗收成功','INTRANSIT','INTRANSIT','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','2067','消費者成功取件','PICKED','COMPLETE','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','2068','交貨便收件(A門市收到件寄件商品)','INTRANSIT','INTRANSIT','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','2069','退貨便收件(商品退回指定C門市)','RETURN','REFUNDED','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','2073','商品配達買家取貨門市','DELIVERED','DELIVERED','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','2074','消費者七天未取，商品離開買家取貨門市','RETURN','REFUNDED','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','2076','消費者七天未取，商品退回至大智通','RETURN','REFUNDED','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','2077','廠商未至門市取退貨，商品退回至大智通','RETURN','REFUNDED','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','2078','買家未取貨退回物流中心-驗收成功','RETURN','REFUNDED','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','2079','買家未取貨退回物流中心-商品瑕疵(進物流中心)','RETURN','REFUNDED','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','2080','買家未取貨退回物流中心-超材','RETURN','REFUNDED','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','2081','買家未取貨退回物流中心-違禁品(退貨及罰款處理)','RETURN','REFUNDED','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','2082','買家未取貨退回物流中心-訂單資料重覆上傳','RETURN','REFUNDED','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','2083','買家未取貨退回物流中心-已過門市進貨日（未於指定時間內寄至物流中心）','RETURN','REFUNDED','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','2084','買家未取貨退回物流中心-第一段標籤規格錯誤','RETURN','REFUNDED','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','2085','買家未取貨退回物流中心-第一段標籤無法判讀','RETURN','REFUNDED','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','2086','買家未取貨退回物流中心-第一段標籤資料錯誤','RETURN','REFUNDED','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','2087','買家未取貨退回物流中心-物流中心理貨中','RETURN','REFUNDED','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','2088','買家未取貨退回物流中心-商品遺失','RETURN','REFUNDED','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','2089','買家未取退回物流中心-門市指定不配送(六、日)','RETURN','REFUNDED','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','2092','買家未取退回物流中心-門市關轉','RETURN','REFUNDED','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','2093','買家未取退回物流中心-爆量','RETURN','REFUNDED','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','2101','門市關轉店','INTRANSIT','INTRANSIT','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','2102','門市舊店號更新','INTRANSIT','INTRANSIT','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','2103','無取件門市資料','OTHER','DISPUTE','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','2104','門市臨時關轉店','INTRANSIT','INTRANSIT','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','2105','已申請門市變更','INTRANSIT','INTRANSIT','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','7019','寄件貨態異常協尋中','OTHER','OTHER','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','7020','寄件遺失進行賠償程序','OTHER','REFUNDING','0','SYSTEM',now(),'SYSTEM',now());


INSERT INTO def_err_code 
	(ec_code, ec_init_code, ec_desc, ec_disabled, ec_create_user, ec_create_timestamp, ec_update_user, ec_update_timestamp) 
VALUES
	('10186', 'INT_GET_ORDER_DETAIL_ERROR', 'Order Get Order Detail Error by Order Detail No', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('10187', 'INT_LOGISTICS_ADDRESS_NOT_FOUND', 'Seller logistics address not found', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('10188', 'INT_RNAME_NOT_FOUND', 'Selller Name logistics not found', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('10189', 'INT_RPREFIX_NOT_FOUND', 'Selller Prefix logistics not found', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('10190', 'INT_RPHONE_NOT_FOUND', 'Selller Phone logistics not found', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('10191', 'INT_LSP_NOT_FOUND', 'LSP Not Found ', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('10192', 'INT_RETURN_DESC_NOT_FOUND', 'Return Description Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('80010', 'INT_LSP_REDIRECT_ERROR', 'LSP Redirect Error', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('80011', 'INT_LSP_CALLBACK_NOT_FOUND', 'LSP Callback Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('80012', 'INT_LSP_PARAM_NOT_FOUND', 'LSP Param Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('80013', 'INT_LSP_ACTION_NOT_FOUND', 'LSP Action Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('80014', 'INT_LSPCODE_ALREADY_REQUEST', 'LSP Code has already Requested ', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('80015', 'INT_LSPSTATUS_NOT_FOUND', 'LSP Status not found', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('10193', 'INT_ACCEPT_NOT_FOUND', 'Accept Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('10194', 'INT_INVALID_ACCEPT', 'Invalid Accept', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('10195', 'INT_REFUSE_DESC_NOT_FOUND', 'Refuse Description Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('10196', 'INT_INVALID_ZIPCODE', 'Invalid ZipCode', '0', 'SYSTEM', now(), 'SYSTEM', now()), 
	('10197', 'INT_DELETE_CONDITION_UNCOMPETE', 'Delete Account Condition Uncomplete', '0', 'SYSTEM', now(), 'SYSTEM', now()); 
