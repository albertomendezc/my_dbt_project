SELECT
  brand_id,
  brand_name
FROM {{ source('cas_final', 'brands') }}