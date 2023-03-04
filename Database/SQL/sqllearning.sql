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


<h3>The SQL INSERT INTO Statement<h3>