SELECT 
    products_id, 
    date_date, 
    orders_id,
    revenue, 
    quantity,
    (quantity * purchase_price) as purchase_cost,
    (revenue - (quantity * purchase_price)) as margin,

FROM {{ref("stg_raw__sales")}}
LEFT JOIN {{ref("stg_raw__product")}}
    USING (products_id)