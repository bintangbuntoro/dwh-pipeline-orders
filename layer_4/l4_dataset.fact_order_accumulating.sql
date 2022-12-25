-- Table fact_order_accumulating {
--   order_date_id int
--   invoice_date_id int
--   payment_date_id int
--   customer_id int
--   order_number varchar
--   invoice_number varchar
--   payment_number varchar
--   total_order_quantity int
--   total_order_usd_amount decimal
--   order_to_invoice_lag_days int
--   invoice_to_payment_lag_days int
-- }

select
  dt_orders.id as order_date_id,
  dt_invoices.id as invoice_date_id,
  dt_payments.id as payment_date_id,
  customers.id as customer_id,
  orders.order_number,
  invoices.invoice_number,
  payments.payment_number,
  sum(order_lines.quantity) as total_order_quantity,
  sum(order_lines.usd_amount) as total_order_usd_amount,
  max(date_diff(orders.`date`, invoices.`date`, day)) as order_to_invoice_lag_days,
  max(date_diff(invoices.`date`, payments.`date`, day)) as invoice_to_payment_lag_days
from l3_dataset.orders as orders,
left join l4_dataset.dim_date as dt_orders on dt_orders.date = orders.date
left join l4_dataset.dim_date as dt_invoices on dt_invoices.date = orders.date
left join l4_dataset.dim_date as dt_payments on dt_payments.date = orders.date
left join l3_dataset.invoices as invoices on invoices.order_number = orders.order_number
left join l3_dataset.payments as payments on payments.invoice_number = invoices.invoice_number
left join l3_dataset.customers as customers.id = orders.customer_id
left join l3_dataset.order_lines as order_lines on order_lines.order_number = orders.order_number
group by 1,2,3,4,5,6,7