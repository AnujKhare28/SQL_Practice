Select
	* 
From Sales.Orders
Where CustomerID In (select CustomerID from sales.Customers where Country = 'Germany');


Select
	* 
From Sales.Orders
Where CustomerID In (select CustomerID from sales.Customers where Country != 'Germany');


Select
	* 
From Sales.Orders
Where CustomerID Not In (select CustomerID from sales.Customers where Country = 'Germany');


