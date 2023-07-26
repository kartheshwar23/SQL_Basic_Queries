SHOW DATABASES;
CREATE DATABASE LIBRARY;
USE LIBRARY;
CREATE TABLE BOOKS
(
Book_id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
Title varchar(100),
Author_fname varchar(20),
Autho_lname varchar(20),
Released_year int,
Stock_quantity int,
Pages int
);
DROP TABLE BOOKS;
INSERT INTO BOOKS (Title,Author_fname,Autho_lname,Released_year,Stock_quantity,Pages) VALUES
("The Namesake","Jhumpa","Lahiri",2003,32,291),
("Norse Mythology","Neil","Gaiman",2016,43,304),
("American Gods","Neil","Gaiman",2001,12,465),
("Interpreter of Maladies","Jhumpa","Lahiri",1996,97,198),
("A Hologram for the king: A Novel","Dave","Eggers",2012,154,352),
("The Circle","Dave","Eggers",2013,26,504),
("The Amazing Adventures of Kavalier & Clay","Michael","Chabon",200,68,634),
("Just Kids","Patti","Smith",2010,55,304),
("A Heartbraking Work of Staggering Genius","Dave","Eggers",2001,104,437),
("Coraline","Neil","Gaiman",2003,100,208),
("What We Talk About When WE Talk About Love : Stories","Raymond","Carver",1981,23,231),
("Where I am Calling From :Selected Stories","Raymond","Carver",1989,12,526),
("White Noise","Don","Delillo",1985,49,181),
("Oblivion : Stories","David","Foster Wallace",2004,172,329),
("Consider the Lobster","David","Foster Wallace",2005,92,343);

DESC BOOKS;
SELECT * FROM BOOKS;