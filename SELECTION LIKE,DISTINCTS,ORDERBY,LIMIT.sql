SHOW DATABASES;
USE LIBRARY;
SHOW TABLES;
DESC BOOKS;
INSERT INTO BOOKS (Title,Author_fname,Autho_lname,Released_year,Stock_quantity,Pages) 
values("10% Happier","Dan","Harris",2014,29,256),
("Fake_book","Freida","Harris",2001,287,428),
("Lincoln In the Bardo","George","Saunders",2017,1000,367);

SELECT * FROM BOOKS;

SELECT Title FROM BOOKS;
DESC BOOKS;

--  DISTINCT

SELECT DISTINCT Author_fname FROM BOOKS;
SELECT DISTINCT Autho_lname FROM BOOKS;
SELECT Released_year FROM BOOKS;
SELECT Autho_lname,Author_fname FROM BOOKS;
SELECT CONCAT( Autho_lname,Author_fname) FROM BOOKS;
SELECT DISTINCT CONCAT(Author_fname,Autho_lname) AS NAME FROM BOOKS;

--  ORDER BY
SELECT Author_fname FROM BOOKS ORDER BY Author_fname;
SELECT DISTINCT Author_fname FROM BOOKS ORDER BY Author_fname;
SELECT Title FROM BOOKS ORDER BY Title;
SELECT Title FROM BOOKS ORDER BY Title DESC;
SELECT Released_year FROM BOOKS ORDER BY Released_year;
UPDATE BOOKS SET Released_year =2000 WHERE Released_year=200;

SELECT Title, Author_fname,Pages FROM BOOKS ORDER BY 3;


--  LIMIT

SELECT * FROM BOOKS LIMIT 3;
SELECT Title, Released_year FROM BOOKS ORDER BY 2 DESC LIMIT 4;
SELECT Title,Released_year,PageS FROM BOOKS ORDER BY 2 DESC LIMIT 5;

-- LIKE
SELECT Title FROM BOOKS WHERE Title LIKE "A%";
SELECT Author_fname,Autho_lname,Title FROM BOOKS WHERE Author_fname LIKE "%da%";
SELECt Title,Author_fname,Autho_lname FROM BOOKS WHERE Author_fname="Dave";
SELECT Stock_quantity,Title FROM BOOKS WHERE Stock_quantity LIKE"____";
SELECT Title FROM BOOKS WHERE Title LIKE "%\%%";
SELECT Title FROM BOOKS WHERE Title LIKE "%\_%";

