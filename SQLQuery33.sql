Select 
	OrderID,
	OrderDate,
	OrderStatus,
	Sales,
	sum(Sales) Over(Partition by OrderStatus order by OrderDate 
	rows between current row and 2 following) TotalSales
From Sales.Orders;

Select 
	OrderID,
	OrderDate,
	OrderStatus,
	Sales,
	sum(Sales) Over(Partition by OrderStatus order by OrderDate 
	rows 2 preceding) TotalSales
From Sales.Orders;



