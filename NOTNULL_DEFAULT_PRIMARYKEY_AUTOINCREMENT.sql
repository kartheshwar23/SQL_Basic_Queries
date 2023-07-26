SHOW DATABASES;
USE practise;
SHOW TABLES;
CREATE TABLE CAKES (name varchar(20), price int);
INSERT INTO CAKES (name) VALUES ("chocodip");
INSERT INTO CAKES (price) VALUES (350);
INSERT INTO CAKES () VALUES ();
SELECT * FROM cakes;

CREATE TABLE CAKES2 (name varchar(20) NOT NULL, price int NOT NULL);
INSERT INTO CAKES2 (name ) VALUES ("Black curent"); --  this is error line price is not null same follows for name is not null
DESC TABLE CAKES2;
DESC CAKES2;


CREATE TABLE CAKES3 (name varchar(25) NOT NULL DEFAULT("NORMAL CAKE"), age int NOT NULL DEFAULT (150));
INSERT INTO CAKES3 (name) VALUES ("fERRORROCHER");
SELECT * FROM CAKES3;
INSERT INTO CAKES3 (age) VALUES (450);
DROP TABLE CAKES3;

CREATE TABLE CAKES4 (name varchar(25) DEFAULT ("MY CAKE") , price int DEFAULT(300));
INSERT INTO CAKES4 ()  VALUES ();
INSERT INTO CAKES4 (name) VALUES ("RED VALVET");
INSERT INTO CAKES4 (price) VALUES (400);
SELECT * FROM CAKES4;

-- notes if datas can be null dont give not null 

-- if datas canot be null give not null while intializing

-- if datas should not be null but curent value is unknown use not null null and default   


SELECT DATABASE();
SHOW TABLES;
CREATE TABLE CATS (cat_id int , name varchar(25), age int);
INSERT INTO CATS (cat_id, name, age) VALUES (1,"BRUCE",20);
INSERT INTO CATS (cat_id, name, age) VALUES (2,"CARTEL", 12);
INSERT INTO CATS (cat_id, name, age) VALUES (2,"PROVIK", 13);
SELECT * FROM CATS;

CREATE TABLE CATS2 (cat_id int, name varchar(25), age int , PRIMARY KEY (cat_id));
INSERT INTO CATS2 (cat_id, name, age) VALUES (1,"Bruce", 45);
INSERT INTO CATS2 (cat_id, name, age) VALUES (2,"Rocky", 25);
INSERT INTO CATS2 (cat_id, name, age) VALUES (1,"Bruce", 45); --  primary key no duplicate value is avoided
SELECT * FROM CATS2;

CREATE TABLE CATS3 (cat_id int AUTO_INCREMENT PRIMARY KEY , name varchar(30));
INSERT INTO CATS3 (name) VALUES ("ALICE");
SELECT * FROM CATS3;
