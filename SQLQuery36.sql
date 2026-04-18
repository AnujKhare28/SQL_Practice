Select 
	OrderID,
	OrderDate,
	ProductID,
	Sales,
	Max(Sales) Over() HighestSales,
	Min(Sales) Over() LowestSales
From Sales.Orders;

Select 
	OrderID,
	OrderDate,
	ProductID,
	Sales,
	Max(Sales) Over(partition by ProductID) HighestSalesByProduct,
	Min(Sales) Over(partition by ProductID) LowestSalesByProduct
From Sales.Orders;

Select
*
from(
	select
		*,
		Max(Salary) Over() HighestSalary
	From Sales.Employees
	) t Where Salary = HighestSalary;


Select 
	OrderID,
	OrderDate,
	ProductID,
	Sales,
	Max(Sales) Over() HighestSales,
	Min(Sales) Over() LowestSales,
	Sales - Min(Sales) Over() DeviationFromMin,
	Max(Sales) Over() - Sales DeviationFromMax
From Sales.Orders;