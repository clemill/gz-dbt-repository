select products_id, quantity, revenue, purchase_price
from {{ref('sales')}}
inner join 
{{ref('product')}}
