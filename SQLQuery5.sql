insert into customers
 (id, first_name, country, score)
values 
	(6, 'Anna', 'USA', NULL),
	(7, 'Sam',Null, 100)

 insert into customers
 values 
 (9,'Andreas','Germany',null)

 select * from Customers



 create table persons
 (id int not null,
 name varchar(20) not null,
 birth_date varchar(20),
 phone varchar(15) )


 insert into persons
 select id,
 first_name,
 null,
 'Unknown'
 from customers

 select * from persons