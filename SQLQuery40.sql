
Select * from 
(
	Select 
		OrderID,
		OrderDate,
		ProductID,
		Sales,
		Row_Number() Over(Partition by ProductID Order by Sales desc) RankByProduct
	From Sales.Orders
) t Where RankByProduct = 1;

