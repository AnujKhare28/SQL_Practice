select
	OrderID,
	Format(CreationTime,'dd') date
From Sales.Orders;

select
	OrderID,
	Format(CreationTime,'dd') date,
	Format(CreationTime,'ddd') Day
From Sales.Orders;

select
	OrderID,
	Format(CreationTime,'dd') date,
	Format(CreationTime,'dddd') Day
From Sales.Orders;

select
	OrderID,
	Format(CreationTime,'MM') MM,
	Format(CreationTime,'MMM') MMM,
	Format(CreationTime,'MMMM') MMMM
From Sales.Orders;

select
	OrderID,
	Format(CreationTime,'MM-dd-yyyy') USA_Format
From Sales.Orders;

select
	OrderID,
	Format(CreationTime,'MM-dd-yyyy') USA_Format
From Sales.Orders;


select
	OrderID,
	Format(CreationTime,'dd-MM-yyyy') EU_Format
From Sales.Orders;

select
	OrderID,
	Format(CreationTime,'dd-MMM-yyyy') EU_Format
From Sales.Orders;

select
	OrderID,
	CreationTime,
	'Day '+FORMAT(CreationTime, 'ddd MMM')+
	' Q' + Datename(QUARTER, CreationTime) + ''+ 
	Format(CreationTime,'yyyy hh:mm:ss tt') AS CustomFormat
From Sales.Orders;

