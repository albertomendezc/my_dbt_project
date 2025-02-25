select CONCAT(order_id, '_', product_id) AS order_item_id_x,
 order_id_x,
 product_id_x,
 4 as column4_x,
 seller_id_x,
 DATETIME(pickup_limit_date, "Europe/Paris") AS picked_up_limited_at_y,
 price as unit_price_y,
 shipping_cost_y,
 quantity as item_quantity_y,
 (price * quantity) + shipping_cost as total_order_item_amoun_yt
from {{ source('sales_database', 'order_item') }}
