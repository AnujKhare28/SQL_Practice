Select 
	OrderID,
	ProductID,
	Sales,
	FIRST_VALUE(Sales) Over(Partition by ProductID Order by Sales) LowestSales,
	LAST_VALUE(Sales) Over(Partition by ProductID Order by Sales Rows between Current Row and Unbounded Following) HighestSales,
	FIRST_VALUE(Sales) Over(Partition by ProductID Order by Sales DESC) HighestSales2
From Sales.Orders;

Select 
	OrderID,
	ProductID,
	Sales,
	Min(Sales) Over(Partition by ProductID) LowestSales,
	Max(Sales) Over(Partition by ProductID) HighestSales
From Sales.Orders;

