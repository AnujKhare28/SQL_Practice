Select
Avg(Sales)
From Sales.Orders;

Select
CustomerID
From Sales.Orders;

Select 
	*
From (
	Select
		ProductID,
		Price,
		Avg(Price) Over() AvgPrice
	From Sales.Products
	) t 
	Where Price > AvgPrice;