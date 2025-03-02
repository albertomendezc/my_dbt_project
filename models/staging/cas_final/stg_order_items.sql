SELECT
    order_id,
    item_id,
    product_id,
    quantity,
    list_price,
    discount,
    list_price * discount AS final_price,
    SUM(list_price * discount) OVER (PARTITION BY order_id) AS total_order_price
FROM {{ source('cas_final', 'src_order_items') }}