-- Table payments {
--   payment_number varchar [primary key]
--   invoice_number varchar
--   date date
-- }

select
	*
from payments
where 
	updated_at = '@run_date'
	or created_at = '@run_date';