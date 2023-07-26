--  DATA TYPES

-- CHAR (4) -> THESE ARE FIXED LENGTH OF CHARACTER 
-- 			IT ADDS EXTRA SPACESS IF LENGTH IS LESS THAN THE VALUE
--             

--  char data type
create database datatypes;
use datatypes;
create table charactertab(name char(5), name1 varchar(10));
insert into charactertab(name, name1) values("karth", "karthe");
-- insert into charactertab(name, name1) values("kartheshwar", "kartheshwar");	--  gives an erro because char can store only 5 
insert into charactertab(name, name1) values("ka", "karthepri");

select * from charactertab;


--  numbers data type
--  Decimal (5,2) -> decimal used for storing float values here 5 is total number of digits
--  and 2 is digits after decimal points

create table items (num decimal(6,3));
insert into items (num) values(234.678);
insert into items (num) values(24.678);
insert into items (num) values(23454.678);--  out of range error
insert into items (num) values(234.67809); --  it give warning
select * from items;

 --  float and double can also be used
 
 --  date and times
 
-- date -- yeaer,month,date (yyyy-mm-dd)
-- time -- hours,minutes,sec ('hh:mm:ss')

--  datetime -- ('yyyy-mm-dd hh:mm:ss')
create table world (todaydate date, nowtime time, nowtoday datetime);
insert into world (todaydate, nowtime,nowtoday ) values ("1999-05-23","13:30:41", "1999-05-23 13:30:41");
select * from world; 