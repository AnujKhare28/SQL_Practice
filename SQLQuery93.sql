Alter Procedure GetCustomerSummary @Country nvarchar(50)
AS
Begin
	Select
		count(*) TotalCustomer,
		AVG(score) AvgScore
	from Sales.Customers
	where Country = @Country
End

Exec GetCustomerSummary @Country ='Germany'


Exec GetCustomerSummary @Country ='USA'