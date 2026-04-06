select 
	EmployeeID,
	BirthDate,
	datediff(year, BirthDate, GETDATE()) Age 
From Sales.Employees; 

select
	OrderID,
	OrderDate,
	ShipDate,
	DATEDIFF(day,OrderDate,ShipDate) [Shipping Duration]
from Sales.Orders;

select
	month(OrderDate) as OrderDate,
	AVG(DATEDIFF(day,OrderDate,ShipDate)) [Average Shipping Duration]
from Sales.Orders
group by month(OrderDate);

select 
	OrderID,
	OrderDate CurrentOrderDate,
	lag(OrderDate) over (order by OrderDate) PreviousOrderDate,
	datediff(day,lag(OrderDate) over (order by OrderDate),OrderDate) [No. of Days]
from sales.Orders;
