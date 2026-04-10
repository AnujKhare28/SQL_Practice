select 
Category,
Sum(Sales) as TotalSales
From (
	select 
		OrderID,
		Sales,
		Case
			When Sales > 50 Then 'High'
			When Sales > 20 Then 'Medium'
			Else 'Low'
		End Category
	from Sales.Orders
	) t
	Group by Category
	Order by TotalSales Desc;


Select 
	EmployeeID,
	FirstName,
	LastName,
	Gender,
	Case 
		When Gender = 'F' Then 'Female'
		When Gender = 'M' Then 'Male'
		Else 'Not Available'
	End GenderFullText
from Sales.Employees;


select 
	CustomerID,
	FirstName,
	LastName,
	Country,
	Case 
		When Country = 'USA' Then 'US'
		when Country = 'Germany' Then 'DE'
		Else 'Not Available'
	End CountryAbbr
From Sales.Customers;

select 
	CustomerID,
	FirstName,
	LastName,
	Country,
	Case Country
		When 'USA' Then 'US'
		when 'Germany' Then 'DE'
		Else 'Not Available'
	End CountryAbbr2
From Sales.Customers;

Select 
	CustomerID,
	LastName,
	Score,
	avg(Case
		When Score is NUll then 0
		Else Score
	end) Over() AvgCustomer
From Sales.Customers;


Select 
	CustomerID,
	Sum(Case
		When Sales >30 Then 1
		else 0
	end) TotalOrdersHighSales,
	Count(*) TotalOrders
From Sales.Orders
Group by CustomerID;




