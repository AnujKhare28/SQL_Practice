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
, CTE_Customer_Rank  as
(
	Select 
		CustomerID,
		TotalSales,
		Rank() Over(Order by TotalSales Desc) CustomerRank
	From CTE_Total_Sales
)
, CTE_Customer_Segments as 
(
	Select 
		CustomerID,
		Case When TotalSales > 100 Then 'High'
			 when TotalSales > 80  Then 'Medium'
			 else 'Low'
		End CustomerSegments
	From CTE_Total_Sales
)

Select 
	c.CustomerID,
	c.FirstName,
	c.LastName, 
	cts.TotalSales,
	clo.LastOrder,
	ccr.CustomerRank,
	ccs.CustomerSegments
From Sales.Customers c
Left Join CTE_Total_Sales cts
on cts.CustomerID = c.CustomerID
left join CTE_Last_Order clo
on clo.CustomerID = c.CustomerID
left join CTE_Customer_Rank ccr
on ccr.CustomerID = c.CustomerID
left join CTE_Customer_Segments ccs
on ccs.CustomerID = c.CustomerID