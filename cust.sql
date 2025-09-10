use mydatabase;

select * from customers;

select * from orders;

select first_name, country, score from customers; 

select * 
from customers
where score > 0;

SELECT * 
FROM customers
WHERE score != 0;

select 
	first_name,
    country
from customers
where country = 'Germany';

select * 
from customers
order by score desc;

select * 
from customers
order by score asc;

 select 
	country,
    sum(score) as total_score
from customers
group by country;


select 
	country,
    sum(score) as total_score,
    count(id) as total_customers
from customers
group by country;
		
select 
	country,
    sum(score) as total_score
from customers
group by country
having sum(score) > 800;

select 
	country,
    sum(score) as total_score
from customers
where score >430
group by country
having sum(score) > 800;

select 
	country,
    avg(score) as avg_score
from customers
where score != 0
group by country
having avg(score) > 430;

select 
distinct country
from customers;

select *
from customers
order by score desc limit 1 offset 1;

