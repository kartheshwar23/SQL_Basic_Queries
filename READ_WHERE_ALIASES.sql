CREATE DATABASE ANIMAL;
USE ANIMAL;

CREATE TABLE CATS (Name varchar(20) DEFAULT "CATS", Breed varchar(20) NOT NULL, Age int DEFAULT 0 , Cat_id int PRIMARY KEY AUTO_INCREMENT);

DESC CATS;

INSERT INTO CATS (Name, Breed, Age) VALUES ("Ringo", "Tabby", 4);

INSERT INTO CATS (Name, Breed, Age) VALUES ("Cindy", "Maine Coon", 10),
("Dumbledore","Mainecoon", 11),
("Egg", "Persian", 4),
("Misty", "Tabby",13),
("George","Ragdoll",9),
("Jackson", "Sphynx",7);

SELECT * FROM CATS;
SELECT Name,Age FROM CATS;


-- WHERE CLAUSE 
SELECT Cat_id from CATS;
SELECT Name,Breed FROM CATS;
SELECT Name,Age FROM CATS WHERE Breed="Tabby";
SELECT Cat_id, Age FROM CATS WHERE Cat_id=Age;

--  ALLIASES

SELECT Cat_id AS ID FROM CATS;
SELECT Name AS Cat_name FROM CATS;