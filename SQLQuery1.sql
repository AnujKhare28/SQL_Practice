select * from customers
order by score desc

select * from customers
order by country asc,
score desc

 select country,
 sum(score) as total_score
 from customers
 group by country

 select 
 country,
 count(id) as total_customers,
 sum(score) as total_scores
 from customers
 group by country

 select country,
 sum(score) as total_score
 from customers
 group by country
 having sum(score) > 800


select country, avg(score) as avg_score
from customers
where score != 0
group by country
having avg(score) > 430
