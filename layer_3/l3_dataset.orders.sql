select
	`order_number`,
	`customer_id`,
	`date`,
	run_date
from l2_dataset.orders
where 
	run_date = '@run_date';