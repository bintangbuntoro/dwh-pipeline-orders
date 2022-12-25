-- Table products {
--   id int [primary key]
--   name varchar
-- }

select
	SAFE_CAST(JSON_VALUE(`data_payload`, '$.id') AS integer) AS `id`,
	SAFE_CAST(JSON_VALUE(`data_payload`, '$.name') AS string) AS `name`,
	run_date
from l1_dataset.products
where 
	run_date = '@run_date';