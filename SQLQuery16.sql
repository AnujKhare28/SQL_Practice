select
getdate();

select 
	OrderID,
	CreationTime,
	Year(CreationTime) as Year
from Sales.Orders;

select 
	OrderID,
	CreationTime,
	Month(CreationTime) as Month
from Sales.Orders;

select 
	OrderID,
	CreationTime,
	Day(CreationTime) as Day
from Sales.Orders;
