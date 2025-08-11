create database data;

use data;

create table products (
	product_id int primary key,
    product_name varchar(100),
    category varchar(50),
    price decimal (10,2),
    stock_quantity int,
    last_updated timestamp
);

insert into products values 
(1, 'Laptop Pro', 'Electronics', 1299.99, 50, '2024-01-15 10:00:00'),
(2, 'Desk Chair', 'Furniture', 199.99, 30, '2024-01-16 11:30:00'),
(3, 'Coffee Maker', 'Appliances', 79.99, 100, '2024-01-14 09:15:00'),
(4, 'Gamming Mouse', 'Electronics', 59.99, 200, '2024-01-17 14:20:00'),
(5, 'Bookshelf', 'Furniture', 149.99, 25, '2024-01-13 16:45:00');

select * from products;


select * from products order by price;

select * from products order by price desc;

select * from products order by category, price;

select * from products where category = 'Electronics' order by price;

select * from products order by length(product_name);

select * from products order by day(last_updated);

select * from products order by stock_quantity desc limit 1;

select * from products 
	order by field(category, 'Electonics', 'Appliances', 'Furniture'), price;

select * from products order by (stock_quantity <= 50 and price >= 200)desc;

select * from products order by

case
	when stock_quantity <= 50 and price >= 200 then 1
    else 2
end desc;

