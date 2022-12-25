select
  dt_orders.id as order_date_id,
  dt_invoices.id as invoice_date_id,
  dt_payments.id as payment_date_id,
  customers.id as customer_id,
  orders.order_number,
  invoices.invoice_number,
  payments.payment_number,
  order_lines.product_id,
  order_lines.quantity,
  order_lines.usd_amount
from l3_dataset.orders as orders,
left join l4_dataset.dim_date as dt_orders on dt_orders.date = orders.date
left join l4_dataset.dim_date as dt_invoices on dt_invoices.date = orders.date
left join l4_dataset.dim_date as dt_payments on dt_payments.date = orders.date
left join l3_dataset.invoices as invoices on invoices.order_number = orders.order_number
left join l3_dataset.payments as payments on payments.invoice_number = invoices.invoice_number
left join l3_dataset.customers as customers.id = orders.customer_id
left join l3_dataset.order_lines as order_lines on order_lines.order_number = orders.order_number
