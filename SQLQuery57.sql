Select 
	c.*,
	o.TotalOrders
From Sales.Customers c
left Join (
	Select
		CustomerID,
		Count(*) TotalOrders
	From Sales.Orders
	Group by CustomerID
) o
on c.CustomerID = o.CustomerID;