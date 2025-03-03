SELECT
    ori.order_id,
    ori.item_id,
    ori.product_id,
    ori.quantity,
    ori.list_price,
    ori.discount,
    ori.final_price,
    ori.total_order_price,
    prd.product_name,
    prd.brand_id,
    prd.category_id,
    prd.model_year,
    cat.category_name,
    brands.brand_name
FROM {{ ref('stg_order_items') }} AS ori
LEFT JOIN {{ ref('stg_products') }} prd ON ori.product_id = prd.product_id
LEFT JOIN {{ ref('stg_categories') }} AS cat ON prd.category_id = cat.category_id
LEFT JOIN {{ ref('stg_brands') }} AS brands ON prd.brand_id = brands.brand_id
