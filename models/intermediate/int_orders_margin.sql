SELECT 
    orders_id,
    date_date, 
    sum(revenue) as revenue, 
    sum(quantity) as qyantity,
    sum(purchase_cost) as purchase_cost,
    sum(margin) as margin,

FROM {{ref("int_sales_margin")}}
group by orders_id, date_date
order by orders_id