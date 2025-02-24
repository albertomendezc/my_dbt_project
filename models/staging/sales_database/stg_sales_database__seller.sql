select seller_id,
 seller_zip_code,
 seller_city,
 seller_state,
 3 as column3,
 4 as column4
from {{ source('sales_database', 'seller') }}