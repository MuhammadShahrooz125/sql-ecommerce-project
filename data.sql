-- ================================
-- E-Commerce Sample Data
-- Author: Muhammad Shahrooz
-- ================================

-- Insert customers
INSERT INTO customers (cust_name, cust_city)
VALUES
('Raju', 'Lahore'),
('Sham', 'Karachi'),
('Paul', 'Islamabad');

-- Insert products
INSERT INTO products (p_name, price)
VALUES
('Laptop', 55000.00),
('Mouse', 500.00),
('Keyboard', 800.00),
('Cable', 250.00);

-- Insert orders
INSERT INTO orders (ord_date, cust_id)
VALUES
('2024-01-01', 1),
('2024-02-01', 2),
('2024-03-01', 3),
('2024-04-04', 2);

-- Insert order_items
INSERT INTO order_items (ord_id, p_id, quantity)
VALUES
(1, 1, 1),
(1, 4, 2),
(2, 1, 1),
(3, 2, 1),
(3, 4, 5),
(4, 3, 1);
