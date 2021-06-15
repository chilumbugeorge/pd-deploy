

UPDATE def_status_group SET sg_code = 'TDEPOSIT', sg_desc = 'Deposit Transaction' WHERE sg_code = 'TXN';


UPDATE def_status_group SET sg_code = 'TRDEPOSIT', sg_desc = 'Refund Deposit Transaction' WHERE sg_code = 'TXNSUB';


DELETE FROM def_status_group WHERE sg_code = 'ORDER_HEAD';


INSERT INTO def_status_group
	(sg_code, sg_desc, sg_disabled, sg_create_user, sg_create_timestamp, sg_update_user, sg_update_timestamp)
VALUES
	('PSP_CLIENT', 'PSP Client', 0, 'SYSTEM', now(), 'SYSTEM', now()),
	('PSP', 'PSP', 0, 'SYSTEM', now(), 'SYSTEM', now()),
	('LSP_CLIENT', 'LSP Client', 0, 'SYSTEM', now(), 'SYSTEM', now()),
	('LSP', 'LSP', 0, 'SYSTEM', now(), 'SYSTEM', now()),
	('LSPTSG', 'LSP Transit Status Group', 0, 'SYSTEM', now(), 'SYSTEM', now());


INSERT INTO def_status
	(s_group, s_code, s_desc, s_disabled, s_create_user, s_create_timestamp, s_update_user, s_update_timestamp)
VALUES
	('BASKET', 'BCANCEL', 'Buyer Cancel', '0', 'SYSTEM', now(),'SYSTEM', now()),
	('BASKET', 'SCANCEL', 'Seller Cancel', '0', 'SYSTEM', now(),'SYSTEM', now()),
	('ORDER_DETA', 'PEND', 'Pending', '0', 'SYSTEM', now(),'SYSTEM', now()),
	('ORDER_DETA', 'CONFIRM', 'Confirm', '0', 'SYSTEM', now(),'SYSTEM', now()),
	('ORDER_DETA', 'REFUNDING', 'Refunding', '0', 'SYSTEM', now(),'SYSTEM', now()),
	('ORDER_DETA', 'REFUNDED', 'Refunded', '0', 'SYSTEM', now(),'SYSTEM', now()),
	('ORDER_DETA', 'INTRANSIT', 'Intransit', '0', 'SYSTEM', now(),'SYSTEM', now()),
	('ORDER_DETA', 'DELIVERED', 'Delivered', '0', 'SYSTEM', now(),'SYSTEM', now()),
	('ORDER_DETA', 'COMPLETE', 'Complete', '0', 'SYSTEM', now(),'SYSTEM', now()),
	('ORDER_DETA', 'REQRETURN', 'Request Return', '0', 'SYSTEM', now(),'SYSTEM', now()),
	('ORDER_DETA', 'DISPUTE', 'Dispute', '0', 'SYSTEM', now(),'SYSTEM', now()),
	('ORDER_DETA', 'RETURN', 'Return', '0', 'SYSTEM', now(),'SYSTEM', now()),
	('PSP_CLIENT', 'OPEN', 'Open', '0', 'SYSTEM', now(),'SYSTEM', now()),
	('PSP_CLIENT', 'CLOSE', 'Close', '0', 'SYSTEM', now(),'SYSTEM', now()),
	('PSP', 'OPEN', 'Open', '0', 'SYSTEM', now(),'SYSTEM', now()),
	('PSP', 'CLOSE', 'Close', '0', 'SYSTEM', now(),'SYSTEM', now()),
	('LSP_CLIENT', 'OPEN', 'Open', '0', 'SYSTEM', now(),'SYSTEM', now()),
	('LSP_CLIENT', 'CLOSE', 'Close', '0', 'SYSTEM', now(),'SYSTEM', now()),
	('LSP', 'OPEN', 'Open', '0', 'SYSTEM', now(),'SYSTEM', now()),
	('LSP', 'CLOSE', 'Close', '0', 'SYSTEM', now(),'SYSTEM', now()),
	('TDEPOSIT', 'INIT', 'Initial', '0', 'SYSTEM', now(),'SYSTEM', now()),
	('TDEPOSIT', 'FAIL', 'Fail', '0', 'SYSTEM', now(),'SYSTEM', now()),
	('TDEPOSIT', 'SENTTOPSP', 'Sent to PSP', '0', 'SYSTEM', now(),'SYSTEM', now()),
	('TDEPOSIT', 'PSPCONFIRM', 'PSP Confirm', '0', 'SYSTEM', now(),'SYSTEM', now()),
	('TRDEPOSIT', 'INIT', 'Initial', '0', 'SYSTEM', now(),'SYSTEM', now()),
	('TRDEPOSIT', 'FAIL', 'Fail', '0', 'SYSTEM', now(),'SYSTEM', now()),
	('TRDEPOSIT', 'SENTTOPSP', 'Sent to PSP', '0', 'SYSTEM', now(),'SYSTEM', now()),
	('TRDEPOSIT', 'PSPCONFIRM', 'PSP Confirm', '0', 'SYSTEM', now(),'SYSTEM', now()),
	('LSPTSG', 'INIT', 'Initial', '0', 'SYSTEM', now(),'SYSTEM', now()),
	('LSPTSG', 'PEND', 'Pending', '0', 'SYSTEM', now(),'SYSTEM', now()),
	('LSPTSG', 'INTRANSIT', 'Intransit', '0', 'SYSTEM', now(),'SYSTEM', now()),
	('LSPTSG', 'DELIVERED', 'Delivered', '0', 'SYSTEM', now(),'SYSTEM', now()),
	('LSPTSG', 'PICKED', 'Picked', '0', 'SYSTEM', now(),'SYSTEM', now()),
	('LSPTSG', 'RETURN', 'Return', '0', 'SYSTEM', now(),'SYSTEM', now()),
	('LSPTSG', 'OTHER', 'Other', '0', 'SYSTEM', now(), 'SYSTEM', now());


INSERT INTO txn_supported
	(ts_code, ts_desc, ts_channel_code, ts_support, ts_req_token, ts_req_email, ts_req_log, ts_disabled, ts_create_user, ts_create_timestamp, ts_update_user, ts_update_timestamp)
VALUES
	('BCOP ', 'Buyer Checkout payment ', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('SVEL', 'Seller View Event List', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now());


INSERT INTO def_precal_type
	(pt_code,pt_desc,pt_disabled, pt_create_user, pt_create_timestamp, pt_update_user, pt_update_timestamp)
VALUES
	('PRECENTAGE', 'Precentage', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('FIXAMT', 'Fixed Amount', '0', 'SYSTEM', now(), 'SYSTEM', now());


INSERT INTO def_payment_type
	(pm_code,pm_desc,pm_disabled, pm_create_user, pm_create_timestamp, pm_update_user, pm_update_timestamp)
VALUES
	('CREDIT', 'Credit Card', '0', 'SYSTEM', now(), 'SYSTEM', now());


INSERT INTO def_api_type
	(at_code,at_desc,at_disabled, at_create_user, at_create_timestamp, at_update_user, at_update_timestamp)
VALUES
	('PSPFP', 'PSP Form Post', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('PSPAPI', 'PSP API Request', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('LSPAPI', 'LSP API Request', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('PSPCB', 'PSP Call Back', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('LSPCB', 'LSP Call Back', '0', 'SYSTEM', now(), 'SYSTEM', now());


INSERT INTO def_log_type
	(lt_code,lt_desc,lt_disabled, lt_create_user, lt_create_timestamp, lt_update_user, lt_update_timestamp)
VALUES
	('REQUEST', 'Request Log', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('RESPONSE', 'Response Log', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('FORMPOST', 'Form Post', '0', 'SYSTEM', now(), 'SYSTEM', now());

