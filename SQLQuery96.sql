
Alter Procedure GetCustomerSummary @Country nvarchar(50) = 'USA' -- default
AS
Begin
	Select
		count(*) TotalCustomer,
		AVG(score) AvgScore
	from Sales.Customers
	where Country = @Country;

	
	Select
		count(OrderID) TotalOrders,
		Sum(Sales) TotalSales
	from Sales.Orders o
	join Sales.Customers c
	on c.CustomerID = o.CustomerID
	where c.Country = @Country;
End

Exec GetCustomerSummary @Country ='Germany'


Exec GetCustomerSummary

