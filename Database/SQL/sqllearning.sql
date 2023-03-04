-- The SELECT statement is used to select data from a database.

SELECT column1, column2, ...
FROM table_name;

-- The SELECT DISTINCT statement is used to return only distinct (different) values.

SELECT DISTINCT column1, column2, ...
FROM table_name;

-- The following SQL statement lists the number of different (distinct) customer countries:

SELECT COUNT(DISTINCT Country) FROM Customers; 

-- The WHERE clause is used to filter records.

SELECT column1, column2, ...
FROM table_name
WHERE condition;

SELECT * FROM Customers
WHERE Country='Mexico';

-- =	Equal	
-- >	Greater than	
-- <	Less than	
-- >=	Greater than or equal	
-- <=	Less than or equal	
-- <>	Not equal. Note: In some versions of SQL this operator may be written as !=	
-- BETWEEN	Between a certain range	
-- LIKE	Search for a pattern	
-- IN	To specify multiple possible values for a column


-- <The SQL AND, OR and NOT Operators

-- The WHERE clause can be combined with AND, OR, and NOT operators.

 SELECT * FROM Customers
WHERE Country='Germany' AND City='Berlin';

SELECT * FROM Customers
WHERE City='Berlin' OR City='München';

SELECT * FROM Customers
WHERE NOT Country='Germany'; 

-- Combining AND, OR and NOT

SELECT * FROM Customers
WHERE Country='Germany' AND (City='Berlin' OR City='München');

SELECT * FROM Customers
WHERE NOT Country='Germany' AND NOT Country='USA';

-- The SQL ORDER BY Keyword

<!-- SELECT column1, column2, ...
FROM table_name
ORDER BY column1, column2, ... ASC|DESC; -->

-- The following SQL statement selects all customers from the "Customers" table, sorted by the "Country" and the "CustomerName" column. This means that it orders by Country, but if some rows have the same Country, it orders them by CustomerName:
SELECT * FROM Customers
ORDER BY Country, CustomerName;

-- The following SQL statement selects all customers from the "Customers" table, sorted ascending by the "Country" and descending by the "CustomerName" column:
SELECT * FROM Customers
ORDER BY Country ASC, CustomerName DESC;


-- The SQL INSERT INTO Statement

INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);

-- Is null and isnot null

SELECT column_names
FROM table_name
WHERE column_name IS NULL;


--the update statement 

UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;

UPDATE Customers
SET ContactName = 'Alfred Schmidt', City= 'Frankfurt'
WHERE CustomerID = 1;

--The SQL DELETE Statement
DELETE FROM table_name WHERE condition;

DELETE FROM Customers WHERE CustomerName='Alfreds Futterkiste';

-- The SQL 'SELECT TOP' Clause
-- The 'SELECT TOP' clause is used to specify the number of records to return.

-- The 'SELECT TOP' clause is useful on large tables with thousands of records.
-- Returning a large number of records can impact performance.

-- Note: Not all database systems support the 'SELECT TOP' clause. MySQL supports the 'LIMIT' clause
--  to select a limited number of records, while Oracle uses FETCH FIRST n ROWS ONLY and ROWNUM.

MySQL Syntax:

SELECT column_name(s)
FROM table_name
WHERE condition
LIMIT number;

SELECT * FROM Customers
LIMIT 3;


Oracle 12 Syntax:

SELECT column_name(s)
FROM table_name
ORDER BY column_name(s)
FETCH FIRST 100 ROWS ONLY;

SELECT * FROM Customers
FETCH FIRST 3 ROWS ONLY;



-- functionns in SQL
min
max
count
avg
sum

SELECT 'function'(column_name)
FROM table_name
WHERE condition;


/*
The SQL LIKE Operator
The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.

There are two wildcards often used in conjunction with the LIKE operator:

 The percent sign (%) represents zero, one, or multiple characters
 The underscore sign (_) represents one, single character
*/
--The following SQL statement selects all customers with a CustomerName starting with "a":

SELECT * FROM Customers
WHERE CustomerName LIKE 'a%';

--ending with a
SELECT * FROM Customers
WHERE CustomerName LIKE '%a';

-- a in any position
SELECT * FROM Customers
WHERE CustomerName LIKE '%a%';

/*The following SQL statement selects all customers with 
a CustomerName that have "r" in the second position:*/
SELECT * FROM Customers
WHERE CustomerName LIKE '_r%';

--start with 'a' anmd are at least 3 chatacter
SELECT * FROM Customers
WHERE CustomerName LIKE 'a__%';

/*
%	Represents zero or more characters	bl% finds bl, black, blue, and blob
_	Represents a single character	h_t finds hot, hat, and hit
[]	Represents any single character within the brackets	h[oa]t finds hot and hat, but not hit
^	Represents any character not in the brackets	h[^oa]t finds hit, but not hot and hat
-	Represents any single character within the specified range	c[a-b]t finds cat and cbt
*/

