Select * from
(
	Select
		CustomerID,
		SUM(Sales) TotalSales,
		Row_Number() Over(Order by SUM(Sales)) RankCustomers
	From Sales.Orders
	group by CustomerID
	) t where RankCustomers <= 2;

Select 
	ROW_NUMBER() Over(Order by OrderID, OrderDate) UniqueID,
	*
From Sales.OrdersArchive;


