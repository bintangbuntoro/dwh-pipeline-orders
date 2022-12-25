-- Table order_lines {
--   order_line_number varchar [primary key]
--   order_number varchar
--   product_id int
--   quantity int
--   usd_amount decimal
-- }

select
	SAFE_CAST(JSON_VALUE(`data_payload`, '$.order_line_number') AS string) AS `order_line_number`,
	SAFE_CAST(JSON_VALUE(`data_payload`, '$.order_number') AS string) AS `order_number`,
	SAFE_CAST(JSON_VALUE(`data_payload`, '$.product_id') AS integer) AS `product_id`,
	SAFE_CAST(JSON_VALUE(`data_payload`, '$.quantity') AS integer) AS `quantity`,
	SAFE_CAST(JSON_VALUE(`data_payload`, '$.usd_amount') AS numeric) AS `usd_amount`,
	run_date
from l1_dataset.order_lines
where 
	run_date = '@run_date';