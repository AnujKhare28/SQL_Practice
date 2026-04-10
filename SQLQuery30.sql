select
	Sum(Sales) TotalSales
from Sales.Orders;

select
	ProductID,
	Sum(Sales) TotalSales
from Sales.Orders
Group by ProductID;

select
	OrderID,
	OrderDate,
	ProductID,
	Sum(Sales) Over(Partition by ProductID) TotalSalesByProducts
from Sales.Orders;

