With CTE_Total_Sales 
As (
	Select 
		CustomerID,
		Sum(Sales) as TotalSales
	From Sales.Orders
	Group by CustomerID
)

Select 
	c.CustomerID,
	c.FirstName,
	c.LastName,
	cts.TotalSales
From Sales.Customers c
Left Join CTE_Total_Sales cts
on cts.CustomerID = c.CustomerID
