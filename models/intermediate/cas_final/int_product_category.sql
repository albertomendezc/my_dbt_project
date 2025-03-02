SELECT
    prd.product_id,
    prd.product_name,
    prd.brand_id,
    prd.category_id,
    prd.model_year,
    prd.list_price,
    cat.category_name,
    brands.brand_name
FROM {{ ref('products') }} AS prd
LEFT JOIN {{ ref('categories') }} AS cat ON prd.category_id = cat.category_id
LEFT JOIN {{ ref('brands') }} AS brands ON prd.brand_id = brands.brand_id