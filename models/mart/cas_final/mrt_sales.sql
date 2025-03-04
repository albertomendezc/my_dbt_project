SELECT DISTINCT
  order_id,
  total_order_price,
  order_date,
  city,
  state,
  zip_code,
  "USA" AS country,
  customer_name
FROM {{ ref('int_orders') }} AS ord