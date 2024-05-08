SELECT
    date_date
    ,ROUND(SUM(ads_cost),0) AS ads_cost
    ,ROUND(SUM(impression),0) AS ads_impression
    ,ROUND(SUM(click),0) AS ads_click
FROM {{ref("int_campaigns")}}
GROUP BY date_date
ORDER BY date_date ASC