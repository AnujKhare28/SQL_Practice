use mydatabase;

select * 
from customers
where country = 'Germany';

select * 
from customers
where country != 'Germany';

select * 
from customers
where score > 500;

select * 
from customers
where score >= 500;

select * 
from customers
where score < 500;

select * 
from customers
where score <= 500;