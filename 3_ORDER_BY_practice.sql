use mydatabase;

-- 3. ORDER BY
-- Retrieve all customers and sort the results by the highest score first
select * from customers order by score desc;

-- Retrieve all customers and sort the results by the lowest score first
select * from customers order by score;

-- Retrieve all customers and sort the results by the country and then by the highest score
select * from customers order by country, score desc;