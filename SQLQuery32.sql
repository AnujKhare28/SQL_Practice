Select 
	OrderID,
	OrderDate,
	Sales,
	Rank() Over(Order by Sales Desc) RankSales
From Sales.Orders;