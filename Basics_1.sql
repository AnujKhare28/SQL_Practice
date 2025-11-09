-- (Commenting using --)How to display the database
show databases; -- To run the query: ctrl + enter

-- to create database
create database datamites_student;

-- to delete databse
drop database datamites_student;

-- to go inside database
use datamites_student;

-- to see all tables in DB
show tables;

-- to create tabled in DB
create table student (
sid int primary key,
sname varchar(20),
sloc varchar(30),
sage int
);

-- to see contents from the table
select * from student;

-- to delete table
drop table student;

-- to insert data in table
-- insert into student values (1, 'Swarali', 'Pune', 22); 	no duplicate value allowd
-- insert into student values (1, "Anuj", 23,'Mumbai'); 	insertion order of values matter
insert into student values 
(1, 'Swarali', 'Pune', 22),
(2, 'Anuj', 'Mumbai', 23);

insert into student values
(3, 'Diya', 'Mumbai', 9),
(4, 'Siya', 'Pune', 9),
(5, 'Niya', 'Mumbai', 10),
(6, 'Piya', 'Pune', 8),
(7, 'Miya', "Mumbai", 9);
select * from student;

-- to see specific column
select sname from student;
select sname, sloc from student;

-- to see specific rows we use where
select * from student where sage=9;
select * from student where sloc = 'mumbai';
select * from student where sname='Diya';
select * from student where sname='diya' and sloc='mumbai';
select * from student;

-- to turn off safe update mode
set SQL_SAFE_UPDATES = 0; -- OFF
set SQL_SAFE_UPDATES = 1; -- ON

-- Update the data into table
select * from student;
update student set sname = 'Diya', sage=8 where sid = 3;
update student set sname = 'Siya' where sid=2;
update student set sname = 'Diya' where sage = 22 and sloc='Pune';
update student set sname = 'Jiya' where sage = 9 and sloc='Pune';
update student set sage = 8 where sid=2;
update student set sage = 7 where sid = 1;

-- to delete data from table
delete from student where sname='niya';

-- to add new column in table
alter table student add sclass int;
select * from student;

-- to update column values
update student set sclass = case sid 	-- case is a command: in case of sclass set sid as follows and then end case
when 1 then 2
when 2 then 2
when 3 then 3
when 4 then 3
when 6 then 3
when 7 then 4
end;

-- to delete specific column
-- alter table student drop column sclass;
-- because here all cols are imp, we only write query in comment to understand the syntax

-- shows decsription of table
desc student;

-- to modify datatype and other table details
alter table student modify sname varchar(50);
desc student;

-- to rename col heading
alter table student rename column sloc to slocation;
select slocation from student;

-- to rename table name
alter table student rename to student_data;
select * from student_data;
show tables;

-- to truncate table
-- truncate = clears all data from the table leaving only the schema/format (col heading) of table
-- truncate table student_data;

-- Interview Question: tell difference between drop, delete and truncate
-- truncate - clears only data from the table
-- drop - deletes table from the database
-- delete - deletes specific row from the table

-- 11th July
