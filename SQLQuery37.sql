Select
	OrderID,
	ProductID,
	OrderDate,
	Sales,
	Avg(Sales) Over(Partition by ProductID) AvgSalesByProduct,
	Avg(Sales) Over(Partition by ProductID Order By OrderDate) MovingAvgSalesByProduct
From Sales.Orders;


Select
	OrderID,
	ProductID,
	OrderDate,
	Sales,
	Avg(Sales) Over(Partition by ProductID) AvgSalesByProduct,
	Avg(Sales) Over(Partition by ProductID Order By OrderDate Rows Between Current Row And 1 Following) RollingAvgSalesByProduct
From Sales.Orders;

