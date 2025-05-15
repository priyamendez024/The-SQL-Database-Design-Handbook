-- Filtering Rows
SELECT FullName, Email FROM Customers WHERE IsActive = TRUE;

-- Using AND, OR, NOT
SELECT * FROM Customers WHERE IsActive = TRUE AND DateOfBirth > '1990-01-01';
SELECT * FROM Customers WHERE IsActive = FALSE OR DateOfBirth < '1980-01-01';
SELECT * FROM Customers WHERE NOT IsActive = TRUE;
SELECT * FROM Customers WHERE (IsActive = TRUE AND DateOfBirth > '1990-01-01') OR Email LIKE '%example.com';

-- Pattern Matching with LIKE
SELECT FullName FROM Customers WHERE FullName LIKE 'A%';
SELECT Email FROM Customers WHERE Email LIKE '%.com';
SELECT FullName FROM Customers WHERE FullName LIKE '_____';
SELECT FullName FROM Customers WHERE FullName LIKE '%son%';

-- Practical Examples
SELECT ProductName, Price FROM Products WHERE Price >= 100 AND Price <= 1000;
SELECT * FROM Employees WHERE Department = 'Sales' OR Position = 'Manager';
SELECT FullName, Email FROM Customers WHERE NOT IsActive;
SELECT FullName, Email FROM Customers WHERE Email LIKE '%@gmail.com';