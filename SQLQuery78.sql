With CTE_Monthly_Summary as (
	Select 
		DATETRUNC(month, OrderDate) OrderMonth,
		Sum(Sales) TotalSales,
		count(OrderID) TotalOrders,
		sum(Quantity) TotalQuantities
	from Sales.Orders
	group by DATETRUNC(month, OrderDate)
)
Select 
	OrderMonth,
	Sum(TotalSales) Over(order by OrderMonth) as RunningTotal
From CTE_Monthly_Summary




