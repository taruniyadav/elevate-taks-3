-- Creating the database
CREATE DATABASE EcommerceDB;

--using the database
USE EcommerceDB;

-- checking if its working or not
SELECT name
FROM sys.databases;

USE EcommerceDB;
GO

--creating a table
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255),
    price DECIMAL(10, 2),
    category VARCHAR(100)
);


USE EcommerceDB;
SELECT * FROM INFORMATION_SCHEMA.TABLES;

-- checking if the table has been created or not
SELECT * FROM Products;

-- inserting the values 
INSERT INTO Products (product_id, product_name, price, category)
VALUES
(1, 'Smartphone A', 699.99, 'Electronics'),
(2, 'Smartphone B', 799.49, 'Electronics'),
(3, 'Laptop A', 999.99, 'Electronics'),
(4, 'Laptop B', 1299.00, 'Electronics'),
(5, 'Bluetooth Speaker', 49.99, 'Electronics'),
(6, 'Wireless Mouse', 24.99, 'Electronics'),
(7, 'Office Desk', 189.99, 'Furniture'),
(8, 'Ergonomic Chair', 299.50, 'Furniture'),
(9, 'Bookshelf', 89.99, 'Furniture'),
(10, 'Dining Table', 499.00, 'Furniture'),
(11, 'Notebook', 3.99, 'Stationery'),
(12, 'Ballpoint Pens (10-pack)', 2.49, 'Stationery'),
(13, 'Sketchbook', 12.75, 'Stationery'),
(14, 'Sticky Notes (100 sheets)', 1.99, 'Stationery'),
(15, 'Washing Machine', 549.00, 'Home Appliance'),
(16, 'Microwave Oven', 129.00, 'Home Appliance'),
(17, 'Refrigerator', 899.00, 'Home Appliance'),
(18, 'Vacuum Cleaner', 159.00, 'Home Appliance'),
(19, 'Blender', 59.99, 'Home Appliance'),
(20, 'Air Purifier', 199.99, 'Home Appliance'),
(21, 'Yoga Mat', 29.99, 'Fitness'),
(22, 'Dumbbell Set (20kg)', 79.99, 'Fitness'),
(23, 'Treadmill', 799.00, 'Fitness'),
(24, 'Exercise Bike', 499.00, 'Fitness'),
(25, 'Resistance Bands', 19.99, 'Fitness'),
(26, 'LED TV 42-inch', 329.99, 'Electronics'),
(27, 'Gaming Console', 499.99, 'Electronics'),
(28, 'Monitor 24-inch', 159.00, 'Electronics'),
(29, 'Keyboard', 49.99, 'Electronics'),
(30, 'Headphones', 89.99, 'Electronics');

-- usage of select keyword
SELECT * FROM Products WHERE price > 500;

--usage of groupby keyword
SELECT category, COUNT(*) AS total_products
FROM Products
GROUP BY category;

--getting the avg price by using group by keyword
SELECT category, AVG(price) AS avg_price
FROM Products
GROUP BY category;

--usage of order by keyword
SELECT TOP 1 * FROM Products
 ORDER BY price DESC;

--subqueries
SELECT * FROM Products
WHERE price > (SELECT AVG(price) FROM Products);


SELECT * FROM Products p
WHERE price = (
    SELECT MAX(price) 
    FROM Products 
    WHERE category = p.category
);

SELECT * FROM Products
WHERE category IN (
    SELECT category
    FROM Products
    GROUP BY category
    HAVING COUNT(*) > 3
);

SELECT * FROM Products
WHERE price < (
    SELECT MAX(price)
    FROM Products
    WHERE category = 'Furniture'
);

SELECT * FROM Products p
WHERE price = (
    SELECT AVG(price)
    FROM Products
    WHERE category = p.category
);

--using aggregate functions
SELECT 
    SUM(price) AS total_price,
    AVG(price) AS average_price,
    MIN(price) AS lowest_price,
    MAX(price) AS highest_price
FROM Products;

SELECT 
    category,
    COUNT(*) AS total_items,
    SUM(price) AS total_value,
    AVG(price) AS avg_price
FROM Products
GROUP BY category;

--creating a view
CREATE VIEW Products_Above_Avg AS
SELECT * FROM Products
WHERE price > (SELECT AVG(price) FROM Products);

SELECT * FROM Products_Above_Avg;

--optmizing queries with indexes

CREATE INDEX idx_category ON Products(category);

SELECT * FROM Products WHERE category = 'Electronics';
