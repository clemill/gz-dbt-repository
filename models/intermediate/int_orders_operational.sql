select
    orders_id,
    date_date, 
    round((margin + shipping_fee - logcost - ship_cost),2) as operational_margin,
    quantity,
    round(revenue,2) as revenue,
    round(purchase_cost, 2) as purchase_cost,
    round(margin,2) as margin


    FROM {{ref("int_orders_margin")}}
LEFT JOIN {{ref("stg_raw__ship")}}
    USING (orders_id)
    order by orders_id