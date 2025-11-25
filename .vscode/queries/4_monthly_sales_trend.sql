/* 
4. Monthly Sales Trend
Find monthly total sales over the past year
*/

WITH MaxDate AS
    (
        SELECT MAX(order_date) AS latest_date
        FROM orders o
    )

SELECT
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(oi.total_sales) AS total_sales
FROM orders o
JOIN 
    order_items oi ON o.order_id = oi.order_id 
    WHERE o.order_date >= (
                SELECT latest_date FROM MaxDate) - INTERVAL '1 year'
GROUP BY month
ORDER BY month ASC;