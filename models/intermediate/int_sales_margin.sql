SELECT
    s.date_date
    ,s.orders_id
    ,s.products_id
    ,s.revenue
    -- ,s.quantity
    ,p.purchase_price
    -- ,ROUND(s.quantity * p.purchase_price,2) AS purchase_cost
    -- ,ROUND(s.revenue - (s.quantity * p.purchase_price),2) AS margin
    -- ,{{ margin_percent(revenue, quantity * purchase_price) }}
FROM {{ref("stg_raw__sales")}} AS s
LEFT JOIN {{ref("stg_raw__product")}} AS p
    ON s.products_id = p.products_id