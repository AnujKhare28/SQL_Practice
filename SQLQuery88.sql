
Select 
	DATENAME(month,OrderDate) OrderMonth,
	count(OrderID) TotalOrders
Into Sales.MonthlyOrders
from Sales.Orders
group by DATENAME(month,OrderDate);

Select * from Sales.MonthlyOrders;

Drop table Sales.MonthlyOrders;