CREATE DATABASE BlackStar;
USE BlackStar;

CREATE TABLE employee (
	Emp_ID INT PRIMARY KEY NOT NULL,
    Name VARCHAR(50),
    Dept VARCHAR(25),
    Branch VARCHAR(20) NOT NULL
);

INSERT INTO employee
(Emp_ID, Name, Dept, Branch)
VALUES
(1, 'Swarali', 'Management', 'Mumbai'),
(2, 'Anuj', 'Human Resource', 'Mumbai'),
(3, 'Karan', 'Sales', 'Delhi'),
(4, 'Deepti', 'Production','Ahmedabad'),
(5, 'Kavya', 'Accounts', 'Bangalore'),
(6, 'Chetan', 'Sales', 'Bangalore'),
(7, 'Minakshi', 'Accounts', 'Bangalore'),
(8, 'Shivam', 'Management', 'Delhi');

SELECT * FROM employee;

UPDATE employee
SET Branch = 'Delhi'
WHERE Emp_ID = 5;

DELETE FROM employee
WHERE Name = 'Deepti';

SET SQL_SAFE_UPDATES = 0;












