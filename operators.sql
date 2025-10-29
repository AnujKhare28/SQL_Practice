use mydatabase;

select * from customers
where score between 100 and 500;

select * from customers
where score >= 100 and score <= 500;


select * from customers
where country in ('Germany','USA');

select * from customers
where first_name like 'M%';

select * from customers
where first_name like '%n';

select * from customers
where first_name like '%r%';

select * from customers
where first_name like '__r%';

