select
format(OrderDate, 'MMM yy') OrderDate,
Count(*)  Orders
from Sales.Orders
group By format(OrderDate, 'MMM yy');