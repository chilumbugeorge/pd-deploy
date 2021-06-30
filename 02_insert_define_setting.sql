

ALTER TABLE def_err_code
	ADD COLUMN `ec_init_code` VARCHAR(50) COLLATE utf8mb4_bin NOT NULL AFTER `ec_desc`;


INSERT INTO def_status_group
	(sg_code, sg_desc, sg_disabled, sg_create_user, sg_create_timestamp, sg_update_user, sg_update_timestamp)
VALUES
	('ORDER_RETU', 'Order Return Status', 0, 'SYSTEM', now(), 'SYSTEM', now());


INSERT INTO def_status
	(s_group, s_code, s_desc, s_disabled, s_create_user, s_create_timestamp, s_update_user, s_update_timestamp)
VALUES
	('ORDER_RETU', 'PEND', 'Pending', '0', 'SYSTEM', now(),'SYSTEM', now()),
	('ORDER_RETU', 'ACCEPTED', 'Accepted', '0', 'SYSTEM', now(),'SYSTEM', now()),
	('ORDER_RETU', 'REFUSED', 'Refused', '0', 'SYSTEM', now(), 'SYSTEM', now());


INSERT INTO txn_supported
	(ts_code, ts_desc, ts_channel_code, ts_support, ts_req_token, ts_req_email, ts_req_log, ts_disabled, ts_create_user, ts_create_timestamp, ts_update_user, ts_update_timestamp)
VALUES
	('PSPCALBE', 'PSP Call Back Be', 'API', '1', 'N', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('PSPCALFE', 'PSP Call Back Fe', 'API', '1', 'N', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('SVOL', 'Sellecr Order List', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('SVOD', 'Sellecr Order Detail', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('BVOL', 'Buyer View Order List', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('BVOD', 'Buyer View Order Detail', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('SRL', 'Sellecr Order Detail request Logistics', 'API', '1', 'Y', 'N', 'Y', '0', 'SYSTEM', now(), 'SYSTEM', now());


INSERT INTO def_err_code
	(ec_code, ec_init_code, ec_desc, ec_disabled, ec_create_user, ec_create_timestamp, ec_update_user, ec_update_timestamp)
VALUES
	('00000', 'INT_NO_ERR', 'No Error', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('-1', 'INT_OTHER_ERR', 'Systen Other Error', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('90001', 'INT_HACK_DETECTED', 'Hack Detected', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('999999', 'ERR_SQL', 'Error Sql', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('11000', 'INT_INVALID_PARAM_SIZE', 'Invalid Param Size', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10001', 'INT_EMAIL_NOT_FOUND', 'Email Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10002', 'INT_INVALID_EMAIL', 'Invalid Email', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10003', 'INT_NAME_NOT_FOUND', 'Name Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10004', 'INT_PASSWORD_NOT_FOUND', 'Password Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10005', 'INT_DEVICE_TYPE_NOT_FOUND', 'Device Type Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10006', 'INT_ENCRYPT_TYPE_NOT_FOUND', 'Encrypt Type Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10007', 'INT_MAC_NOT_FOUND', 'Mac Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10008', 'INT_DEV_SEQ_NOT_FOUND', 'Dev Seq Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10009', 'INT_AUTH_DATA_NOT_FOUND', 'Auth Data Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10010', 'INT_INVALID_MAC', 'Invalid Mac', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10011', 'INT_CHANNEL_CODE_NOT_FOUND', 'Channel Code Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10012', 'INT_TXN_CODE_NOT_FOUND', 'Txn Code Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10013', 'INT_TXN_CODE_NOT_SUPPORTED', 'Txn Code Not Supported', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10014', 'INT_INVALID_KEY_SIZE', 'Invalid Key Size', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10015', 'INT_INVALID_MSG_TYPE', 'Invalid Msg Type', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10016', 'INT_INVALID_MSG_CODE', 'Invalid Msg Code', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10017', 'INT_INVALID_VERSION', 'Invalid Version', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10018', 'INT_INVALID_ENC_TYPE', 'Invalid Encrypt Type', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10019', 'INT_INVALID_DEV_SEQ', 'Invalid Device Seq', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10020', 'INT_INVALID_DEV_TYPE', 'Invalid Device Type', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10021', 'INT_INVALID_DEV_VERSION', 'Invalid Device Version', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10022', 'INT_INVALID_DEV_IP', 'Invalid Device IP', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10023', 'INT_INVALID_DEV_LANG', 'Invalid Device Language', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10024', 'INT_INVALID_TXN_DATE', 'Invalid Txn Date', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10025', 'INT_INVALID_ECHO_MSG', 'Invalid Echo Msg', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10026', 'INT_INVALID_ENC_INFO', 'Invalid Enc Info', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10027', 'INT_INVALID_TOKEN', 'Invalid Token', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10028', 'INT_INVALID_EMAIL_TYPE', 'Invalid Email Type', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10029', 'INT_INVALID_PASSWORD', 'Invalid Password', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10030', 'INT_INVALID_NEW_PASSWORD', 'Invalid New Password', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10031', 'INT_INVALID_PIN_CODE', 'Invalid Pin Code', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10032', 'INT_INVALID_OS_COUNTRY', 'Invalid OS Country', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10033', 'INT_INVALID_OS_STATE', 'Invalid OS State', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10034', 'INT_INVALID_OS_COUNTY', 'Invalid OS County', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10035', 'INT_INVALID_OS_CITY', 'Invalid OS City', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10036', 'INT_INVALID_PAGE_SIZE', 'Invalid Page Size', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10037', 'INT_VERSION_NOT_FOUND', 'Version Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10038', 'INT_MEMBER_ID_NOT_FOUND', 'Member ID Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10039', 'INT_EMAIL_TYPE_NOT_FOUND', 'Email Type Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10040', 'INT_EMAIL_ID_NOT_FOUND', 'Email ID Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10041', 'INT_TOKEN_NOT_FOUND', 'Token Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10042', 'INT_NEW_PASSWORD_NOT_FOUND', 'New Password Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10043', 'INT_INVALID_CATEGORY_RELATION', 'Invalid Category Relation', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10044', 'INT_INVALID_LOCATION_RELATION', 'Invalid Loaction Relation', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10045', 'INT_INVALID_DEV_ID', 'Invalid Device ID', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10046', 'INT_DEV_ID_NOT_FOUND', 'Device ID Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10047', 'INT_SYSTEM_PARAMETER_NOT_FOUND', 'System Parameter Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10048', 'INT_TOKEN_EXPIRED', 'Token Expired', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10049', 'INT_PASSWORD_SAME_AS_NEWPASSWORD', 'Password And New Password Is Same', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10050', 'INT_MEMBER_STATUS_INACTIVE', 'Member Status Inactive', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10051', 'INT_EMAIL_STATUS_INACTIVE', 'Email Status Inactive', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10052', 'INT_LOGINID_NOT_FOUND', 'Login ID Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10053', 'INT_LOGINID_OR_PASSWORD_WROND', 'Login ID Or Password Wrong', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10054', 'INT_USERNAME_NOT_FOUND', 'Username Not found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10055', 'INT_INVALID_USERNAME', 'Invalid Username', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10056', 'INT_USERNAME_REPEATS', 'Username Repeats', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10057', 'INT_INVALID_PHONE_NUM', 'Invalid Phone Number', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10058', 'INT_KYCTYPE_NOT_FOUND', 'KYC Type Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10059', 'INT_COUNTRYPREFIX_NOT_FOUND', 'Country Prefix Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10060', 'INT_PHONE_NOT_FOUND', 'Phone Number Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10061', 'INT_VERIFY_CODE_NOT_FOUND', 'Verify Code Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10062', 'INT_INVALID_KYCTYPE', 'Invalid KYC Type', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10063', 'INT_INVALID_VERIFY_CODE', 'Invalid Verify Code', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10064', 'INT_MEMBER_STATUS_ACTIVE', 'Member Status Active', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10065', 'INT_MEMBER_NOT_EXIST', 'Member Not Exist', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10066', 'INT_PHONE_NOT_VERIFY', 'Phone Number Not Verify', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10067', 'INT_PHONE_VERIFY', 'Phone Number Verified', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10068', 'INT_PHONE_CODE_ERR', 'Phone Number Code Error', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10069', 'INT_VERIFY_CODE_EXPIRED', 'Verify Code Expired', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10070', 'INT_EMAIL_VERIFY', 'Email Verified', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10071', 'INT_MEMBER_INFO_NOT_EXIST', 'Member Info Not Exist', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10072', 'INT_ONLY_SUPPORT_PHONE_LOGIN', 'Only Support Phone Number Login', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10073', 'INT_VERIFY_CODE_FAILURE', 'Verify Code Failure', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10074', 'INT_MEMBER_LOCKED', 'Member Locked', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10075', 'INT_PHONE_IN_USED', 'Phone Number Is Already In Use', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10076', 'INT_EMAIL_IN_USED', 'Email Is Already In Use', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10077', 'INT_EMAIL_NOT_CHANGE', 'Email Not Change', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10078', 'INT_EMAIL_REPEATS', 'Email Repeats', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10079', 'INT_LOGISTICS_TYPE_NOT_FOUND', 'Logistics Type Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10080', 'INT_INVALID_LOGISTICS_TYPE', 'Invalid Logistics Type', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10081', 'INT_LOGISTICS_SUB_TYPE_NOT_FOUND', 'Logistics Sub Type Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10082', 'INT_INVALID_LOGISTICS_SUB_TYPE', 'Invalid Logistics Sub Type', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10083', 'INT_RECIPIENT_NAME_NOT_FOUND', 'Recipient Name Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10084', 'INT_ADDRESS_NOT_FOUND', 'Address Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10085', 'INT_CITY_NOT_FOUND', 'City Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10086', 'INT_DISTRICT_NOT_FOUND', 'District Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10087', 'INT_ZIPCODE_NOT_FOUND', 'Zipcode Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10088', 'INT_STORE_NAME_NOT_FOUND', 'Store Name Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10089', 'INT_STORE_NO_NOT_FOUND', 'Store No Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10090', 'INT_ADDRESS_NO_NOT_FOUND', 'Address No Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10091', 'INT_SETTING_GROUP_NOT_FOUND', 'Setting Group Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10092', 'INT_SETTING_TYPE_NOT_FOUND', 'Setting Type Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10093', 'INT_SETTING_VAL_NOT_FOUND', 'Setting Value Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10094', 'INT_CPN_TYPE_NOT_FOUND', 'CPN Type Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10095', 'INT_INVALID_CPN_TYPE', 'Invalid CPN Type', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10096', 'INT_PHONE_NOT_CHANGE', 'Phone Number Not Change', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10097', 'INT_TEMPLATE_NOT_FOUND', 'Template Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10098', 'INT_BID_NOT_FOUND', 'Bid Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10099', 'INT_BANK_NAME_NOT_FOUND', 'Bank Name Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10100', 'INT_INVALID_BANK_NAME', 'Invalid Bank Name', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10101', 'INT_HOLDER_NAME_NOT_FOUND', 'Holder Name Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10102', 'INT_INVALID_HOLDER_NAME', 'Invalid Holder Name', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10103', 'INT_HOLDER_ID_NOT_FOUND', 'Holder ID Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10104', 'INT_INVALID_HOLDER_ID', 'Invalid Holder ID', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10105', 'INT_ACCT_NUM_NOT_FOUND', 'Account Nunber Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10106', 'INT_INVALID_ACCT_NUM', 'Invalid Account Number', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10107', 'INT_BRANCH_NOT_FOUND', 'Branch Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10108', 'INT_INVALID_BRANCH', 'Invalid Branch', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10109', 'INT_INVALID_DISTRICT', 'Invalid District', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10110', 'INT_MERCHANT_RECORD_NOT_FOUND', 'Merchant Record Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10111', 'INT_BID_RECORD_NOT_FOUND', 'Bid Record Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10112', 'INT_SHOP_NOT_FOUND', 'Shop Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10113', 'INT_MLIST_NOT_FOUND', 'Mlist Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10114', 'INT_BLID_NOT_FOUND', 'BLID Not found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10115', 'INT_BLID_RECORD_NOT_FOUND', 'BLID Record Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10116', 'INT_REGION_NOT_FOUND', 'Region Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10117', 'INT_STATUS_NOT_FOUND', 'Status Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10118', 'INT_POSTAL_CODE_NOT_FOUND', 'Postal Code Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10119', 'INT_BUYER_ID_NOT_FOUND', 'Buyer ID Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10120', 'INT_LOGISTICS_ID_NOT_FOUND', 'Logistics ID Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10121', 'INT_PAGE_NOT_FOUND', 'Page Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10122', 'INT_PAGE_SIZE_NOT_FOUND', 'Page Size Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10123', 'INT_EVENT_NAME_NOT_FOUND', 'Event Name Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10124', 'INT_START_DATETIME_NOT_FOUND', 'Start Datetime Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10125', 'INT_CUT_OFF_TIME_NOT_FOUND', 'Cut Off Time Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10126', 'INT_CONTENT_TYPE_NOT_FOUND', 'Content Type Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10127', 'INT_EVENT_ID_NOT_FOUND', 'Event ID Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10128', 'INT_PRODUCT_ID_NOT_FOUND', 'Product ID Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10129', 'INT_JOIN_EVENT_NOT_FOUND', 'Join Event Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10130', 'INT_JOIN_EVENT_FOUND', 'Join Event Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10131', 'INT_JOIN_STATUS_NOT_FOUND', 'Join Status Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10132', 'INT_INVALID_JOIN_STATUS', 'Invalid Join Status', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10133', 'INT_SWITCH_NOT_FOUND', 'Switch Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10134', 'INT_INVALID_SWITCH', 'Invalid Swtich', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10135', 'INT_EVENT_RECORD_NOT_FOUND', 'Event Record Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10136', 'INT_EVENT_END', 'Event End', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10137', 'INT_INVALID_LOGISTICS_ID', 'Invalid logistics ID', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10138', 'INT_ADDRESS_RECORD_NOT_FOUND', 'Address Record Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10139', 'INT_PRODUCT_RECORD_NOT_FOUND', 'Product Record Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10140', 'INT_PRODUCT_STATUS_NOT_START', 'Product Status Not Start', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10141', 'INT_PRODUCT_QUANTITY_NOT_ENOUGH', 'Product Quantity Not Enough', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10142', 'INT_BASKET_RECORD_NOT_FOUND', 'Basket Record Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10143', 'INT_EVENT_IS_STARTING', 'Event i\Is Starting', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10144', 'INT_BASKET_ID_NOT_FOUND', 'Basket ID Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10145', 'INT_EVENT_PEND', 'Event Pend', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10146', 'INT_BASKET_DETAIL_ID_NOT_FOUND', 'Basket Detail ID Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10147', 'INT_BASKET_DETAIL_RECORD_NOT_FOUND', 'Basket Detail Record Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10148', 'INT_EVENT_PRODUCT_PEND', 'Event Product Pend', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10149', 'INT_EVENT_PRODUCT_START', 'Event Product Start', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10150', 'INT_EVENT_PRODUCT_END', 'Event Product End', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10151', 'INT_EVENT_PRODUCT_NOT_START', 'Event Product Not Start', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10152', 'INT_PRODUCT_DETAIL_NOT_FOUND', 'Product Detail Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10153', 'INT_PRODUCT_DETAIL_OVER_MAXIMUM', 'Product Detail Over Maximum', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10154', 'INT_EVENT_NOT_START', 'Event Not Start', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10155', 'INT_UPLOAD_FILE_ERROR', 'Upload File Error', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10156', 'INT_PAY_TYPE_NOT_FOUND', 'Pay Type Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10157', 'INT_INVALID_PAY_TYPE', 'Invalid Pay Type', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10158', 'INT_DLIST_NOT_FOUND', 'DLIST Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10159', 'INT_INVALID_DLIST', 'Invalid DLIST', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10160', 'INT_INVALID_BASKET_DETAIL_NUM', 'Invalid Basket Detail Number', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10161', 'INT_PARTY_TYPE_NOT_FOUND', 'Party Type Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10162', 'INT_VERIFY_TYPE_NOT_FOUND', 'Verify Type Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10163', 'INT_INVALID_VERIFY_TYPE', 'Invalid Verify Type', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10164', 'INT_INVALID_DATE_FORMAT', 'Invalid Date Format', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10165', 'INT_BASKET_INVALID', 'Invalid Basket', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10166', 'INT_BASKET_EVENT_INVALID', 'invalid Basket Event', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10167', 'INT_EMAIL_NOT_VERIFY', 'Email Not Verify', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('80000', 'INT_INVALID_TXN', 'Invalid Txn', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('80001', 'INT_TXN_AMT_ZORE', 'Txn Amount Zore', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('80002', 'INT_TXN_CCY_EMPTY', 'Txn Currency Empty', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('80003', 'INT_PSP_NOT_FOUND', 'PSP Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('80004', 'INT_PSP_KEY_NOT_FOUND', 'PSP Key Not found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('80005', 'INT_PSP_COST_NOT_FOUND', 'PSP Cost Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('80006', 'INT_PSP_REDIRECT_ERROR', 'PSP Redirect Error', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10168', 'INT_PERMISSION_DENIED', 'Permission Denied', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10169', 'INT_BASKET_SHOP_INVALID', 'Invalid Basket Shop', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10170', 'INT_PRODUCT_NAME_NOT_FOUND', 'Product Name Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10171', 'INT_PACK_SIZE_NO_NOT_FOUND', 'Pack Size No Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10172', 'INT_PAID_BY_NOT_FOUND', 'Paid By Not found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10173', 'INT_LOGISTIC_SUPPORT_NOT_FOUND', 'Logistic Support Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10174', 'INT_STYLE_DESC_NOT_FOUND', 'Style Desc Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10175', 'INT_QUANTITY_NOT_FOUND', 'Quantity Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10176', 'INT_PRICE_NOT_FOUND', 'Price Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10177', 'INT_IMAGE_NOT_FOUND ', 'Image Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10178', 'INT_IMAGE_TYPE_NOT_FOUND ', 'Image Type Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10179', 'INT_ORDER_NO_NOT_FOUND ', 'Order No Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10180', 'INT_ORDER_DETAIL_NO_NOT_FOUND', 'Order Detial No Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10181', 'INT_ORDER_PAGE_NOT_FOUND ', 'Order Page Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10182', 'INT_INVALID_ORDER_PAGE ', 'Invalid Order Page', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10183', 'INT_PRODUCT_LOGISTIC_NOT_FOUND ', 'Product Logistic Not found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10184', 'INT_ADDRESS_NOT_SUPPORT ', 'Address Not Support', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('10185', 'INT_SHOP_OR_MERCHANT_NOT_SUPPORT ', 'Shop Or Merchant Not Support', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('80007', 'INT_PSP_CALLBACK_NOT_FOUND', 'PSP Callback Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('80008', 'INT_PSP_PARAM_NOT_FOUND', 'Psp Param Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now()),
	('80009', 'INT_TXN_NOT_FOUND', 'Txn Not Found', '0', 'SYSTEM', now(), 'SYSTEM', now());

