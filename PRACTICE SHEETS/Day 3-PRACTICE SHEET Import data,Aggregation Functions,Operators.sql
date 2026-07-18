-- create database 
create database cx_180_day3;

-- activate the database
use cx_180_day3;

-- view the tables


-- total number of rows in my table - count()


-- total number of rows for state column


-- display the minimum profit from the startups data - min()


-- display the maximum profit from the startups data - max()


-- view min and max profits 


-- display cumulative total


-- view the average profit startups are making


-- view the standard deviation for profit column
select STDEV(profit) as std from startups;

/*
p1 = 150000
p2 = 100000
p3 = 120000
avg = 105000
st_dev -> by what value is p1,p2,p3 differing/deviating from avg
st_dev : 50000

Scenarios:

1.1. display startups information that belong to new york state
1.2. display startups information which are providing profit more than 185000
2. display startups information that belong to california state and have profit more than 100000
3. display the number of startups from above scenario1. 
4. display startups that belong to california or florida state and have invested 
<1500000 in marketting (try 2 codes: 1->logical or, 2->IN operator)
*/

-- what are the unique states present in startups


-- let us understand how many states are there in startups


-- 1.1. display startups information that belong to new york state




-- 1.2. display startups information which are providing profit more than 185000



-- display startups whose profit is more than 120000 and belongs to california state


-- how many such startups are there?


-- 4. display startups that belong to california or florida state and 
-- have invested <150000 in marketting (try 2 codes: 1->logical or, 2->IN operator)


-- membership operator- IN(multiple ORconditions)


-- fetch the data that doesnt belong to california or florida


-- fetch startups data that belong to a state whose name starts from c


-- fetch startups data that belongs to a state whose name ends with 'da'


-- fetch startups data that belongs to a state name ending with 'a'


-- fetch startups data that belongs to a state name whose second character is 'a'


-- fetch startups data whose state name ends with 'york'


-- . calculate total expense for every startup(try + operator)

-- from above output, display state information also


-- 8. calculate a new column where we can save total expenses


-- update the total expenses with rnd+mkt+admin


-- 10. arrange records in order using order by clause
/*
ascending order: 
numbers : smallest to largest numbers
text data: alphabetical order a-z
descending order: 
numbers :  largest to smallest numbers
text data: reverse alphabetical order z-a
*/



-- 11. display top 5 startups based on profit


-- 12.  display bottom 3 startups based on profit


