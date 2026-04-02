select 
OrderID,
DATEPART(Year, CreationTime) year_dp
from sales.Orders;

select 
OrderID,
DATEPART(MOnth, CreationTime) Month_dp
from sales.Orders;

select 
OrderID,
DATEPART(Day, CreationTime) Day_dp
from sales.Orders;

select 
OrderID,
DATEPART(HOUR, CreationTime) Hour_dp
from sales.Orders;

select 
OrderID,
DATEPART(QUARTER, CreationTime) Quater_dp
from sales.Orders;

select 
OrderID,
DATEPART(WEEKDAY, CreationTime) Weekday_dp
from sales.Orders;

select 
OrderID,
DATEPART(Week, CreationTime) Week_dp
from sales.Orders;