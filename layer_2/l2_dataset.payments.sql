-- Table payments {
--   payment_number varchar [primary key]
--   invoice_number varchar
--   date date
-- }

select
	SAFE_CAST(JSON_VALUE(`data_payload`, '$.payment_number') AS string) AS `payment_number`,
	SAFE_CAST(JSON_VALUE(`data_payload`, '$.invoice_number') AS string) AS `invoice_number`,
	SAFE_CAST(JSON_VALUE(`data_payload`, '$.date') AS date) AS `date`,
	run_date
from l1_dataset.payments
where 
	run_date = '@run_date';