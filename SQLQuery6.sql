update customers
set score = 0
where id = 6

select * from customers

update customers
set score = 0,
	country = 'uk'
where id = 7

update customers
set score = 0
	
where score is null

delete from customers
where id > 5

truncate table persons