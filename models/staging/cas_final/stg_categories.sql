SELECT
  category_id,
  category_name
FROM {{ source('cas_final', 'categories') }}