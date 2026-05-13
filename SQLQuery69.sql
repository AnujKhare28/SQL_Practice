With CTE_Total_Sales 
As (
	Select 
		CustomerID,
		Sum(Sales) as TotalSales
	From Sales.Orders
	Group by CustomerID
),
CTE_Last_Order
As (
	Select
		CustomerID,
		Max(OrderDate) as LastOrder
	From Sales.Orders
	group by CustomerID
)

Select 
	c.CustomerID,
	c.FirstName,
	c.LastName,
	cts.TotalSales,
	clo.LastOrder
From Sales.Customers c
Left Join CTE_Total_Sales cts
on cts.CustomerID = c.CustomerID
left join CTE_Last_Order clo
on clo.CustomerID = c.CustomerID