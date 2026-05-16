-- SQL Basics

-- 1. SQL SELECT

-- Select particular columns
SELECT column1, column2
FROM table_name;

-- Select all columns
SELECT *
FROM table_name;


-- 2. SQL FROM

-- FROM is used to specify the table
SELECT *
FROM table_name;


-- 3. SQL DISTINCT

-- Remove duplicate values
SELECT DISTINCT column1
FROM table_name;


-- 4. SQL WHERE

-- Filter records based on condition
SELECT *
FROM table_name
WHERE column1 > value;


-- 5. SQL AND

-- Multiple conditions using AND
SELECT *
FROM table_name
WHERE column1 = value1
AND column2 = value2;


-- 6. SQL OR

-- Multiple conditions using OR
SELECT *
FROM table_name
WHERE column1 = value1
OR column2 = value2;


-- 7. SQL BETWEEN

-- Filter values within a range
SELECT *
FROM table_name
WHERE column1 BETWEEN value1 AND value2;


-- 8. SQL IN

-- Match multiple values
SELECT *
FROM table_name
WHERE column1 IN (value1, value2, value3);


-- 9. SQL LIKE

-- Pattern matching
SELECT *
FROM table_name
WHERE column1 LIKE 'pattern%';


-- 10. LIKE with Starting Letter

-- Find values starting with specific letters
SELECT *
FROM table_name
WHERE column1 LIKE 'A%';


-- 11. LIKE with Ending Letter

-- Find values ending with specific letters
SELECT *
FROM table_name
WHERE column1 LIKE '%A';


-- 12. LIKE with Containing Letter

-- Find values containing specific letters
SELECT *
FROM table_name
WHERE column1 LIKE '%A%';


-- 13. ORDER BY ASC

-- Sort data in ascending order
SELECT *
FROM table_name
ORDER BY column1 ASC;


-- 14. ORDER BY DESC

-- Sort data in descending order
SELECT *
FROM table_name
ORDER BY column1 DESC;


-- 15. LIMIT

-- Limit number of rows returned
SELECT *
FROM table_name
LIMIT number;


-- 16. First 5 Rows

-- Select first 5 rows
SELECT *
FROM table_name
LIMIT 5;


-- 17. Last 5 Rows

-- Select last 5 rows
SELECT *
FROM table_name
ORDER BY column1 DESC
LIMIT 5;


-- 18. NOT EQUAL TO

-- Filter values not equal to condition
SELECT *
FROM table_name
WHERE column1 != value;


-- 19. Greater Than

SELECT *
FROM table_name
WHERE column1 > value;


-- 20. Less Than

SELECT *
FROM table_name
WHERE column1 < value;


-- 21. Greater Than or Equal To

SELECT *
FROM table_name
WHERE column1 >= value;


-- 22. Less Than or Equal To

SELECT *
FROM table_name
WHERE column1 <= value;
