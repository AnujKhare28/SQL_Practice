Create View Sales.V_Monthly_Summary as (

	Select 
		DATETRUNC(month, OrderDate) OrderMonth,
		Sum(Sales) TotalSales,
		count(OrderID) TotalOrders,
		sum(Quantity) TotalQuantities
	from Sales.Orders
	group by DATETRUNC(month, OrderDate)

	);

Select * From Sales.V_Monthly_Summary;