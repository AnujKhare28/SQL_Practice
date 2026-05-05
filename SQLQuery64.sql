CREATE DATABASE college;
USE college;

CREATE TABLE student (
	rollno INT PRIMARY KEY,
    name VARCHAR(20),
    marks INT NOT NULL,
    grade VARCHAR (2),
    city VARCHAR (20)
);

INSERT INTO student 
(rollno, name, marks, grade, city)
VALUES
(101, 'Swarali', 89, 'A', 'Surendranagar'),
(102, 'Anuj', 85, 'A', 'Chhatarpur'),
(103, 'Dhwani', 72, 'B', 'Rajkot'),
(104, 'Siddhi', 69, 'B', 'Junagadh'),
(105, 'Chetan', 3, 'F', 'Rajkot'),
(106, 'Kaival', 45, 'C', 'Vadodara');

SELECT DISTINCT city FROM student;

SELECT city
FROM student
WHERE grade = 'A'
GROUP BY city
HAVING MAX(marks) > 70
ORDER BY city DESC;

SET SQL_SAFE_UPDATES = 0;

UPDATE student
SET grade = 'O'
WHERE marks > 90;

UPDATE student
SET grade = 'D'
WHERE rollno = 105;

UPDATE student
SET grade = 'B'
WHERE marks BETWEEN 80 AND 90;

UPDATE student
SET marks = marks + 4;

SELECT * FROM student;