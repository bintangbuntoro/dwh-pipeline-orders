select
	dt.year,
	dt.quarter_of_year,
	count(fact.order_number) as total_orders,
	sum(fact.total_order_quantity) as total_orders_quantity,
	sum(fact.total_order_usd_amount) as total_order_usd_amount
from l4_dataset.fact_order_accumulating as fact
left join l4_dataset.dim_date as dt on dt.id = fact.order_date_id
group by 1,2
order by 1,2