Select 
OrderID,
OrderDate,
ProductID,
Sales,
ROW_NUMBER() Over(Order by Sales desc) SalesRank_Row
From Sales.Orders;

Select 
OrderID,
OrderDate,
ProductID,
Sales,
Rank() Over(Order by Sales desc) SalesRank_Rank
From Sales.Orders;