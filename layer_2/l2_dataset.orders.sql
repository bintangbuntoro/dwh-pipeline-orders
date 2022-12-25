-- Table orders {
--   order_number varchar [primary key]
--   customer_id int
--   date date
-- }

select
	SAFE_CAST(JSON_VALUE(`data_payload`, '$.order_number') AS string) AS `order_number`,
	SAFE_CAST(JSON_VALUE(`data_payload`, '$.customer_id') AS integer) AS `customer_id`,
	SAFE_CAST(JSON_VALUE(`data_payload`, '$.date') AS date) AS `date`,
	run_date
from l1_dataset.orders
where 
	run_date = '@run_date';