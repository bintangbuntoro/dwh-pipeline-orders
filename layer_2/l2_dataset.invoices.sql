-- Table invoices {
--   invoice_number varchar [primary key]
--   order_number varchar
--   date date
-- }

select
	SAFE_CAST(JSON_VALUE(`data_payload`, '$.invoice_number') AS string) AS `invoice_number`,
	SAFE_CAST(JSON_VALUE(`data_payload`, '$.order_number') AS string) AS `order_number`,
	SAFE_CAST(JSON_VALUE(`data_payload`, '$.date') AS date) AS `date`,
	run_date
from l1_dataset.invoices
where 
	run_date = '@run_date';