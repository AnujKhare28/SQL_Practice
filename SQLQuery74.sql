With CTE_Emp_Hierarchy 
As (
	Select
		EmployeeID,
		FirstName,
		ManagerID,
		1 as Level
	From Sales.Employees
	Where ManagerID is NUll

	Union All

	Select
		e.EmployeeID,
		e.FirstName,
		e.ManagerID,
		Level + 1
	From Sales.Employees as e
	Inner Join CTE_Emp_Hierarchy ceh
	on e.ManagerID = ceh.EmployeeID
)

Select * From CTE_Emp_Hierarchy