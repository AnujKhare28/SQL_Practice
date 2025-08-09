create database bookstore;

use bookstore;

CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(50),
    price DECIMAL(10 , 2 ),
    publication_date DATE,
    category VARCHAR(30),
    in_stock INT
);

insert into books values 
	(1,'The MySQL Guide', 'John Smith', 29.99, '2023-01-15', 'Technology', 50),
    (2,'Data Science Basics', 'Sarah Johnson', 34.99, '2023-03-20', 'Technology', 30),
    (3,'Mystery at Midnight', 'Michael Brown', 19.99, '2023-02-10', 'Mystery', 100),
    (4,'Cooking Essentials', 'Lisa Anderson', 24.99, '2023-04-05', 'Cooking', 75);
    
    
SELECT 
    *
FROM
    books;
    
SELECT 
    *
FROM
    books where category = 'Technology';
    
SELECT title, price FROM books where price < 30.00;

select title, publication_date from books 
where publication_date >= '2023-03-01';
-- Logical Operator --
select * from books where category = 'Technology' and price < 30.00;

select * from books where category = 'Technology' or price < 30.00;

select * from books where (category='Technology' or category='Mystery') and price < 25;

select * from books where not category = 'Technology';

insert into books values
(5,'The Guide', null, 29.99, '2023-01-15', 'Technology', 50);

insert into books values
(6,'Mini Cook book','William head', 29.99, '2023-01-15', 'Cooking', 50);

-- Finding null values --

select * from books where author is null;

select * from books where not author is null;

-- pattern matching --

select * from books where title like '%SQL%';

select * from books where title like '%ing%';

select * from books where price between 20 and 30;
