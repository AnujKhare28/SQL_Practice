Select 
	*,
	Case When Buckets = 1 Then 'High'
		 When Buckets = 2 Then 'Medium'
		 When Buckets = 3 Then 'Low'
	End SalesSegmentation
From
(
Select 
	OrderID,
	Sales,
	Ntile(3) Over(Order By Sales DESC) Buckets
From Sales.Orders
) t;


Select
	NTILE(2) Over(Order by OrderID) Buckets,
	* 
from Sales.Orders;