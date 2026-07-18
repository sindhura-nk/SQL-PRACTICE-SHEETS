-- Create Database

CREATE DATABASE CX_180_INDEXES;

-- Activate/Use Database
USE CX_180_INDEXES;

-- create below table
CREATE TABLE Employees (
    EmployeeID INT ,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2)
);


INSERT INTO Employees (EmployeeID,FirstName, LastName, Department, Salary)
VALUES
(1,'Alice', 'Smith', 'HR', 60000),
(2,'Bob', 'Johnson', 'IT', 80000),
(3,'Charlie', 'Lee', 'Finance', 70000),
(4,'David', 'Kim', 'HR', 50000),
(5,'Eva', 'Williams', 'IT', 90000),
(6,'Frank', 'Brown', 'Marketing', 65000),
(7,'Grace', 'Davis', 'Finance', 72000),
(8,'Helen', 'Taylor', 'Marketing', 75000),
(9,'Helen', 'Taylor', 'Marketing', 75000),
(10,'Helen', 'Taylor', 'Marketing', 75000);


SELECT * FROM Employees;

/* INDEXES 

1. CLUSTERED INDEX

-- If table has primary key, then clustered index is already created by PRIMARY KEY.
*/

-- view index created using : EXEC sp_helpindex 'EMPLOYEES';

-- Find out employee data whose employee is 8

/*
2. Non-Clustered Index
A non-clustered index is like a separate  mini-book  that points to rows in the clustered index.
*/

-- Improve queries filtering by Department



-- view indexes with syntax: EXEC sp_helpindex 'EMPLOYEES';

-- Find out department wise data


-- FIND COUNT OF EMPLOYEES DEPARTMENT WISE


/*
3. Filtered Index
Useful when the column has repeated values but you frequently query one slice.
CREATE NONCLUSTERED INDEX IDX_NAMET ON TABLE_NAME(COLUMN)
WHERE DEPARTMENT='VALUE';
*/



-- Find out Marketing department wise count of employees


/*
4. Composite Index (Multi-column Index)

CREATE NONCLUSTERED INDEX INDEXNAME ON TABLE(COLUMN1,COLUMN2);

Useful when you filter/sort by more than one column.
Department + Salary
*/




-- DISPLAY RECORD OF EMPLOYEE FROM FINANCE SALARY >70000;

