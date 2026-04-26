Select
*,
CurrentMonthSales - PreviousMonthSales as MoM_Change
From (
select
	 Month(OrderDate) OrderMonth,
	 Sum(Sales) CurrentMonthSales,
	 lag(Sum(Sales)) Over(Order by Month(OrderDate)) PreviousMonthSales
From Sales.Orders
group by Month(OrderDate)
)t ;





Select
*,
CurrentMonthSales - PreviousMonthSales as MoM_Change,
Round(cast((CurrentMonthSales - PreviousMonthSales) as Float)/PreviousMonthSales * 100 , 1) as MoM_Percent_Change
From (
select
	 Month(OrderDate) OrderMonth,
	 Sum(Sales) CurrentMonthSales,
	 lag(Sum(Sales)) Over(Order by Month(OrderDate)) PreviousMonthSales
From Sales.Orders
group by Month(OrderDate)
)t ;