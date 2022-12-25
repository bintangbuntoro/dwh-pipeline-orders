select
	`id`,
	`name`,
	run_date
from l2_dataset.customers
where 
	run_date = '@run_date';