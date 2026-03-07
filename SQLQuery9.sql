select * from customers as c
left join orders as o
on c.id = o.customer_id
where o.customer_id is NUll;

select * from customers as c
right join orders as o
on c.id = o.customer_id
where c.id is NUll;

select * from orders as o
full join customers as c
on c.id = o.customer_id
where c.id is NUll or o.customer_id is NUll;


select * from customers as c
left join orders as o
on c.id = o.customer_id
where o.customer_id is not NUll;

select * from customers
cross join orders;
