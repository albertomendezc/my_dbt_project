SELECT
  order_id,
  total_order_price,
  order_date,
  city,
  state,
  zip_code,
  customer_name
FROM {{ ref('int_orders') }} AS ord