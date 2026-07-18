USE CX_180_DAY4;

CREATE TABLE SalesData (
    ResearchDevelopment INT,
    Admin VARCHAR(10),
    State VARCHAR(10),
    Markteting INT,
    Profit INT
);

INSERT INTO SalesData (ResearchDevelopment, Admin, State, Markteting, Profit)
VALUES
(10000, 'A', 'MH', 200, 5000),
(20000, 'B', 'MH', 350, 7000),
(30000, 'A', 'DL', 250, 6500),
(40000, 'C', 'MH', 150, 4500),
(50000, 'B', 'DL', 300, 8000),
(45000, 'A', 'DL', 345, 8000),
(55000, 'B', 'MH', 310, 5000);

SELECT * FROM SalesData;

-- AGGREGATE WINDOWS FUNCTIONS
/*
 SELECT COL1,COL2,FUNCTION()
 OVER (ORDER BY COLUMN_NAME ASC/DESC) AS COLUMN_NAME/ALIAS
 FROM TABLE_NAME
 */

 -- Running Total of Profit 


-- Total Profit Per State (but keep rows separate)




-- Average Profit Per Admin


-- RANKING WINDOWS FUNCTIONS

-- RANK()


-- DENSE RANK()


/* IMPORTANT INTERVIEW QUESTIONS: 
WHAT IS THE DIFFERENCE BETWEEN RANK AND DENSE RANK
Both RANK() and DENSE_RANK() are SQL window functions used to assign a ranking to rows based on specific ordering criteria, 
but they handle ties differently.
RANK() skips subsequent rank numbers after a tie, 
while DENSE_RANK() provides consecutive ranks without skipping any numbers.
*/

-- ROW NUMBER - PROVIDES SEQUENCE/SERIES TO DATA


-- RANK PROFITS ON BASIS OF STATES

-- EXPORT THE RESULTS TO CSV FILE

 -- ADVANCED WINDOWS FUNCTIONS / VALUE FUNCTIONS :used to deal with date time functions
 
CREATE TABLE  Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email varchar(50)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
	Foreign Key(CustomerID) References Customers(CustomerID)
);


INSERT INTO Customers (CustomerID, FirstName, LastName, Email)
VALUES 
(1, 'Alice', 'Smith','alice@gmail.com'),
(2, 'Bob', 'Johnson', 'bob@gmail.com'),
(3, 'Charlie', 'Williams', 'charlie@gmail.com'),
(4, 'Diana', 'Brown', 'diana@gmail.com'),
(5, 'Evan', 'Jones', 'evan@gmail.com'),
(6, 'Fay', 'Garcia', 'fay@gmail.com'),
(7, 'George', 'Martinez', 'geaorge@gmail.com'),
(8, 'Hannah', 'Davis', 'hannah@gmail.com');

INSERT INTO Orders (OrderID, CustomerID, OrderDate)
VALUES 
(101, 1, '2024-01-10'),
(102, 1, '2024-03-15'),
(103, 2, '2024-01-20'),
(104, 3, '2024-02-25'),
(105, 3, '2024-04-05'),
(106, 4, '2024-01-30'),
(107, 4, '2024-02-10'),
(108, 5, '2024-03-01'),
(109, 6, '2024-01-05'),
(110, 6, '2024-04-10'),
(111, 1, '2024-05-01'),
(112, 2, '2024-03-20');

SELECT * FROM CUSTOMERS;
SELECT * FROM ORDERS;


-- ARRANGE ORDERS BASED ON DATE
SELECT * FROM ORDERS
ORDER BY ORDERDATE;


/* 
SYNTAX
select columnname,fun(),
over([partition by clause],
           [order by clause]);	   */

/*
LEAD() / LAG() on Orders: You'll see next and previous order dates when ordered by OrderDate.
*/



-- you can export the results too if business/client wants to look at the data

-- LAG : access data from previous row



-- WHEN DID EACH CUSTOMER PLACE THEIR FIRST/LAST ORDER 
-- FIRST_VALUE() / LAST_VALUE() with PARTITION BY CustomerID: Useful for customers with multiple orders (like CustomerID 1, 3, 4, 6).

SELECT DISTINCT CUSTOMERID, FIRST_VALUE(ORDERDATE)
OVER ( PARTITION BY CUSTOMERID
ORDER BY ORDERDATE) AS FIRST_ORDER_PLACED
FROM ORDERS;

SELECT DISTINCT(CUSTOMERID),LAST_VALUE(ORDERDATE)
OVER(PARTITION BY CUSTOMERID
ORDER BY ORDERDATE
ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS LASTORDER
FROM ORDERS;

-- NTILE(4) on SALESDATA: SALESDATA will be divided into quartiles based on PROFIT.


-- STRING FUNCTIONS UPPER,LOWER,CONCAT


-- ADD FULLNAME TO EXISTING TABLE THAT COMBINES FIRSTNAME AND LASTNAME 


-- LENGTH - NUMBER OF CHARACTERS INSIDE A STRING


-- LTRIM


-- RTRIM

-- REVERSE - TO REVERSE THE CHARACTERS INSIDE A STRING


-- REPLACE : USED TO REPLACE THE CONTENTS OF THE STRING
-- SELECT REPLACE(COLUMN_NAME,DATA,REPLACEDATA) FROM TABLE_NAME


-- SUBSTRING
-- SELECT SUBSTRING(STRING,START,LENGTH OF SUBSTRING);
