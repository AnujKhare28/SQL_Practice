use SalesDB
-- 1
select
	FirstName,
	LastName
From Sales.Customers

Union

select
	FirstName,
	LastName
From Sales.Employees

--2

select
	FirstName as First_Name,
	LastName as Last_Name
From Sales.Customers

Union

select
	FirstName,
	LastName
From Sales.Employees

