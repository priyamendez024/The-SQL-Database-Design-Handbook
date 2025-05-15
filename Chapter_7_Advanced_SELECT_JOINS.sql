-- INNER JOIN example
SELECT Customers.Name, Orders.OrderID, Orders.OrderDate
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- LEFT JOIN example
SELECT Customers.Name, Orders.OrderID, Orders.OrderDate
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- RIGHT JOIN example
SELECT Customers.Name, Orders.OrderID, Orders.OrderDate
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- FULL OUTER JOIN (PostgreSQL)
SELECT Customers.Name, Orders.OrderID, Orders.OrderDate
FROM Customers
FULL OUTER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- CROSS JOIN example
SELECT Colors.Color, Sizes.Size
FROM Colors
CROSS JOIN Sizes;

-- SELF JOIN example
SELECT e.EmployeeID, e.Name, m.Name AS ManagerName
FROM Employees e
LEFT JOIN Employees m ON e.ManagerID = m.EmployeeID;