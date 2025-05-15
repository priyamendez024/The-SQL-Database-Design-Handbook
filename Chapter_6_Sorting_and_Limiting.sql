-- ORDER BY examples
SELECT ProductName, Price FROM Products ORDER BY Price ASC;
SELECT ProductName, Stock, Price FROM Products ORDER BY Stock DESC, Price ASC;

-- LIMIT and OFFSET
SELECT ProductName, Price FROM Products ORDER BY Price LIMIT 3;
SELECT ProductName, Price FROM Products ORDER BY Price LIMIT 2 OFFSET 2;

-- Pagination Example: Page 1
SELECT ProductName, Price FROM Products ORDER BY Price LIMIT 5 OFFSET 0;

-- Pagination Example: Page 3
SELECT ProductName, Price FROM Products ORDER BY Price LIMIT 5 OFFSET 10;