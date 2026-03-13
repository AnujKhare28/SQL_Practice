select 
		o.OrderID,
		o.Sales,
		c.FirstName as CustomerFirstName,
		c.LastName as CustomerLastName,
		p.Product as ProductName,
		p.Price,
		e.FirstName as EmployeeFirstName,
		e.LastName as EmployeeLastName
from Sales.Orders as o
left join Sales.Customers as c
on o.CustomerID = c.CustomerID
left join Sales.Products as p
on o.ProductID = p.ProductID
left join Sales.Employees as e
on o.SalesPersonID = e.EmployeeID