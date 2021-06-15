

INSERT INTO lsp_status_map
	(sm_int_code, sm_status_code, sm_status_desc, sm_group_code, sm_disabled, sm_create_user, sm_create_timestamp, sm_update_user, sm_update_timestamp)
VALUES
	('FAMILY','300','訂單處理中(已收到訂單資料)','PEND','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','310','訂單上傳處理中','PEND','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','2105','已申請門市變更','INTRANSIT','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','3018','到店尚未取貨，簡訊通知取件','DELIVERED','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','3019','退件到店尚未取貨，簡訊通知取件','RETURN','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','3020','貨件未取退回物流中心','RETURN','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','3021','退貨商品未取退回物流中心','RETURN','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','3022','買家已到店取貨','PICKED','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','3023','賣家已取買家未取貨','PICKED','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','3024','貨件已至物流中心','INTRANSIT','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','3025','退貨已退回物流中心','RETURN','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','3029','商品已轉換店（商品送達指定更換之取件店舖）','DELIVERED','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','3031','退貨商品已轉換店（退貨商品送達指定更換之取件店舖）','RETURN','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','3032','賣家已到門市寄件','INTRANSIT','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','4001','退貨商品已至門市交寄','RETURN','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','4002','退貨商品已至物流中心','RETURN','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','5009','進貨門市發生緊急閉店，提早退貨至物流中心','RETURN','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','7006','小物流遺失','OTHER','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','7007','門市遺失','OTHER','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','7008','小物流破損，退回物流中心','OTHER','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','7009','商品包裝不良（物流中心反應）','OTHER','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','7010','商品包裝不良（門市反應）','OTHER','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','7011','取件門市閉店，轉退回原寄件店','OTHER','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','7012','條碼錯誤，物流中心客服處理','OTHER','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','7013','訂單超過驗收期限（商家未出貨）','OTHER','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','7014','商家未到貨（若訂單成立隔日未到貨即會發送，直到訂單失效刪除）','OTHER','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','7015','條碼重複，物流中心客服處理','OTHER','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','7016','超才','OTHER','0','SYSTEM',now(),'SYSTEM',now()),
	('FAMILY','7032','寄件門市閉店','OTHER','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','2030','物流中心驗收成功','INTRANSIT','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','2067','消費者成功取件','PICKED','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','2068','交貨便收件(A門市收到件寄件商品)','INTRANSIT','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','2069','退貨便收件(商品退回指定C門市)','RETURN','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','2073','商品配達買家取貨門市','DELIVERED','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','2074','消費者七天未取，商品離開買家取貨門市','RETURN','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','2076','消費者七天未取，商品退回至大智通','RETURN','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','2077','廠商未至門市取退貨，商品退回至大智通','RETURN','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','2078','買家未取貨退回物流中心-驗收成功','RETURN','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','2079','買家未取貨退回物流中心-商品瑕疵(進物流中心)','RETURN','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','2080','買家未取貨退回物流中心-超材','RETURN','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','2081','買家未取貨退回物流中心-違禁品(退貨及罰款處理)','RETURN','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','2082','買家未取貨退回物流中心-訂單資料重覆上傳','RETURN','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','2083','買家未取貨退回物流中心-已過門市進貨日（未於指定時間內寄至物流中心）','RETURN','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','2084','買家未取貨退回物流中心-第一段標籤規格錯誤','RETURN','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','2085','買家未取貨退回物流中心-第一段標籤無法判讀','RETURN','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','2086','買家未取貨退回物流中心-第一段標籤資料錯誤','RETURN','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','2087','買家未取貨退回物流中心-物流中心理貨中','RETURN','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','2088','買家未取貨退回物流中心-商品遺失','RETURN','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','2089','買家未取退回物流中心-門市指定不配送(六、日)','RETURN','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','2092','買家未取退回物流中心-門市關轉','RETURN','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','2093','買家未取退回物流中心-爆量','RETURN','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','2101','門市關轉店','INTRANSIT','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','2102','門市舊店號更新','INTRANSIT','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','2103','無取件門市資料','OTHER','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','2104','門市臨時關轉店','INTRANSIT','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','2105','已申請門市變更','INTRANSIT','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','7019','寄件貨態異常協尋中','OTHER','0','SYSTEM',now(),'SYSTEM',now()),
	('UNIMART','7020','寄件遺失進行賠償程序','OTHER','0','SYSTEM',now(),'SYSTEM',now());
