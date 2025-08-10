create database storeDB;

use storeDB;

create table products (
		product_id int auto_increment primary key,
        product_name varchar(50),
        category varchar(50),
        price decimal(10,2),
        stock int
);

insert into products ( product_name, category, price, stock) values
	('Laptop', 'Electronics', 1200.00, 10),
    ('Phone', 'Electronics', 800.00, 15),
    ('Tablets', 'Electronics', 600.00, 20),
    ('Headphones', 'Accessories', 150.00, 50),
    ('Mouse', 'Accessories', 30.00, 100),
    ('Keyboard', 'Accessories', 45.00, 80);

select * from products;

select * from products where price = 600;

select * from products where price != 800;

select * from products where price < 500;

select * from products where price > 700;

select * from products where price <= 150;

select * from products where price >= 800;

select * from products where category = 'Electronics';

select * from products where product_name > 'Mouse';

