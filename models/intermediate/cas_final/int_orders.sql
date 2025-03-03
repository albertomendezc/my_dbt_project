SELECT DISTINCT
    ord.order_id,
    ord.customer_id,
    ord.order_status,
    ord.order_date,
    ord.required_date,
    ord.shipped_date,
    ord.store_id,
    ord.staff_id,
    cus.customer_name,
    cus.city,
    cus.state,
    cus.zip_code,
    oitems.total_order_price
FROM {{ ref('stg_orders') }} AS ord
INNER JOIN {{ ref('stg_customers') }} AS cus ON cus.customer_id = ord.customer_id
INNER JOIN {{ ref('stg_order_items') }} AS oitems ON oitems.order_id = ord.order_id