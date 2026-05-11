use mydatabase;

-- 4. GROUP BY
-- Find the total score by each country
select * from customers;
select country, sum(score) as total_score from customers group by country;

-- Find the total score and total number of customers for each country
select 
	country,
	sum(score) as total_score, 
	count(id) as total_customers 
from customers group by country;	