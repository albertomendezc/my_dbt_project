SELECT
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
FROM {{ ref('orders') }} AS ord
LEFT JOIN {{ ref('customers') }} AS cus ON cus.customer_id = ord.customer_id
LEFT JOIN {{ ref('order_items') }} AS oitems ON oitems.order_id = ord.order_id