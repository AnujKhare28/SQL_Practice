create database database1;

use database1;

Create Table products (
	id int auto_increment primary key,
    name varchar(100),
    price decimal(10,2),
    category varchar(50),
    created_at timestamp default current_timestamp
);

insert into products(name, price, category) values
	('Laptop', 999.99, 'Electronics'),
    ('Smartphone', 499.99, 'Electronics'),
    ('Coffee Maker', 79.99, 'Appliances'),
    ('Headphone', 149.99, 'Electronics'),
    ('Blender', 59.99, 'Appliances'),
    ('Tablet', 299.99, 'Electronics'),
    ('Microwave', 199.99, 'Appliances'),
    ('Smart Watch', 249.99, 'Electronics'),
    ('Toaster', 39.99, 'Appliances'),
    ('Speaker', 89.99, 'Electronics');
    
select * from products;

select * from products order by id limit 2;

select * from products order by id limit 2 offset 2;

select * from products limit 3 offset 0;

select * from products limit 3 offset 3;

select * from products limit 3 offset 6;

select * from products limit 3,6;

select * from products limit 0,3;

select * from products limit 3,3;

select * from products limit 6,3;

SELECT * FROM products
ORDER BY price DESC
LIMIT 3;

select * from products order by rand()limit 5;