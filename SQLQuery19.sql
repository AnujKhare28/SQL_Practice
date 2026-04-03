select
year(OrderDate),
Count(*)
from Sales.Orders
group by year(OrderDate);

select
Month(OrderDate),
Count(*)
from Sales.Orders
group by Month(OrderDate);


select
DateName(Month, OrderDate) OrderDate,
Count(*) NoOfOrder
from Sales.Orders
group by DateName(Month, OrderDate);

select *
from Sales.Orders
where Month(OrderDate) = 2;



