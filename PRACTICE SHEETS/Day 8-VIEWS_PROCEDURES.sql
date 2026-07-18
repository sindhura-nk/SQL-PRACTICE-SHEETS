USE CX_180_DAY7;

-- LOAD TIPS DATASET INTO THIS DATABASE

SELECT * FROM TIPS;

-- VIEWS
/* SYNTAX

CREATE VIEW VIEW_NAME AS
SELECT COL1,COL2,COL3
FROM TABLENAME
*/

-- View are virtual tables that are created from select query results

-- CREATE VIEW

-- ALTER VIEW

-- DROP VIEW

CREATE TABLE Products (
    ProductID INT,
    ProductName VARCHAR(50),
    Category VARCHAR(50),
    Price INT
);

INSERT INTO Products VALUES
(301,'Laptop','Electronics',70000),
(302,'Mobile','Electronics',30000),
(303,'Chair','Furniture',5000),
(304,'Desk','Furniture',8000),
(305,'Headphones','Electronics',2000),
(306,'Mousepad','Accessories',1000);


CREATE TABLE Customers (
    CustomerID INT,
    CustomerName VARCHAR(50),
    City VARCHAR(50),
    Email VARCHAR(100)
);

INSERT INTO Customers VALUES
(201,'Rohit','Mumbai','rohit@gmail.com'),
(202,'Anjali','Pune','anjali@yahoo.com'),
(203,'David','Delhi','david@gmail.com'),
(204,'Meena','Bangalore','meena@gmail.com'),
(205,'Arjun','Mumbai','arjun@hotmail.com'),
(206,'Sanif','Pune','sanif@gmail.com');


CREATE TABLE Orders (
    OrderID INT ,
    CustomerID INT,
    ProductID INT,
    Quantity INT,
    OrderDate DATE);


INSERT INTO Orders VALUES
(401,201,301,1,'2023-06-10'),
(402,202,302,2,'2023-06-12'),
(403,203,305,3,'2023-07-01'),
(404,201,303,5,'2023-07-15'),
(405,204,304,1,'2023-08-01'),
(406,205,302,2,'2023-08-05'),
(407,202,305,4,'2023-09-10');

select * from Products;
select * from Customers;
select * from orders;

-- COMBINE THE TABLES SUCH THAT CUSTOMERS'S ORDERS CAN EXTRACTED IN SUCH A WAY THAT THEIR PRODUCT AND ORDER DETAILS ARE ALSO AVAILABLE
-- WOULD LIKE TO VIEW ORDERID, ORDERDATE, PRODUCTNAME, CUSTOMERNAME




-- CREATE VIEW FOR ABOVE DATA TO PERFORM ANALYSIS



-- DISPLAY ORDERS INFORMATION PLACED BY ANJALI




-- PROCEDURE  : 
/*
CREATE PROCEDURE procedure_name
AS
BEGIN
  SQL statements;
END;

*/

-- RETURN COUNT OF CUSTOMER BASED ON GENDER



-- DAY WISE COUSTOMER COUNT


-- CREATE A PROCEDURE FOR REPEATED TASKS



-- DROP PROCEDURE


-- GET COUNT OF CUSTOMER BASED ON GENDER AND DAY USING PROCEDURE
