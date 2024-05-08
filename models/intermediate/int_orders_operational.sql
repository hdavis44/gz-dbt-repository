SELECT
    o.orders_id
    ,o.date_date
    ,ROUND(o.margin + s.shipping_fee - s.log_cost - s.ship_cost,2) AS operational_margin
    ,o.revenue
    ,o.quantity
    ,o.purchase_price
    ,o.purchase_cost
    ,o.margin
    ,s.shipping_fee
    ,s.log_cost
    ,s.ship_cost
FROM {{ref("int_orders_margin")}} AS o
LEFT JOIN {{ref("stg_raw__ship")}} AS s
    ON o.orders_id = s.orders_id