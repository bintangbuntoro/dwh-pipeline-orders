-- Table dim_customer {
--   id int
--   name varchar
-- }

select
	id,
	name
from l3_dataset.customer
where 
	run_date = '@run_date';