-- Table customers {
--   id int [primary key]
--   name varchar
-- }

select
	*
from customers
where 
	updated_at = '@run_date'
	or created_at = '@run_date';