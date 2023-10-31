with 


int_sales_margin AS 

(SELECT 

    p.products_id, 
    s.date_date, 
    s.orders_id,
    s.revenue, 
    s.quantity, 
    p.purchase_price,
    ROUND(s.quantity * p.purchase_price,2) AS purchase_cost,
    s.revenue - ROUND(s.quantity*p.purchase_price,2) AS margin

FROM {{ ref('stg_raw__sales') }} as s
LEFT JOIN  {{ ref('stg_raw__product') }} as p

ON p.products_id=s.products_id)

SELECT * FROM int_sales_margin