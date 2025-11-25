/*
Inactive Sellers
Identify sellers who haven't made any sales in the past 6 months
*/

WITH cte1 AS
(
   SELECT * FROM sellers
WHERE   
    seller_id NOT IN (
        SELECT seller_id FROM orders WHERE order_date >= CURRENT_DATE - INTERVAL '6 month'
    ) 
)

SELECT
    cte1.seller_name,
    MAX(o.order_date)
FROM orders o
JOIN
    cte1 ON cte1.seller_id = o.seller_id
    GROUP BY 1

