-- Retail Sales Analysis --

-- Create and use the database
CREATE DATABASE project1;
USE project1;

-- Create the retail_sales table
CREATE TABLE retail_sales (
    transactions_id   INT PRIMARY KEY,
    sale_date         DATE,
    sale_time         TIME,
    customer_id       INT,
    gender            VARCHAR(15),
    age               INT,
    category          VARCHAR(15),
    quantity          INT,
    price_per_unit    FLOAT,
    cogs              FLOAT,
    total_sale        FLOAT
);

-- Check for NULL values
SELECT * FROM retail_sales
WHERE 
    transactions_id IS NULL OR
    sale_date IS NULL OR
    sale_time IS NULL OR
    customer_id IS NULL OR
    gender IS NULL OR
    age IS NULL OR
    category IS NULL OR
    quantity IS NULL OR
    price_per_unit IS NULL OR
    cogs IS NULL OR
    total_sale IS NULL;

-- Delete records with NULL values
DELETE FROM retail_sales
WHERE 
    transactions_id IS NULL OR
    sale_date IS NULL OR
    sale_time IS NULL OR
    customer_id IS NULL OR
    gender IS NULL OR
    age IS NULL OR
    category IS NULL OR
    quantity IS NULL OR
    price_per_unit IS NULL OR
    cogs IS NULL OR
    total_sale IS NULL;

-- Total number of sales
SELECT COUNT(*) AS total_sales 
FROM retail_sales;

-- Total number of unique customers
SELECT COUNT(DISTINCT customer_id) AS unique_customers 
FROM retail_sales;

-- Sales made on 2022-11-15
SELECT * 
FROM retail_sales
WHERE sale_date = '2022-11-15';

-- All transactions in the 'Clothing' category (with quantity >= 4) during November 2022
SELECT * 
FROM retail_sales
WHERE category = 'Clothing'
  AND DATE_FORMAT(sale_date, '%Y-%m') = '2022-11'
  AND quantity >= 4;

-- Total sales for each category
SELECT 
    category,
    SUM(total_sale) AS net_sale,
    COUNT(*) AS total_orders
FROM retail_sales
GROUP BY category;

-- Average age of customers who purchased 'Beauty' items
SELECT 
    ROUND(AVG(age), 2) AS avg_age
FROM retail_sales
WHERE category = 'Beauty';

-- All transactions where total sale is greater than 1000
SELECT * 
FROM retail_sales
WHERE total_sale > 1000;

-- Number of transactions by gender in each category
SELECT 
    category,
    gender,
    COUNT(*) AS total_transactions
FROM retail_sales
GROUP BY category, gender
ORDER BY category;

-- Average sale for each month & best-selling month of each year
SELECT 
    year,
    month,
    avg_sale
FROM (
    SELECT 
        YEAR(sale_date) AS year,
        MONTH(sale_date) AS month,
        AVG(total_sale) AS avg_sale,
        RANK() OVER (PARTITION BY YEAR(sale_date) ORDER BY AVG(total_sale) DESC) AS sale_rank
    FROM retail_sales
    GROUP BY YEAR(sale_date), MONTH(sale_date)
) AS ranked_sales
WHERE sale_rank = 1;

-- Top 5 customers based on highest total sales
SELECT 
    customer_id,
    SUM(total_sale) AS total_sales
FROM retail_sales
GROUP BY customer_id
ORDER BY total_sales DESC
LIMIT 5;

-- Number of unique customers per category
SELECT 
    category,
    COUNT(DISTINCT customer_id) AS unique_customers
FROM retail_sales
GROUP BY category;

-- Orders per shift (Morning, Afternoon, Evening)
WITH hourly_sale AS (
    SELECT *,
        CASE 
            WHEN HOUR(sale_time) < 12 THEN 'MORNING'
            WHEN HOUR(sale_time) BETWEEN 12 AND 16 THEN 'AFTERNOON'
            ELSE 'EVENING'
        END AS shift
    FROM retail_sales
)
SELECT 
    shift,
    COUNT(*) AS total_orders
FROM hourly_sale
GROUP BY shift
ORDER BY 
    CASE shift
        WHEN 'MORNING' THEN 1
        WHEN 'AFTERNOON' THEN 2
        WHEN 'EVENING' THEN 3
    END;
