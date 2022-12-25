select
	fact.*,
	dim_cust.name as customer_name,
	dim_prd.name as product_name
from l4_dataset.fact_order_details as fact
left join dim_customers as dim_cust on dim_cust.id = fact.customer_id
left join dim_products as dim_prd on dim_prd.id = fact.product_id