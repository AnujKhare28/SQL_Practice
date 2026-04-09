select 
	*
From Sales.Customers
Where Score IS NULL;

select 
	*
From Sales.Customers
Where Score IS NOT NULL;


Select
c.*,
OrderID
From Sales.Customers c
left join Sales.Orders o
on c.CustomerID = o.CustomerID
Where o.CustomerID is NUll;