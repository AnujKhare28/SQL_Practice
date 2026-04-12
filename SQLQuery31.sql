Select
	OrderID,
	OrderDate,
	Sum(Sales) Over() TotalSales
From Sales.Orders;

Select
	OrderID,
	OrderDate,
	ProductID,
	Sum(Sales) Over(Partition By ProductID) TotalSales
From Sales.Orders;

Select
	OrderID,
	OrderDate,
	ProductID,
	Sales,
	Sum(Sales) Over() TotalSales,
	Sum(Sales) Over(Partition By ProductID) TotalSalesbyProdID
From Sales.Orders;

Select
	OrderID,
	OrderDate,
	ProductID,
	OrderStatus,
	Sales,
	Sum(Sales) Over() TotalSales,
	Sum(Sales) Over(Partition By ProductID) TotalSalesbyProdID,
	Sum(Sales) Over(Partition by ProductID, OrderStatus) SalesByProdAndStatus
From Sales.Orders;