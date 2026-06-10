create table Sales.Employeeslogs (
	LogID int identity (1,1) primary key,
	EmployeeID int,
	LogMessage varchar(255),
	LogDate Date
);



create trigger trg_AfterInsertEmployees on Sales.Employees
After insert
as
begin 
	insert into Sales.Employeeslogs(EmployeeID, LogMessage, LogDate)
	select
		EmployeeID,
		'New Employee Added =' + cast (EmployeeID as varchar),
		getdate()
	from inserted
end;

select * from Sales.Employeeslogs;

insert into Sales.Employees
values
(7, 'John', 'Deo', 'HR', '1966-02-12','F', 80000,3);