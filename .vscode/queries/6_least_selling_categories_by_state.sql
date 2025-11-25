/*
6.Best-Selling Categories by State
Identify the best-selling product categories by state
*/

SELECT
    c.state,
    cat.category_name,
    ROUND(SUM(oi.total_sales::NUMERIC), 2) AS total_sales
FROM orders o
JOIN 
    customers c ON o.customer_id = c.customer_id
JOIN 
    order_items oi ON o.order_id = oi.order_id
JOIN 
    products p ON oi.product_id = p.product_id
JOIN 
    category cat ON p.category_id = cat.category_id
GROUP BY 1,2
ORDER BY total_sales DESC;
