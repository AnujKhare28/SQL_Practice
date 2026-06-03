Select 
*
into #Orders
from Sales.Orders;

Select 
*
from #Orders;

Delete from #Orders
where OrderStatus = 'Delivered';

Select 
*
into Sales.OrdersTest
from #Orders;