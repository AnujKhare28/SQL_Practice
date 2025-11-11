show databases;
use datamites_sql;
show tables;
select * from emp;
select ename from emp where job='salesman';
select * from emp where deptno=30;

-- aggregation functions
select sal from emp;
select min(sal) from emp;
select max(sal) from emp;
select avg(sal) from emp;
select sum(sal) from emp;
select count(sal) from emp;

-- distinct function 	-> gives result without repetetion
select job from emp;
select distinct job from emp;
select count(distinct job)from emp;

-- giving alias for column heading
select count(distinct job) as job_count from emp;
select ename as emp_name, job as emp_job from emp;	-- this alias given, doen't make changes in original table

-- Ques1: give details of employees for job= manager, president or analyst
select * from emp where (job='manager' or job='president' or job='analyst');
select * from emp where job in ('manager', 'president', 'analyst');
-- Ques2: give details of those employees whose salary is between 1500 to 2500
select * from emp where (sal >= 1500 and sal <=2500);
select * from emp where sal between 1500 and 2500;

-- NOT function
select * from emp where job not in ('manager', 'president', 'analyst');
select * from emp where not (job='manager' or job='president' or job='analyst');

select * from emp where not (sal >= 1500 and sal <=2500);
select * from emp where sal not between 1500 and 2500;

select * from emp where not deptno=30;

-- ORDER BY function
select * from emp order by sal;		-- ascending order (asc)
select * from emp order by sal desc;	-- descending order (desc)
select * from emp where deptno = 30 order by sal;

-- IS NULL/NOT NULL function
select * from emp;
select * from emp where comm is not null;
select * from emp where comm is null;
select count(*) from emp where comm is not null;

-- LIMIT function
select * from emp order by sal limit 3;	
select * from emp order by sal desc limit 3;
select * from emp order by sal limit 3 offset 2; -- from top 3 show the third one except 2 records	
select * from emp order by sal limit 2 offset 1; -- from top 2 remove top 1 and show the remaining 

-- in BETWEEN function, date format: 'yyyy-mm-dd'
select * from emp where sal between 1500 and 2500;
select * from emp where hiredate between '1993-5-13' and '1998-7-24';

-- LIKE function
select * from emp where ename like 's%'; 	-- 's%' -> starts with s
select * from emp where ename like '%s'; 	-- '%s' -> ends with s
select * from emp where ename like 'j%s';  	-- 'j%s' -> starts with j and ends with s
select * from emp where ename like '_l%';	-- '_l%' -> first letter can be anything, 2nd letter must be l and other letters carry forward
select * from emp where ename like '%e%'; 	-- '%e%' -> name that contains e in its spelling
select * from emp where ename like '_a';	-- '_a' -> first letter anything, second letter 'a'
select * from emp where ename like 'j_';	-- 'j_' -> 1st letter 'j', 2nd letter anything

-- GROUP BY clause
-- GROUP BY is always paired with aggregation function
-- with GROUP BY clause HAVING clause is used instead of where clause
select job, count(job) from emp group by job;
select job, count(job) as job_count from emp group by job;
select deptno, count(deptno) from emp group by deptno;
select deptno, count(deptno), sum(sal) from emp group by deptno;
select deptno, count(deptno), avg(sal) from emp group by deptno;
select job, avg(sal) from emp group by job having avg(sal)<2500;