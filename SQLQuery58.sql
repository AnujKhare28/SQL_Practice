Select
	ProductID,
	Price
From Sales.Products
Where Price > (Select Avg(Price) from Sales.Products);