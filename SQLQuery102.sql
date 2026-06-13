Create Procedure GetCustomerSummary AS
Begin
	Select
		count(*) TotalCustomer,
		AVG(score) AvgScore
	from Sales.Customers
	where Country ='USA'
End

Exec GetCustomerSummary