# 🛒 E-Commerce SQL Database Project

## 📌 Business Problem
E-Commerce businesses need to efficiently track which 
customers placed which orders and which products were 
in each order — with total price calculation.

## 🎯 Solution
Designed a normalized PostgreSQL database with proper 
relationships and wrote analytical queries to fetch 
complete order details.

## 🗄️ Schema (4 Tables)
- **customers** — customer info
- **products** — product catalog with price
- **orders** — customer orders
- **order_items** — junction table (Many-to-Many)

## 🔗 Relationships
- customers → orders: **One-to-Many**
- orders ↔ products: **Many-to-Many** (via order_items)

## 📊 Key Query Output
| cust_name | ord_date | p_name | price | quantity | total_price |
|-----------|----------|--------|-------|----------|-------------|
| Raju | 2024-01-01 | Laptop | 55000 | 1 | 55000 |
| Raju | 2024-01-01 | Cable | 250 | 2 | 500 |
| Sham | 2024-02-01 | Laptop | 55000 | 1 | 55000 |
| Paul | 2024-03-01 | Mouse | 500 | 1 | 500 |

## 💡 SQL Concepts Used
- Table Design (PRIMARY KEY, FOREIGN KEY, CHECK, DEFAULT)
- One-to-Many & Many-to-Many Relationships
- 4-table INNER JOIN
- LEFT JOIN + IS NULL
- GROUP BY + ORDER BY
- Calculated Columns (quantity × price)

## 📁 Files
| File | Description |
|------|-------------|
| `schema.sql` | Table creation queries |
| `data.sql` | Sample data insertion |
| `analysis.sql` | Business analytics queries |

## 🛠️ Tools Used
- PostgreSQL 18
- pgAdmin 4
