Alter Procedure GetCustomerSummary @Country nvarchar(50) = 'USA' -- default
AS
Begin
	Select
		count(*) TotalCustomer,
		AVG(score) AvgScore
	from Sales.Customers
	where Country = @Country
End

Exec GetCustomerSummary @Country ='Germany'


Exec GetCustomerSummary