-- ================================
-- E-Commerce Analysis Queries
-- Author: Muhammad Shahrooz
-- ================================

-- 1. Complete order details with customer, product, quantity and total price
SELECT 
    c.cust_name,
    o.ord_date,
    p.p_name,
    p.price,
    oi.quantity,
    (p.price * oi.quantity) AS total_price
FROM order_items AS oi
INNER JOIN products AS p ON oi.p_id = p.p_id
INNER JOIN orders AS o ON oi.ord_id = o.ord_id
INNER JOIN customers AS c ON o.cust_id = c.cust_id;

-- 2. Total spending per customer
SELECT 
    c.cust_name,
    SUM(p.price * oi.quantity) AS total_spending
FROM order_items AS oi
INNER JOIN products AS p ON oi.p_id = p.p_id
INNER JOIN orders AS o ON oi.ord_id = o.ord_id
INNER JOIN customers AS c ON o.cust_id = c.cust_id
GROUP BY c.cust_name
ORDER BY total_spending DESC;

-- 3. Most sold product (by quantity)
SELECT 
    p.p_name,
    SUM(oi.quantity) AS total_quantity_sold
FROM order_items AS oi
INNER JOIN products AS p ON oi.p_id = p.p_id
GROUP BY p.p_name
ORDER BY total_quantity_sold DESC;

-- 4. Customers who never placed an order
SELECT c.cust_name
FROM customers AS c
LEFT JOIN orders AS o ON c.cust_id = o.cust_id
WHERE o.ord_id IS NULL;

-- 5. Products never ordered
SELECT p.p_name
FROM products AS p
LEFT JOIN order_items AS oi ON p.p_id = oi.p_id
WHERE oi.item_id IS NULL;
