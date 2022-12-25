select
	`id`,
	`name`,
	run_date
from l2_dataset.products
where 
	run_date = '@run_date';