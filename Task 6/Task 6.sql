CREATE TABLE online_sales (
    order_id INT PRIMARY KEY,
    order_date DATE NOT NULL,
    customer_name VARCHAR(50),
    country VARCHAR(50),
    amount DECIMAL(10,2) NOT NULL,
    product_name VARCHAR(50),
    product_id INT NOT NULL
);

INSERT INTO online_sales (order_id, order_date, customer_name, country, amount, product_name, product_id) VALUES
(1, '2025-05-01', 'Alice', 'USA', 125.50, 'Laptop', 101),
(2, '2025-05-02', 'Bob', 'USA', 75.25, 'Keyboard', 102),
(3, '2025-05-02', 'Charlie', 'USA', 200.00, 'Monitor', 101),
(4, '2025-05-03', 'David', 'USA', 50.75, 'Mouse', 103),
(5, '2025-05-04', 'Eve', 'USA', 150.00, 'Laptop', 102),
(6, '2025-05-04', 'Frank', 'GER', 90.40, 'Webcam', 104),
(7, '2025-05-05', 'Grace', 'FRA', 300.00, 'Gaming PC', 105),
(8, '2025-05-06', 'Heidi', 'USA', 69.80, 'Headphone', 103),
(9, '2025-05-06', 'Ivan', 'USA', 180.50, 'Laptop', 101),
(10, '2025-05-07', 'Judy', 'USA', 110.25, 'Ext. SSD', 106);

SELECT
    EXTRACT(YEAR FROM order_date) AS sales_year,
    EXTRACT(MONTH FROM order_date) AS sales_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM
    online_sales
GROUP BY
    sales_year, sales_month
ORDER BY
    sales_year, sales_month;

SELECT
    EXTRACT(MONTH FROM order_date) AS sales_month,
    SUM(amount) AS total_revenue
FROM
    online_sales
WHERE
    EXTRACT(YEAR FROM order_date) = 2025
GROUP BY
    sales_month
ORDER BY
    sales_month;

