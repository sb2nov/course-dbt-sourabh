{{ config(materialized='table') }}

SELECT 
    order_id as order_guid,
    stg_orders.user_guid,
    created_at_utc,
    order_cost,
    shipping_cost,
    order_total,
    status as order_status,
    COUNT(product_id)
FROM {{ref('stg_orders')}} AS stg_orders
JOIN {{ref('stg_order_items')}}
    USING (order_id)
GROUP BY 1, 2, 3, 4, 5, 6, 7