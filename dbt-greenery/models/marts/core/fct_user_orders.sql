{{ config(materialized='table') }}

SELECT 
    user_guid,
    COUNT(1) as num_orders
FROM {{ref('dim_users')}}
JOIN {{ref('fct_orders')}}
    USING (user_guid)
GROUP BY user_guid
