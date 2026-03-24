CREATE OR REPLACE TABLE MYDB.MYSCHEMA.EMPLOYEE (
    emp_id        INTEGER      NOT NULL,
    first_name    STRING,
    last_name     STRING,
    email         STRING,
    department    STRING,
    salary        NUMBER(10,2),
    hire_date     DATE,
    PRIMARY KEY (emp_id)
);

INSERT INTO MYDB.MYSCHEMA.EMPLOYEE
    (emp_id, first_name, last_name, email, department, salary, hire_date)
VALUES
    (1, 'Anuj', 'Khare', 'anuj.khare@example.com', 'Data Engineering', 120000.00, '2022-04-10'),
    (2, 'Rohit', 'Sharma', 'rohit.sharma@example.com', 'Analytics',       98000.00, '2023-01-15'),
    (3, 'Priya', 'Patil', 'priya.patil@example.com', 'Finance',        80000.00, '2021-09-01'),
    (4, 'Neha', 'Singh', 'neha.singh@example.com', 'HR',              75000.00, '2020-06-20');

INSERT INTO MYDB.MYSCHEMA.EMPLOYEE
    (emp_id, first_name, last_name, email, department, salary, hire_date)
VALUES
    (5, 'Amit', 'Kadam', 'amit.kadam@example.com', 'Data Engineering', 110000.00, '2022-03-12'),
    (6, 'Sonal', 'Mehta', 'sonal.mehta@example.com', 'Marketing', 68000.00, '2021-11-05'),
    (7, 'Varun', 'Desai', 'varun.desai@example.com', 'Product', 102000.00, '2020-08-18'),
    (8, 'Kiran', 'Rao', 'kiran.rao@example.com', 'Finance', 84000.00, '2023-02-10'),
    (9, 'Megha', 'Joshi', 'megha.joshi@example.com', 'Analytics', 91000.00, '2022-12-01'),
    (10, 'Suresh', 'Nair', 'suresh.nair@example.com', 'Operations', 76000.00, '2020-04-22'),
    (11, 'Aishwarya', 'Kulkarni', 'aishwarya.kulkarni@example.com', 'HR', 72000.00, '2023-06-14'),
    (12, 'Nikhil', 'Bhosale', 'nikhil.bhosale@example.com', 'Sales', 65000.00, '2021-05-10'),
    (13, 'Ritika', 'Garg', 'ritika.garg@example.com', 'Product', 99000.00, '2022-10-09'),
    (14, 'Deepak', 'Yadav', 'deepak.yadav@example.com', 'Engineering', 130000.00, '2020-02-17'),
    (15, 'Shruti', 'Mishra', 'shruti.mishra@example.com', 'Engineering', 135000.00, '2023-01-19'),
    (16, 'Harish', 'Pawar', 'harish.pawar@example.com', 'Operations', 78000.00, '2021-07-30'),
    (17, 'Manasi', 'Shinde', 'manasi.shinde@example.com', 'Legal', 88000.00, '2019-10-25'),
    (18, 'Raj', 'Kapoor', 'raj.kapoor@example.com', 'Finance', 82000.00, '2020-06-03'),
    (19, 'Divya', 'Iyer', 'divya.iyer@example.com', 'HR', 73000.00, '2023-03-27'),
    (20, 'Aniket', 'Gandhi', 'aniket.gandhi@example.com', 'IT Support', 60000.00, '2021-12-12'),
    (21, 'Preeti', 'Shetty', 'preeti.shetty@example.com', 'Customer Success', 70000.00, '2020-01-05'),
    (22, 'Gaurav', 'Phadke', 'gaurav.phadke@example.com', 'Sales', 67000.00, '2022-04-21'),
    (23, 'Tanya', 'Verma', 'tanya.verma@example.com', 'Analytics', 94000.00, '2023-05-16'),
    (24, 'Siddharth', 'Chavan', 'siddharth.chavan@example.com', 'Engineering', 128000.00, '2021-09-11');

SELECT * FROM EMPLOYEE;


CREATE OR REPLACE VIEW HR_EMPLOYEES AS
SELECT EMP_ID, FIRST_NAME, LAST_NAME, SALARY 
FROM EMPLOYEE 
WHERE DEPARTMENT = 'HR';

SELECT * FROM HR_EMPLOYEES;


CREATE OR REPLACE SECURE VIEW MYDB.MYSCHEMA.ENGINEER_EMPLOYEES AS
SELECT EMP_ID, FIRST_NAME, LAST_NAME, SALARY 
FROM EMPLOYEE 
WHERE DEPARTMENT = 'ENGINEERING';

SELECT * FROM ENGINEER_EMPLOYEES;
