CREATE DATABASE PRACTISE;
USE PRACTISE;
CREATE TABLE PASTRIES (
name varchar(25),
quantity int
);
SHOW TABLES;

DESC PASTRIES;

INSERT INTO PASTRIES (name , quantity) VALUES ("Choco", 5);

INSERT INTO PASTRIES (name, quantity) 
VALUES ("Strwabery", 10),
("Fountain cup", 15),
("Buterschotch", 4);

SELECT * FROM PASTRIES;
DROP TABLE pastries;