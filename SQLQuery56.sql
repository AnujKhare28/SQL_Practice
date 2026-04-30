Select
	ProductID,
	Product,
	Price,
	(Select Count(*) From Sales.Orders )as TotalOrders 
From Sales.Products