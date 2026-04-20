Select 
OrderID,
OrderDate,
ProductID,
Sales,
Dense_Rank() Over(Order by Sales desc) SalesRank_DRank
From Sales.Orders;

Select 
OrderID,
OrderDate,
ProductID,
Sales,
Row_number() Over(partition by ProductID Order by Sales desc) RankByProducts
From Sales.Orders;

