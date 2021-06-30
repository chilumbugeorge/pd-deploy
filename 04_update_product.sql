

UPDATE product SET pd_status='OPEN' WHERE pd_disabled=0;


UPDATE product SET pd_status='CLOSE', pd_disabled = 0 WHERE pd_disabled=1;


UPDATE rel_event_product INNER JOIN event ON rel_event_product.lep_event_id = event.ed_event_id SET rel_event_product.lep_status='END' WHERE event.ed_status='END';

