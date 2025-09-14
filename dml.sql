use mydatabase;

insert into customers(id, first_name, country, score)
values 
	(6, 'Anuj','India', null),
    (7, 'Ankit',null,100);
    
select * from customers;

create table persons(

	id int not null,
    person_name varchar(50) not null,
    birth_date date,
    phone varchar(15) not null,
    constraint pk_persons primary key(id)
);

insert into persons(id, person_name, birth_date, phone)
select 
	id,
    first_name,
    null,
    'Unknown'
from customers;

    
select * from persons;

update customers
set score = 567
where id = 6;

update customers
set score = 0,
	country = 'UK'
where id = 7; 

SET SQL_SAFE_UPDATES = 0;

update customers
set score = 0
where score is null;

delete from customers
where id > 5;

truncate table persons;

select * from customers;

select * from persons;
