-- Table orders {
--   order_number varchar [primary key]
--   customer_id int
--   date date
-- }

select
	*
from orders
where 
	updated_at = '@run_date'
	or created_at = '@run_date';