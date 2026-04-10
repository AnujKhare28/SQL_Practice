select 
	customer_id,
	Count(*) as total_no_of_orders,
	sum(sales) as totalSales,
	avg(sales) as AvgSales,
	Max(sales) as HighestSales,
	Min(sales) as LowestSales
From orders
group by customer_id;