select 
OrderID,
DATENAME(MONTH, CreationTime) Month_dn
from sales.Orders;


select 
OrderID,
DATENAME(WEEKDAY, CreationTime) WeekDay_dn
from sales.Orders;

select 
OrderID,
DATETRUNC (MINUTE, CreationTime) Minute_dt
from sales.Orders;

select 
OrderID,
DATETRUNC (DAY, CreationTime) Minute_dt
from sales.Orders;

select 
OrderID,
DATETRUNC (MONTH, CreationTime) Minute_dt
from sales.Orders;

select 
OrderID,
DATETRUNC (YEAR, CreationTime) Minute_dt
from sales.Orders;

select 
OrderID,
DATETRUNC (HH, CreationTime) Minute_dt
from sales.Orders;

select 
DATETRUNC (MONTH, CreationTime) Creation,
count(*)
from sales.Orders
group by DATETRUNC (MONTH, CreationTime);

select 
OrderID,
EOMONTH(CreationTime) EndOfMonth,
DATETRUNC (MONTH, CreationTime) FirstOfMonth
from sales.Orders;
