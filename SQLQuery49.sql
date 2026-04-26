Select
	OrderID,
	CustomerID,
	OrderDate as CurrentOrder,
	lead(OrderDate) Over(Partition by CustomerID Order by OrderDate) NextOrder
From Sales.Orders
Order By CustomerID, OrderDate;


Select
	OrderID,
	CustomerID,
	OrderDate as CurrentOrder,
	lead(OrderDate) Over(Partition by CustomerID Order by OrderDate) NextOrder,
	DATEDIFF(Day, OrderDate, lead(OrderDate) Over(Partition by CustomerID Order by OrderDate)) DaysUntilNextOrder
From Sales.Orders
Order By CustomerID, OrderDate;


Select
CustomerID,
Avg(DaysUntilNextOrder) AvgDays,
Rank() Over(Order By Coalesce(Avg(DaysUntilNextOrder), 9999999999)) RankAvg
From(
	Select
		OrderID,
		CustomerID,
		OrderDate as CurrentOrder,
		lead(OrderDate) Over(Partition by CustomerID Order by OrderDate) NextOrder,
		DATEDIFF(Day, OrderDate, lead(OrderDate) Over(Partition by CustomerID Order by OrderDate)) DaysUntilNextOrder
	From Sales.Orders
)t
Group by CustomerID;