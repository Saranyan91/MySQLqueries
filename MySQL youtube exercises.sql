USE sql_invoicing;

SELECT 
    p.date, p.invoice_id,p.amount, c.name AS 'Client Name', pm.name AS 'Payment method'
FROM
    payments p
        JOIN
    clients c ON p.client_id = c.client_id
        JOIN
    payment_methods pm ON p.payment_method = pm.payment_method_id
; 
-- USE sql_store;

-- SELECT 
--     o.order_id,
--     o.order_date,
--     CONCAT(c.first_name, ' ', c.last_name) AS CustomerName,
--     os.name AS 'status'
-- FROM
--     orders o
--         JOIN
--     customers c ON o.customer_id = c.customer_id
--         JOIN
--     order_statuses os ON os.order_status_id = o.statuspayments;


-- SELECT 
--    e.employee_id, concat(e.first_name ,' ', e.last_name) as Employee_fullname, concat(m.first_name, ' ' ,m.last_name) as Manager_Fullname
-- FROM
--     employees e
--         JOIN
--     employees m ON e.reports_to = m.employee_id;

-- SELECT 
--     oi.order_id, oi.product_id, p.name, oi.quantity, oi.unit_price
-- FROM
--     order_items oi
--         JOIN
--     products p ON oi.product_id = p.product_id;
-- SELECT *
-- FROM customers 
-- ORDER BY points DESC
-- LIMIT 3;

-- SELECT * 
-- FROM order_items
-- WHERE order_id = 2
-- ORDER BY (unit_price * quantity) DESC;
-- SELECT * 
-- FROM orders
-- WHERE shipped_date IS NULL;
-- SELECT * 
-- FROM customers 
-- WHERE first_name REGEXP 'ELKA|AMBUR';
-- SELECT * 
-- FROM customers 
-- WHERE last_name REGEXP 'EY$|ON$';
-- SELECT * 
-- FROM customers 
-- WHERE last_name REGEXP '^MY|SE';
-- SELECT * 
-- FROM customers 
-- WHERE last_name REGEXP 'b[ru]';
-- SELECT 
--     *
-- FROM
--     customers
-- WHERE
--     (address LIKE '%TRAIL%'
--         OR address LIKE '%AVENUE%')
--         OR phone NOT LIKE '%9';

-- SELECT 
--     *
-- FROM
--     customers
-- WHERE
--     birth_date BETWEEN '1990-01-01' AND '2000-01-01';

-- SELECT * 
-- FROM products
-- where quantity_in_stock IN(49,38,72);
-- SELECT *
-- FROM customers
-- WHERE state NOT IN('VA','GA','FL');
/* SELECT
	*
FROM customers
WHERE birth_date <= '1990-01-01' AND points < 1000;
 */
 
--  SELECT *
--  FROM order_items
--  WHERE order_id = 6 AND (quantity * unit_price) > 30