
Alter Procedure GetCustomerSummary @Country nvarchar(50) = 'USA' -- default
AS
Begin	

	Declare @TotalCustomer Int, @AvgScore Float;

	Select
		@TotalCustomer = count(*) ,
		@AvgScore = AVG(score)
	from Sales.Customers
	where Country = @Country;

	Print 'Total Customers from '+ @Country +':'+ cast(@TotalCustomer as nvarchar);
	Print 'Average Score from  '+ @Country + ':'+ cast(@AvgScore as nvarchar) ;
	
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
