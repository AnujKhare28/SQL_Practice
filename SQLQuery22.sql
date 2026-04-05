select 
	OrderID,
	Convert(Date, CreationTime) as [DateTime to Date]
 from Sales.Orders;

 select 
	OrderID,
	Convert(Date, CreationTime) as [DateTime to Date],
	Convert(Varchar, CreationTime, 32) as [USA Std.]
 from Sales.Orders;

  select 
	OrderID,
	Convert(Date, CreationTime) as [DateTime to Date],
	Convert(Varchar, CreationTime, 34) as [EU Std.]
 from Sales.Orders;

 Select 
 Cast(CreationTime as Date) as Date
 from Sales.Orders;