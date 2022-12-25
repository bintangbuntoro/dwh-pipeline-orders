-- Table invoices {
--   invoice_number varchar [primary key]
--   order_number varchar
--   date date
-- }

select
	*
from invoices
where 
	updated_at = '@run_date'
	or created_at = '@run_date';