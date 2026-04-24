-- Find employees who are also customers
select e.FirstName, e.LastName from employees e
intersect
select c.FirstName, c.LastName from customers c;