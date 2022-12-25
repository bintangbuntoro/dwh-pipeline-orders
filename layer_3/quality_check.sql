with qcheck as (
	select
		run_date,
		"customers" as table_name,
		count(*)
	from l2_dataset.customers
	where run_date = '@run_date'
	group by 1

	UNION ALL

	select
		run_date,
		"invoices" as table_name,
		count(*)
	from l2_dataset.invoices
	where run_date = '@run_date'
	group by 1

	UNION ALL

	select
		run_date,
		"order_lines" as table_name,
		count(*)
	from l2_dataset.order_lines
	where run_date = '@run_date'
	group by 1

	UNION ALL

	select
		run_date,
		"orders" as table_name,
		count(*)
	from l2_dataset.orders
	where run_date = '@run_date'
	group by 1

	UNION ALL

	select
		run_date,
		"payments" as table_name,
		count(*)
	from l2_dataset.payments
	where run_date = '@run_date'
	group by 1

	UNION ALL

	select
		run_date,
		"products" as table_name,
		count(*)
	from l2_dataset.products
	where run_date = '@run_date'
	group by 1
)
select
	*
from qcheck;