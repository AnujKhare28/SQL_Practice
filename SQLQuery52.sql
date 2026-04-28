Select 
	OrderID,
	ProductID,
	Sales,
	FIRST_VALUE(Sales) Over(Partition by ProductID Order by Sales) LowestSales,
	LAST_VALUE(Sales) Over(Partition by ProductID Order by Sales Rows between Current Row and Unbounded Following) HighestSales,
	Sales - FIRST_VALUE(Sales) Over(Partition by ProductID Order by Sales) as SalesDifference
From Sales.Orders;