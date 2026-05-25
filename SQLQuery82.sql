Drop view Sales.V_Monthly_Summary;

Create View Sales.V_Monthly_Summary as (

	Select 
		DATETRUNC(month, OrderDate) OrderMonth,
		Sum(Sales) TotalSales,
		count(OrderID) TotalOrders
	from Sales.Orders
	group by DATETRUNC(month, OrderDate)

	);