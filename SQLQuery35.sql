Select 
	OrderID,
	OrderDate,
	Sales,
	Sum(Sales) Over() TotalSales,
	Sum(Sales) Over(Partition by ProductID) SalesByProduct
From Sales.Orders;

Select 
	OrderID,
	OrderDate,
	Sales,
	ProductID,
	Sum(Sales) Over() TotalSales,
	Sum(Sales) Over(Partition by ProductID) SalesByProduct
From Sales.Orders;


Select 
	OrderID,
	Sales,
	ProductID,
	Sum(Sales) Over() TotalSales,
	ROUND(Cast(Sales as Float) / Sum(Sales) Over() * 100, 2) PercentageOfTotal
From Sales.Orders;

Select 
	OrderID,
	OrderDate,
	Sales,
	Avg(Sales) Over() AvgSales
From Sales.Orders;

Select 
	OrderID,
	OrderDate,
	Sales,
	ProductID,
	Avg(Sales) Over() AvgSales,
	Avg(Sales) Over(Partition by ProductID) AvgSalesByProduct
From Sales.Orders;


Select 
	CustomerID,
	LastName,
	Score,
	Avg(Score) Over() AvgScores
From Sales.Customers;


Select 
	CustomerID,
	LastName,
	Score,
	coalesce(Score,0) CustomerScore,
	Avg(Score) Over() AvgScores,
	Avg(coalesce(Score,0)) Over() AvgScoresWithoutNull
From Sales.Customers;


Select * 
From(
Select 
	OrderID,
	OrderDate,
	ProductID,
	Sales,
	Avg(Sales) Over() AvgSales
From Sales.Orders)
t Where Sales > AvgSales;

