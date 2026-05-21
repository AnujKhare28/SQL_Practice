Select 
	OrderMonth,
	TotalSales,
	Sum(TotalSales) Over(order by OrderMonth) as RunningTotal
From V_Monthly_Summary;
