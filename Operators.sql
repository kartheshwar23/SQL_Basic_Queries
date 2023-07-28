-- LOGICAL OPERATORS
-- !=
-- NOTLIKE
--  >
--  >=
--  <
--  <=
--  && and
--  || OR
--  BETWEEN
--  NOT BETWEEN
--  IN
USE LIBRARY;
SHOW TABLES;
SELECT * FROM BOOKS;
SELECT Title,Released_year FROM BOOKS WHERE Released_year != 2003 ORDER BY Released_year; 
SELECT Title, Autho_lname FROM BOOKS WHERE Autho_lname  != "Harris";
-- NOT LIKE
SELECT Title FROM BOOKS WHERE Title LIKE "W%";
SELECT Title FROM BOOKS WHERE Title NOT LIKE "W%";

--  >,>=,<,<=
SELECT * FROM BOOKS WHERE Pages>300;
SELECT Title,Released_year FROM BOOKS WHERE Released_year>2003;
SELECT Title,Released_year FROM BOOKS WHERE Released_year>=2003;
SELECT Title,Stock_quantity FROM BOOKS WHERE Stock_quantity>120;
SELECT 99>1;  -- OP =1 WHICH MEANS TRUE 

SELECT Title,Released_year FROM BOOKS WHERE Released_year<2000;
SELECT Title,Released_year FROM BOOKS WHERE Released_year<=2003;

--  logical and &&
SELECT Title,Author_fname,Autho_lname,Released_year FROM BOOKS WHERE Author_fname="Dave" && Autho_lname="Eggers" && Released_year >=2010;
Select Title,Released_year From books Where Title like "a%" and Author_fname="Dave" and Released_year=2012 ; 

--  logical OR ||
SELECT Title,Autho_lname,Released_year FROM BOOKS WHERE Autho_lname="Eggers" || Released_year >2010;

 --  BETWEEN
 SELECT Title,Pages FROM BOOKS WHERE Pages>200 && Pages<400 ;
 SELECT Title,Pages,Released_year FROM BOOKS WHERE Released_year BETWEEN 2003 AND 2016;
 
 --  NOT BETWEEN
 SELECT Title,pages,Released_year FROM BOOKS WHERE Released_year NOT BETWEEN 2003 AND 2016;
 
 --  IN
 SELECT Title,Autho_lname FROM BOOKS WHERE Autho_lname IN ("GAIMAN", "EGGERS");
 
 --  NOT IN
 SELECT Title,Released_year FROM BOOKS WHERE Released_year NOT IN(2000.2002,2004,2006,2008,2010,2012,2014,2016,2018,2020);
 SELECT Title,Released_year FROM BOOKS WHERE Released_year % 2 !=0 ORDER BY Released_year;
 
 --  CASE STATEMENTS
 SELECT Title,Released_year,
 CASE
	WHEN Released_year>=2000 THEN "MODERN LITE"
    ELSE "20 CENTURY LITE"
    END AS "GENERE"
FROM BOOKS;

SELECT Title,Stock_quantity ,
CASE
	WHEN Stock_quantity <=50 THEN "*"
    WHEN Stock_quantity>50 and Stock_quantity<=100 THEN "**"
    ELSE "***"
    END AS RATINGS FROM BOOKS;