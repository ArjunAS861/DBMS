create database Bank;
use Bank;
create table Branch(
branch_name varchar(30),
branch_city varchar(30),
assets REAL,
primary key(branch_name));

create table BankAccount(
accno int,
branch_name varchar(30),
balance REAL,
primary key(accno),
foreign key(branch_name) references Branch(branch_name));




create table BankCustomer(
customer_name varchar(30),
customer_street varchar(30),
city varchar(30),
primary key(customer_name));

create table Depositer(
customer_name varchar(30),
accno int,
primary key(customer_name,accno),
foreign key(accno) references BankAccount(accno),
foreign key(customer_name) references BankCustomer(customer_name)
);
create table Loan(
loan_number int,
branch_name varchar(30),
amount REAL,
primary key(loan_number),
foreign key(branch_name) references Branch(branch_name));
desc Branch;
desc Depositer;
desc BankAccount;
desc Loan;
insert into Branch values('SBI_Chamarajpet','Bangalore',50000),
('SBI_ResidencyRoad','Bangalore',10000),
('SBI_ShivajiRoad','Bombay',20000),
('SBI_ParliamentRoad','Delhi',10000),
('SBI_Jantarmantar','Delhi',20000);
insert into BankAccount values(1,'SBI_Chamarajpet',2000),
(2,'SBI_ResidencyRoad',5000),
(3,'SBI_ShivajiRoad',6000),
(4,'SBI_ParliamentRoad',9000),
(5,'SBI_Jantarmantar',8000),
(6,'SBI_ShivajiRoad',4000),
(8,'SBI_ResidencyRoad',4000),
(9,'SBI_ParliamentRoad',3000),
(10,'SBI_ResidencyRoad',5000),
(11,'SBI_Jantarmantar',2000);
insert into BankCustomer values('Avinash','Bull_Temple_Road','Bangalore'),
('Dinesh','Bannergatta_Road','Bangalore'),
('Mohan','NationalCollege_Road','Bangalore'),
('Nikil','Akbar_Road','Delhi'),
('Ravi','Prithviraj_Road','Delhi');
insert into Depositer values('Avinash',1),
('Dinesh',2),
('Nikil',4),
('Ravi',5),
('Avinash',8),
('Nikil',9),
('Dinesh',10),
('Nikil',11);
insert into Loan values(1,'SBI_Chamarajpet',1000),
(2,'SBI_ResidencyRoad',2000),
(3,'SBI_ShivajiRoad',3000),
(4,'SBI_ParliamentRoad',4000),
(5,'SBI_Jantarmantar',5000);
select * from Branch;




 