select
	`invoice_number`,
	`order_number`,
	`date`,
	run_date
from l2_dataset.invoices
where 
	run_date = '@run_date';