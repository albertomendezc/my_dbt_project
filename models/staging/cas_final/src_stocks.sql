SELECT
    store_id,
    product_id,
    quantity
FROM {{ source('cas_final', 'stocks') }}