-- create database task4;
use task4;
-- CREATE TABLE Customers (
--     customer_id INT PRIMARY KEY AUTO_INCREMENT,
--     name VARCHAR(100),
--     email VARCHAR(100)
-- );

-- CREATE TABLE Products (
--     product_id INT PRIMARY KEY AUTO_INCREMENT,
--     product_name VARCHAR(100),
--     price DECIMAL(10,2)
-- );

-- CREATE TABLE Orders (
--     order_id INT PRIMARY KEY AUTO_INCREMENT,
--     customer_id INT,
--     product_id INT,
--     quantity INT,
--     order_date DATE,
--     
--     FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
--     FOREIGN KEY (product_id) REFERENCES Products(product_id)
-- );

-- INSERT INTO Customers (name, email) VALUES
-- ('John', 'john@email.com'),
-- ('Alice', 'alice@email.com'),
-- ('Bob', 'bob@email.com');

-- INSERT INTO Products (product_name, price) VALUES
-- ('Laptop', 50000),
-- ('Phone', 20000),
-- ('Headphones', 2000);

-- INSERT INTO Orders (customer_id, product_id, quantity, order_date) VALUES
-- (1, 1, 1, '2026-04-01'),
-- (1, 2, 2, '2026-04-05'),
-- (2, 3, 5, '2026-04-02'),
-- (3, 2, 1, '2026-04-03'),
-- (2, 1, 1, '2026-04-06');

-- SELECT 
--     o.order_id,
--     c.name AS customer_name,
--     p.product_name,
--     o.quantity,
--     p.price,
--     (o.quantity * p.price) AS total_amount,
--     o.order_date
-- FROM Orders o
-- JOIN Customers c 
--     ON o.customer_id = c.customer_id
-- JOIN Products p 
--     ON o.product_id = p.product_id
-- WHERE (o.quantity * p.price) = (
--     SELECT MAX(o2.quantity * p2.price)
--     FROM Orders o2
--     JOIN Products p2 
--         ON o2.product_id = p2.product_id
-- );

-- SELECT 
--     c.customer_id,
--     c.name AS customer_name,
--     COUNT(o.order_id) AS total_orders
-- FROM Customers c
-- JOIN Orders o 
--     ON c.customer_id = o.customer_id
-- GROUP BY c.customer_id, c.name
-- HAVING COUNT(o.order_id) = (
--     SELECT MAX(order_count)
--     FROM (
--         SELECT COUNT(*) AS order_count
--         FROM Orders
--         GROUP BY customer_id
--     ) AS sub
-- );