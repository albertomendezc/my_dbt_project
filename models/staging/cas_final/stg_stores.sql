SELECT
    store_id,
    store_name,
    city,
    state,
    zip_code
FROM {{ source('cas_final', 'src_stores') }}