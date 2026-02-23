alter table persons
add email varchar(50) not null

select * from persons

alter table persons
drop column phone

drop table persons