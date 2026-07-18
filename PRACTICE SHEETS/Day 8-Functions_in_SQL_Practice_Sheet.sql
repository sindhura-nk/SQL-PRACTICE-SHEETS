USE CX_180_DAY7;

CREATE TABLE EmployeeDATA (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    Salary DECIMAL(10,2),
    Bonus DECIMAL(10,2),
    Department VARCHAR(50),
    NetSalary DECIMAL(10,2)
);


INSERT INTO EmployeeDATA (EmpID, EmpName, Salary, Bonus, Department,NetSalary)
VALUES
(1, 'Amit', 50000, 5000, 'IT',NULL),
(2, 'Sneha', 60000, 7000, 'HR',NULL),
(3, 'Raj', 45000, 4000, 'Finance',NULL),
(4,'KIRAN',50000,5000,'BANKING',55000);

SELECT * FROM EmployeeDATA;

/* SCALAR FUNCTION
Syntax :
CREATE FUNCTION dbo.FunctionName
(
    @value1 INT,
    @value2 INT
)
RETURNS INT
AS
BEGIN
    DECLARE @result INT;
    SET @result = @value1 + @value2;
    RETURN @result;
END;
*/


-- TO CALL A FUNCTION --> SELECT DBO.FUNCTIONNAME(PARAMETERS);


-- UPDATE THIS INFORMATION IN THE TABLE


-- Table-Valued Function
/* Syntax


CREATE FUNCTION dbo.FunctionName (@value INT)
RETURNS TABLE
AS
RETURN
(
    SELECT *
    FROM table_name
    WHERE column_name > @value
);

*/

-- HIGH SALARIED EMPLOYEES



-- CALCULATE NET SALARY DEPARTMENT WISE 
