-- Find the highest sales for each product
use salesdb;
select
	OrderID,
    ProductID,
    Sales,
    max(Sales) over(partition by ProductID) as highest_sales
from orders;