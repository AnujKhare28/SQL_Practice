Select 
	*,
	Rank() Over(Order by TotalSales DESC) CustomerRank
From (
		Select
			CustomerID,
			Sum(Sales) TotalSales
		From Sales.Orders
		Group by CustomerID
		) t;