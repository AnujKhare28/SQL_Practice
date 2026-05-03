Select
	EmployeeID,
	FirstName,
	Salary
From Sales.Employees
Where Gender = 'F'
And Salary > Any (Select Salary From Sales.Employees where Gender = 'M')

Select
	EmployeeID,
	FirstName,
	Salary
From Sales.Employees
Where Gender = 'F'
And Salary > All (Select Salary From Sales.Employees where Gender = 'M')

