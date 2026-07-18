-- create a database

-- use the database

-- create a table emp with 3columns as id,name,email


-- insert data as per the specified table-column order


-- insert data as per your column order

-- view the records

-- insert null data in emp name

-- insert repeated id (say 2) and repeated email id 


/*
If you want to ensure,that accurate data is stored everytime,use TABLE CONSTRAINTS
TABLE CONSTRAINTS are always used to maintain accurate data insertions which help in data analysis
*/

-- create table using table constraints.
-- create department table


-- create employee table


-- observe the table structure using below command
-- EXEC sp_help employee;
-- EXEC sp_help department;


-- try to insert null data/repeated data in department table


-- try to insert <0 values for salary column in employee table


-- insert valid data for salary now.

-- try to insert repeated data for email column in employee table

-- try to insert data for dept_id that doesn't exist in departments table

-- IMPORT EXTERNAL DATA - LOAD TIPS DATASET
-- TIPS DATA ANALYSIS

-- EXPLORE THE DATA

-- 1. COUNT OF ROWS


-- 2. INFORMATION OF TABLE : EXEC SP_HELP 'TIPS_DATA';

-- 3. DISTINCT TIME, GENDER,DAY


-- DISTINCT  DINNER, LUNCH

-- 4. MAXIMUM TIP MAX


-- 5. ADD A NEW COLUMN : NETBILL = TOTAL_BILL + TIP



-- 6. GENDER WISE TOTAL BILL : USE GROUPBY


-- 7. Gender and Day wise average bill


-- 7. GENDER WISE SMOKER COUNT


-- 8. DAY WISE SIZE AVG SIZE


-- GENDER, TIME AND DAY WISE total TIPs



-- 9. SIZE WISE TOTAL BILL


-- 10. The day which fetched us highest tip
-- SATURDAY
-- 12. The time which fetched us highest bill
-- DINNER

-- 13. DISPLAY RECORD WITH HIGHEST TIP



