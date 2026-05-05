CREATE DATABASE constraints;
USE constraints;

CREATE TABLE temp1 (
	id int UNIQUE
);

INSERT INTO temp1 VALUES (101);
INSERT INTO temp1 VALUES (101);

SELECT * FROM temp1;

DROP TABLE temp1;

CREATE TABLE temp1 (
	id int UNIQUE,
    name VARCHAR(50),
    age INT, 
    city VARCHAR(20),
    PRIMARY KEY (id, name)
);

SELECT * FROM temp1;

CREATE TABLE temp (
	cust_id INT, 
    FOREIGN KEY (cust_id) references temp1 (id)
);

SELECT * FROM temp;

CREATE TABLE employ (
	id INT,
    salary INT DEFAULT 25000);
    
INSERT INTO employ (id) VALUES (101);
INSERT INTO employ (id, salary) VALUES (102, 30000);

SELECT * FROM employ;

CREATE TABLE city1 (
	id INT PRIMARY KEY,
    city VARCHAR(50),
    age INT,
    CONSTRAINT age_check CHECK (age >= 18 and city='Delhi')
);

SELECT * FROM city1;

CREATE TABLE city (
	age INT CHECK (age>=18)
    );

SELECT * FROM city;