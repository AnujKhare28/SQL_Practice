Select 
	OrderID,
	OrderDate,
	DATEADD(year, 2, OrderDate) as TwoYearsLater
From Sales.Orders;

Select 
	OrderID,
	OrderDate,
	DATEADD(month, 3, OrderDate) as ThreeMonthsLater,
	DATEADD(year, 2, OrderDate) as TwoYearsLater
From Sales.Orders;

Select 
	OrderID,
	OrderDate,
	DATEADD(Day, -10, OrderDate) as TenDaysBefore,
	DATEADD(month, 3, OrderDate) as ThreeMonthsLater,
	DATEADD(year, 2, OrderDate) as TwoYearsLater
From Sales.Orders;