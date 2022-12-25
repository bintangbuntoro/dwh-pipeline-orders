-- Table products {
--   id int [primary key]
--   name varchar
-- }

select
	*
from products
where 
	updated_at = '@run_date'
	or created_at = '@run_date';