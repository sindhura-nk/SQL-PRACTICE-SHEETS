-- create a database
create database cx_180_day4;
-- use the database
use cx_180_day4;
-- create a table emp with 3columns as id,name,email
create table emp(empid int,empname varchar(20),email varchar(200));

-- insert data as per the specified table-column order
insert into emp
values(1,'Raman','Raman@gmail.com'), -- 1st record/1st row
(2,'Suman','Suman@gmail.com'), -- 2nd row data
(3,'Baman','Baman@gmail.com'); --3rd row data

-- insert data as per your column order
insert into emp(empname,email,empid)
values('chaman','chaman@gmail.com',4);
-- view the data
select * from emp;

-- rollback action
-- updating one of the records, we will try to rollback to original state
BEGIN TRANSACTION
update emp
set empname='Naman' where empid=2;
ROLLBACK;
-- maintain 2 saved transactions, roll back to one of them
BEGIN TRANSACTION
update emp 
set empname='Priya' where empid=4;
save transaction name_change1;

select * from emp;

update emp
set empname='Supriya' where empid=4;
save transaction name_change2;

select * from emp;

ROLLBACK TRANSACTION name_change1;

-- commit -> permanently save . You cannot use rollback to go back to previous versions/savepoint
COMMIT;

-- insert null data in emp name
insert into emp
values(5,null,'priya@gmail.com');

-- insert repeated id (say 2) and repeated email id 
insert into emp
values(2,'Aman','priya@gmail.com');
select * from emp;

/*
If you want to ensure,that accurate data is stored everytime,use TABLE CONSTRAINTS
TABLE CONSTRAINTS are always used to maintain accurate data insertions which help in data analysis
*/

-- create table using table constraints.
-- create department table
create table department(
dept_id int PRIMARY KEY,
dept_name varchar(25) NOT NULL);

-- create employee table
create table employee(
emp_id int PRIMARY KEY,
emp_name varchar(25) NOT NULL,
email varchar(200) UNIQUE,
doj date default '2020-01-01',
salary decimal(10,2) CHECK (salary>0),
did int,
FOREIGN KEY(did) REFERENCES DEPARTMENT(dept_id));

-- observe the table structure using below command
-- EXEC sp_help employee;
-- EXEC sp_help department;
EXEC sp_help department;
EXEC sp_help employee;

-- insert 3 records into department table
select * from department;
insert into department values(1,'SALES'),(2,'MKT'),(3,'BPO');

-- try to insert null data/repeated data in department table
insert into department values(5,null);
insert into department values(1,'SALES');

-- insert data into employee table
select * from employee;
insert into employee
values(101,'Raman','Raman@gmail.com','2025-10-13',9000,1),
(102,'Suman','Suman@gmail.com','2024-11-30',15000,2);

-- try to insert <0 values for salary column in employee table
insert into employee
values(103,'Baman','Baman@gmail.com',default,-75000,2);

-- insert valid data for salary now.
insert into employee
values(103,'Baman','Baman@gmail.com',default,75000,2);
-- try to insert repeated data for email column in employee table

exec sp_help employee;
-- try to insert data for dept_id that doesn't exist in departments table
select * from department;

insert into employee
values(104,'Priya','Priya@gmail.com',default,10000,10);
exec sp_help employee;

-- IMPORT EXTERNAL DATA - LOAD TIPS DATASET
-- TIPS DATA ANALYSIS

-- EXPLORE THE DATA
-- 1. view the table information
exec sp_help tips;

-- 2. COUNT OF ROWS
select count(*) as total_rows from tips;

-- 3. DISTINCT TIME, GENDER,DAY
select * from tips;

select DISTINCT(day) from tips;

select DISTINCT(sex) from tips;

select DISTINCT(time) from tips;

-- 4. MAXIMUM TIP MAX

-- 5. minimum tip 

-- 6. ADD A NEW COLUMN : NETBILL 

-- 7. Update NetBill= TOTAL_BILL + TIP





