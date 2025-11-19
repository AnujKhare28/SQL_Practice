use mydatabase;

select * from customers;

select * from orders;

select * from customers
inner join orders
on id = customer_id;

select 
customers.id,
customers.first_name,
orders.order_id,
orders.sales
 from customers
inner join orders
on customers.id = orders.customer_id;

select 
c.id,
c.first_name,
o.order_id,
o.sales
 from customers as c
inner join orders as o
on c.id = o.customer_id;
