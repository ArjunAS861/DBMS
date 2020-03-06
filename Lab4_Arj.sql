create database db_1bm18cs019;
use db_1bm18cs019;
create table STUDENT(
snum int,
sname varchar(40),
major varchar(40),
lvl varchar(4),
age int,
primary key (snum));
create table FACULTY(
fid int,
fname varchar(40),
deptid int,
PRIMARY KEY(fid));
create table CLASS(
cname varchar(40),
meets_at time,
room varchar(40),
fid int,
Primary key(cname), 
FOREIGN KEY(fid) references FACULTY(fid) on delete cascade);
create table ENROLLED(
snum int,
cname varchar(40),
PRIMARY KEY(snum,cname),
FOREIGN KEY(snum) REFERENCES STUDENT(snum),
FOREIGN KEY(cname) REFERENCES CLASS(cname) on delete cascade);
insert into STUDENT values(019,'Arjun','CSE','JR',19);
insert into STUDENT values(012,'Akhay','CSE','SO',20);
insert into STUDENT values(038,'Mahesh','EEE','SR',23);
insert into STUDENT values(040,'Rajesh','ECE','FR',18);
insert into STUDENT values(039,'Lokesh','EEE','FR',18);
alter table STUDENT modify column lvl varchar(2);
select * from STUDENT;
insert into FACULTY values(020,'ARK',001),
(030,'PS',002),
(026,'KVN',002),
(044,'VJ',003),
(043,'BJ',001),
(099,'KJ',003),
(011,'KPM',001);
select * from FACULTY;
insert into CLASS values('DBMS','11:15:00','207',026),
('ED','10:00:00','211',043),
('LA','08:55:00','202',020),
('TFCS','02:00:00','205',099),
('DM','12:10:00','211',044),
('MP','12:10:00','202',011);
select * from CLASS;
insert into enrolled values(19,'DBMS'),(12,'DBMS'),(038,'TFCS'),(40,'ED'),(19,'LA');
select * from ENROLLED;

