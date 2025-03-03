SELECT
  total_order_price,
  order_date,
  city,
  customer_name
FROM {{ ref('int_orders') }} AS ord