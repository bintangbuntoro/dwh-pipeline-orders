select
	`payment_number`,
	`invoice_number`,
	`date`,
	run_date
from l2_dataset.payments
where 
	run_date = '@run_date';