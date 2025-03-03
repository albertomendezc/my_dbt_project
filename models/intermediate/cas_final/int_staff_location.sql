SELECT
  staffs.staff_id,
  staffs.staff_name,
  staffs.active,
  staffs.store_id,
  staffs.manager_id,
  stores.store_name,
  stores.city,
  stores.state,
  stores.zip_code
FROM {{ ref('stg_staffs') }} AS staffs
LEFT JOIN {{ ref('stg_stores') }} AS stores ON stores.store_id = staffs.store_id
