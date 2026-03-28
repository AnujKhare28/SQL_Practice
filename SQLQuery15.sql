---------LEFT---------
select 
	first_name,
	left(trim(first_name), 2) as first_2
from customers

------RIGHT-----------
select 
	first_name,
	left(trim(first_name), 2) as first_2,
	right(trim(first_name), 2) as last_2
from customers

-----SUBSTRING-------------
select 
	first_name,
	SUBSTRING(trim(first_name),2,len(first_name)) as subname
from customers