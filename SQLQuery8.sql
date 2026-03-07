select * from customers
inner join orders
on id = customer_id;

select
	c.id,
	c.first_name,
	o.order_id,
	o.sales
from customers as c
inner join orders as o
on c.id = o.customer_id;

select
	c.id,
	c.first_name,
	o.order_id,
	o.sales
from customers as c
left join orders as o
on c.id = o.customer_id;

select
	c.id,
	c.first_name,
	o.order_id,
	o.sales
from customers as c
right join orders as o
on c.id = o.customer_id;

select
	c.id,
	c.first_name,
	o.order_id,
	o.sales
from customers as c
full join orders as o
on c.id = o.customer_id;








		