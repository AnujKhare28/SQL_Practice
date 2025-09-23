use datamites_sql;
show tables;
select * from emp;
select * from dept;
select deptno from emp where ename='smith'; -- deptno = 20
select dname from dept where deptno=20; -- dname = research

-- Sub Query/Nested Query
select dname from dept where deptno=(select deptno from emp where ename='smith');

-- Q1 Give customer names who has minimum and maximum salaries
select max(sal) from emp;
select min(sal) from emp;
select ename from emp where sal=(select max(sal) from emp);
select ename from emp where sal=(select min(sal) from emp);

-- Q2 Names of emp as managers under Blake
select * from emp;
select empno from emp where ename='blake';
select ename from emp where mgr=(select empno from emp where ename='blake');

-- Q3 Give customer name who bought highest number of products
select * from customers;
select * from orders;
select * from products;

select customer_id, sum(quantity) from orders 
group by customer_id order by sum(quantity) desc limit 1;

select customer_name from customers where customer_id = (
select customer_id from orders 
group by customer_id order by sum(quantity) desc limit 1);

-- Q4 Give customer name who has done highest amt of sales
select customer_id, sum(sales) from orders 
group by customer_id order by sum(sales) desc limit 1;

select customer_name from customers where customer_id = (
select customer_id from orders 
group by customer_id order by sum(sales) desc limit 1);

-- Q5  which customer has ordered maximum times
select * from orders;
select * from customers;
select customer_id, count(customer_id) from orders group by customer_id limit 1 offset 1;
select customer_name from customers where customer_id=(select customer_id from orders 
group by customer_id limit 1 offset 1); -- only 1 col needed, so count() not included