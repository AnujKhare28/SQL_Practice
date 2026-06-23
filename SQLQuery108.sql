Select *
into Sales.DBCustomers
from Sales.Customers

select * from Sales.DBCustomers

create clustered index idx_DBCustomers_CustomerID
on Sales.DBCustomers (CustomerID)