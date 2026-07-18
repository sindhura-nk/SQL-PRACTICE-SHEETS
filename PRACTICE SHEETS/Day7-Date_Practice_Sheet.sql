CREATE DATABASE CX_180_DAY7;

USE CX_180_DAY7;

CREATE TABLE Employees ( EmployeeID INT, Name VARCHAR(50), HireDate DATE, Salary INT );

INSERT INTO Employees VALUES (1, 'Amit', '2020-01-15', 50000),
(2, 'Neha', '2021-06-10', 60000), 
(3, 'Raj', '2022-03-25', 55000), 
(4, 'Simran', '2023-08-05', 70000),
(5, 'Karan', '2024-01-20', 65000),
(6, 'Raman', '2024-01-10', 56000),
(7, 'Baman', '2026-07-10', 46000),
(8, 'Naman', '2026-06-20', 96000); 



CREATE TABLE Orders ( OrderID INT, CustomerName VARCHAR(50), OrderDate DATE, DeliveryDate DATE, Amount INT ); 

INSERT INTO Orders VALUES (101, 'Amit', '2024-01-01', '2024-01-05', 2000), 
(102, 'Neha', '2024-02-10', '2024-02-15', 3000), 
(103, 'Raj', '2024-03-05', '2024-03-07', 1500),
(104, 'Simran', '2024-03-20', '2024-03-25', 4000), 
(105, 'Karan', '2024-04-01', '2024-04-10', 2500),
(106, 'Raman', '2024-04-10', '2024-04-15', 1500),
(107, 'Baman', '2024-04-20', '2024-04-29', 2500),
(108, 'Simran', '2026-03-20', '2026-03-25', 4000);


/*Level 1: Basics
Display current date and time(GETDATE())
Extract current year, month, and day - YEAR,MONTH,DAY,DATENAME
Show only date (remove time) - USE CAST(GETDATE() AS DATE) : CAST IS USED TO CHANGE THE DATATYPE
Find name of employees hired after 2022
Find name of employees hired before 2023
*/

-- Display current date and time(GETDATE())

-- Extract current year, month, and day - YEAR,MONTH,DAY,DATENAME

-- Show only date (remove time) - USE CAST(GETDATE() AS DATE) : CAST IS USED TO CHANGE THE DATATYPE


-- Find employees hired after 2022



/*
Level 2: Date Arithmetic
Add 10 days to current date IN ORDERS (USE DATEADD)
Add 2 months to HireDate
Subtract 1 year from current date
Find employees hired in last 2 years
Find orders placed in last 30 days
*/

-- Add 10 days to current date


-- Add 2 months to HireDate

-- Subtract 1 year from current date


-- Find employees hired in last 2 years
-- SELECT * FROM Employees WHERE YEAR(HIREDATE)=YEAR(DATEADD(YEAR,-2,GETDATE()));

-- Find orders placed in last 30 days
-- SELECT * FROM Employees WHERE YEAR(HIREDATE) = YEAR(DATEADD(DAY,-100,GETDATE()));

/*
Level 3: Date Difference
Calculate number of days between OrderDate and DeliveryDate
Find orders delivered within 5 days
Find orders with delivery delay > 7 days
*/
-- Calculate number of days between OrderDate and DeliveryDate

-- Find orders delivered within 5 days


/*

Level 4: Filtering by Date Parts
Find employees hired in January
Find orders placed in March
Find records from current year
Find employees hired in last month
*/

-- Find employees hired in January (use datename)

-- Find orders placed in March

-- Find records from current year

-- Find employees hired in last month

/*

Level 5: Advanced Scenarios
Find employees hired on weekends
Find last day of current month
Find first day of current year
Group orders by month
Find total sales per month
Find employees hired in last 100 days
Find orders placed between two dates

*/

-- Find employees hired on weekends


-- Find last day of current month ->use EOMONTH


-- Group average salaries by month (use datename for monthnames)


-- Find total sales per month


-- Find employees hired in last 100 days


-- Find orders placed between two dates say between 2023-08-01 and 2026-01-01


