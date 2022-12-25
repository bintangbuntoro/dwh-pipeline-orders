-- Table order_lines {
--   order_line_number varchar [primary key]
--   order_number varchar
--   product_id int
--   quantity int
--   usd_amount decimal
-- }

select
	*
from order_lines
where 
	updated_at = '@run_date'
	or created_at = '@run_date';