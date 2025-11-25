/*
14. Products pending shipment
-Find all products for which payment has been completed but has not yet been shipped
*/

SELECT
    *
FROM 
    orders o
-- LEFT JOIN
--     customers c ON o.customer_id = o.customer_id
-- JOIN
--     shipping s ON o.order_id = s.order_id
-- LIMIT 10