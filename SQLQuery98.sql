
Alter Procedure GetCustomerSummary @Country nvarchar(50) = 'USA' -- default parameter
AS
Begin	
	-- variables
	Declare @TotalCustomer Int, @AvgScore Float;
	--Data preparation
	
	IF exists(Select 1 from Sales.Customers Where Score is null and country = @Country)
	BEGIN
		Print ('Updating null scores to 0');
		Update Sales.Customers
		Set Score = 0
		where Score is null and Country = @Country;
	END

	ELSE
	BEGIN
		print('No null score found');
	END;

	-- Report
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

Exec GetCustomerSummary @Country ='Germany' -- parameter


Exec GetCustomerSummary

