SELECT
    stocks.store_id,
    stocks.product_id,
    stocks.quantity,
    stocks.store_name,
    stocks.city,
    stocks.state,
    stocks.zip_code,
    prd.product_name,
    prd.category_id,
    prd.model_year,
    prd.list_price,
    prd.category_name,
    prd.brand_name
FROM {{ ref('int_store_stock') }} AS stocks
LEFT JOIN {{ ref('int_product_category') }} AS prd ON stocks.product_id = prd.product_id