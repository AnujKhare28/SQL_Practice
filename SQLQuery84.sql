
Create View Sales.V_Orders_Details_EU as
	(
		Select 
			o.OrderID,
			o.OrderDate,
			p.Product,
			p.Category,
			coalesce(c.FirstName,'') + ' '+ coalesce(c.LastName, '') CustomerName,
			c.Country CustomerCountry,
			coalesce(e.FirstName,'') + ' '+ coalesce(e.LastName, '') SalesName,
			e.Department,
			o.Sales,
			o.Quantity
		From Sales.Orders o
		left join Sales.Products p
		on p.ProductID = o.ProductID
		left join Sales.Customers c
		on c.CustomerID = o.CustomerID
		left join Sales.Employees e
		on e.EmployeeID = o.SalesPersonID
		Where Country != 'USA'
		);

Select * from Sales.V_Orders_Details_EU;