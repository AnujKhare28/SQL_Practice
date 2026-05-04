Select 
	* 
From Sales.Orders o
where EXISTS (Select 1
			  From Sales.Customers c
			  Where Country = 'Germany'
			  And o.CustomerID = c.CustomerID)

Select 
	* 
From Sales.Orders o
where NOT EXISTS (Select 1
			  From Sales.Customers c
			  Where Country = 'Germany'
			  And o.CustomerID = c.CustomerID)