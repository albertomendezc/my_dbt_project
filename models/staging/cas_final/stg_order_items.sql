SELECT
    order_id,
    item_id,
    product_id,
    quantity,
    list_price,
    discount,
    ROUND(list_price * discount,2) AS final_price,
    ROUND(SUM(list_price * discount) OVER (PARTITION BY order_id),2) AS total_order_price
FROM {{ source('cas_final', 'src_order_items') }}