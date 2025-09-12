use mydatabase;

create table persons(

	id int not null,
    person_name varchar(50) not null,
    birth_date date,
    phone varchar(15) not null,
    constraint pk_persons primary key(id)
);

alter table persons
add column email varchar(50) not null;

select * from persons;

alter table persons
drop column phone;

select * from persons;

drop table persons;