-- ================================
-- E-Commerce Database Schema
-- Author: Muhammad Shahrooz
-- Tool: PostgreSQL / pgAdmin 4
-- ================================

-- Table 1: customers
CREATE TABLE customers (
    cust_id SERIAL PRIMARY KEY,
    cust_name VARCHAR(100) NOT NULL,
    cust_city VARCHAR(50)
);

-- Table 2: products
CREATE TABLE products (
    p_id SERIAL PRIMARY KEY,
    p_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL
);

-- Table 3: orders (One-to-Many with customers)
CREATE TABLE orders (
    ord_id SERIAL PRIMARY KEY,
    ord_date DATE DEFAULT CURRENT_DATE,
    cust_id INT REFERENCES customers(cust_id) ON DELETE CASCADE
);

-- Table 4: order_items (Many-to-Many junction table)
CREATE TABLE order_items (
    item_id SERIAL PRIMARY KEY,
    ord_id INT NOT NULL REFERENCES orders(ord_id) ON DELETE CASCADE,
    p_id INT NOT NULL REFERENCES products(p_id) ON DELETE CASCADE,
    quantity INT NOT NULL CHECK(quantity > 0)
);
