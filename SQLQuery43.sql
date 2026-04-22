Select 
	OrderID,
	Sales,
	Ntile(1) Over(Order By Sales DESC) OneBucket
From Sales.Orders;

Select 
	OrderID,
	Sales,
	Ntile(2) Over(Order By Sales DESC) TwoBucket
From Sales.Orders;

Select 
	OrderID,
	Sales,
	Ntile(3) Over(Order By Sales DESC) ThreeBucket
From Sales.Orders;

Select 
	OrderID,
	Sales,
	Ntile(4) Over(Order By Sales DESC) FourBucket
From Sales.Orders;