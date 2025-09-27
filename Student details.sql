CREATE DATABASE student;
USE student;

CREATE TABLE info (
	rollno INT PRIMARY KEY UNIQUE,	
    name VARCHAR(50),
    marks FLOAT NOT NULL,
    city VARCHAR(20)
);

INSERT INTO info 
(rollno, name, marks, city)
VALUES
(101, 'Akshay', 78, 'Pune'),
(102, 'Bhumika', 93, 'Mumbai'),
(103, 'Chetan', 85, 'Mumbai'),
(104, 'Dhruv', 96, 'Delhi'),
(105, 'Eva', 12, 'Delhi'),
(106, 'Farah', 82, 'Delhi');

SELECT city, avg(marks) 
FROM info 
GROUP BY city
ORDER BY avg(marks) desc;

SELECT city, count(rollno)
FROM info
GROUP BY city
HAVING MAX(marks) > 90;

SELECT * FROM info;
SET SQL_SAFE_UPDATES = 0;

ALTER TABLE info
CHANGE COLUMN name full_name VARCHAR(30);

DELETE FROM info
WHERE marks < 80;

ALTER TABLE info
DROP COLUMN city;