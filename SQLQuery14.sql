----------CONCAT---------
select 
first_name,
country,
concat(first_name,'-',country) as Name_Country
from dbo.customers

---------lower ---------
select 
first_name,
country,
concat(first_name,'-',country) as Name_Country,
lower(first_name) as low_name
from dbo.customers

--------UPPER---------
select 
first_name,
country,
concat(first_name,'-',country) as Name_Country,
upper(first_name) as upper_name
from dbo.customers

-------TRIM------
select first_name
from customers
where first_name != trim(first_name)

---replace------
select 
'123-456-7890' as old,
replace('123-456-7890','-','@') as new

-----len--------
select
first_name,
len(first_name) as len_name
from customers