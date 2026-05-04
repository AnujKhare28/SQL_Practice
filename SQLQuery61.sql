Select
	*,
	(Select Count(*) From Sales.Orders o where o.CustomerID = c.CustomerID) TotalSales
From Sales.Customers c