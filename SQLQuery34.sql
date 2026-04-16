---1
Select 
	OrderID,
	OrderDate,
	CustomerID,
	count(*) Over() TotalOrders,
	count(*) Over(Partition by CustomerID) OrderByCustomers
From Sales.Orders;
-- 2
Select
	*,
	count(*) Over() TotalOrders,
	count(Score) Over() TotalScores
From Sales.Customers;
----3
Select 
	OrderID,
	count(*) Over(partition by OrderID) checkPK
From Sales.Orders
--------4

Select 
	OrderID,
	count(*) Over(partition by OrderID) checkPK
From Sales.OrdersArchive;
--------5
Select * from (
	
Select 
	OrderID,
	count(*) Over(partition by OrderID) checkPK
From Sales.OrdersArchive ) t
Where checkPK > 1;





