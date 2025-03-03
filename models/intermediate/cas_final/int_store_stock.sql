SELECT
    stocks.store_id,
    stocks.product_id,
    stocks.quantity,
    stores.store_name,
    stores.city,
    stores.state,
    stores.zip_code
FROM {{ ref('stg_stocks') }} AS stocks
LEFT JOIN  {{ ref('stg_stores') }} AS stores ON stocks.store_id = stores.store_id
WHERE quantity > 0