--- 1-----
select 
	FirstName,
	LastName
from Sales.Employees

Union all

select 
	FirstName,
	LastName
from Sales.Customers

----------2--------------

select 
	FirstName,
	LastName
from Sales.Employees

Except

select 
	FirstName,
	LastName
from Sales.Customers


---------3--------------

select 
	FirstName,
	LastName
from Sales.Employees

intersect 

select 
	FirstName,
	LastName
from Sales.Customers

