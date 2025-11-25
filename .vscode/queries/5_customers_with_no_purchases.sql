/* 
5. Inactive customers
- Find customers who have registered but never placed an order
- Group them by state and find which state(s) have the most number of inactive customers.
*/


SELECT
    c.state,
    COUNT(*) AS customer_count
FROM customers c
LEFT JOIN orders o 
    ON c.customer_id = o.customer_id
WHERE 
    o.order_id IS NULL
GROUP BY
    c.state
ORDER BY
    customer_count DESC