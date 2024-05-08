SELECT
    f.date_date
    ,f.operational_margin - c.ads_cost AS ads_margin
    ,f.average_basket
    ,f.operational_margin
    ,c.ads_cost
    ,c.ads_impression
    ,c.ads_click
FROM {{ref("finance_day")}} AS f
LEFT JOIN {{ref("int_campaigns_day")}} AS c
    ON f.date_date = c.date_date