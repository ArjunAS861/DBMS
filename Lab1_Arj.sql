create database INSURANCE;
use INSURANCE;
create table Person(driver_id varchar(20),name varchar(30),address varchar(100),PRIMARY KEY(driver_id));
create table Car(reg_num varchar(20),model varchar(20),year int);
alter table Car add PRIMARY KEY(reg_num);
create table Accident(report_num int,accident_date date,location varchar(100),primary key(report_num));
create table Owns(driver_id varchar(20),reg_num varchar(20),primary key(driver_id,reg_num),FOREIGN KEY(driver_id) REFERENCES Person(driver_id),FOREIGN KEY(reg_num) REFERENCES Car(reg_num));
create table Participated(
driver_id varchar(20),
reg_num varchar(20),
report_num int,
damage_amount int,
primary key(driver_id,reg_num,report_num),
foreign key(driver_id) REFERENCES Person(driver_id),
FOREIGN KEY(reg_num) REFERENCES Car(reg_num),
foreign key(report_num) references Accident(report_num));
desc Person;
desc Car;
desc Participated;
insert into Person(driver_id,name,address) 
values('A01','Richard','Srinivas nagar'),
('A02','Pradeep','Rajaji nagar'),
('A03','Smith','Ashok nagar'),
('A04','Venu','N R Colony'),
('A05','John','Hanumanth nagar');
select * from Person;
insert into Car(reg_num,model,year)
values ('KA052250','Indica',1990),
('KA031181','Lancer',1957),
('KA095477','Toyota',1998),
('KA03408','Honda',2008),
('KA041702','Audi',2005);

insert into Owns 
values('A01','KA052250'),
('A02','KA03408'),
('A03','KA031181'),
('A04','KA095477'),
('A05','KA041702');
insert into Accident(report_num,accident_date,location)
values(11,'2003-01-01','Mysore Road'),
(12,'2004-02-02','South end Circle'),
(13,'2003-01-21','Bull temple Road'),
(14,'2008-02-17','Mysore Road'),
(15,'2005-03-04','Kanakpura Road');
insert into Participated(driver_id,reg_num,report_num,damage_amount)
values ('A01','KA052250',11,10000),
('A02','KA03408',12,50000),
('A03','KA095477',13,25000),
('A04','KA031181',14,3000),
('A05','KA041702',15,5000);
select * from Participated;
update participated set damage_amount=25000 where reg_num='KA03408' and report_num=12;
insert into Accident values(16,'2010-03-01','Basavanagudi');
select * from Accident;
select count(distinct driver_id) CNT
from Participated,Accident where Participated.report_num=Accident.report_num and accident_date like '2008%'; select count(Participated.report_num) No_ACC from Car,Participated where Car.reg_num=Participated.reg_num and Car.model='Indica'; 