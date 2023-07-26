SELECT @@sql_mode;

USE LIBRARY;
SELECT * FROM BOOKS;
DESC BOOKS;
-- AGGREGATE FUNCTION --

--  COUNT
SELECT COUNT(*) FROM BOOKS;
SELECT COUNT(DISTINCT(Author_fname))FROM BOOKS;
SELECT DISTINCT Author_fname FROM BOOKS;
SELECT DISTINCT (CONCAT(Author_fname, autho_lname)) FROM BOOKS;
SELECT COUNT(DISTINCT Author_fname,Autho_lname) FROM BOOKS;
SELECT COUNT(Title) FROM BOOKS WHERE Title LIKE "%THE%";

--  GROUP BY
SELECT Author_fname ,COUNT(*) FROM BOOKS GROUP BY Author_fname;
SELECT Released_year, COUNT(*) FROM BOOKS GROUP BY Released_year;

--  MIN AND MAX
SELECT MIN(Released_year) FROM BOOKS;
SELECT MIN(Pages) FROM BOOKS;

SELECT MAX(Released_year) FROM BOOKS;
SELECT MAX(Pages) FROM BOOKS;

SELECT * FROM BOOKS WHERE Pages=(SELECT MIN(Pages) FROM BOOKS);
SELECT Title,Pages FROM BOOKS WHERE Pages=(SELECT MAX(Pages) FROM BOOKS);

--  MIN AND MAX WITH GROUP BY
SELECT Author_fname,Autho_lname,MIN(Released_year) FROM BOOKS GROUP BY Author_fname,Autho_lname;
SELECT Author_fname,Autho_lname,MAX(Pages) FROM BOOKS GROUP BY Author_fname,Autho_lname;

--  SUM 
SELECT SUM(Pages) FROM BOOKS;
SELECT SUM(Stock_quantity) FROM BOOKS;

SELECT Author_fname,Autho_lname, SUM(Pages) FROM BOOKS GROUP BY Author_fname,Autho_lname;

-- AVG
SELECT AVG(Pages) FROM BOOKS;
SELECT AVG(Released_year) FROM BOOKS;

SELECT AVG(Stock_quantity),Released_year,COUNT(Title) FROM BOOKS GROUP BY (Released_year);
SELECT Author_fname,Autho_lname, AVG(Pages) FROM BOOKS GROUP BY Author_fname,Autho_lname ORDER BY AVG(Pages) desc;