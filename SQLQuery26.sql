select 
	CustomerID,
	Score
from Sales.Customers
Order by case when Score is NUll then 1 else 0 end, Score;


select 
	OrderID,
	Sales,
	Quantity,
	Sales / NullIF(Quantity,0) as Price
From Sales.Orders;

