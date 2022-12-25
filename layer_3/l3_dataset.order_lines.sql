select
	`order_line_number`,
	`order_number`,
	`product_id`,
	`quantity`,
	`usd_amount`,
	run_date
from l2_dataset.order_lines
where 
	run_date = '@run_date';