select * from customers
where country = 'Germany';


select * from customers
where country = 'USA' and score > 500;


select * from customers
where country = 'USA' or score <= 500;


select * from customers
where not score >= 500;


select * from customers
where score Between 100 and 500;

select * from customers
where score >= 100 and score <= 500;

select * from customers
where country in ('USA','Germany');

select * from customers
where first_name like 'M%';

select * from customers
where first_name like '%n';

select * from customers
where first_name like '__r%';

select * from customers
where first_name like '%r%';