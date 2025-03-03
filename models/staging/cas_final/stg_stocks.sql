SELECT
    store_id,
    product_id,
    quantity
FROM {{ source('cas_final', 'src_stocks') }}