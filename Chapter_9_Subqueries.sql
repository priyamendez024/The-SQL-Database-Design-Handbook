-- Subquery in WHERE
SELECT Name FROM Customers WHERE CustomerID IN (SELECT CustomerID FROM Orders);

-- Subquery with comparison
SELECT ProductName, Price FROM Products WHERE Price > (SELECT AVG(Price) FROM Products);

-- Subquery in FROM (derived table)
SELECT CustomerID, AvgOrderValue FROM
(SELECT CustomerID, AVG(TotalAmount) AS AvgOrderValue FROM Orders GROUP BY CustomerID) AS CustomerAverages
WHERE AvgOrderValue > 100;

-- Subquery in SELECT clause
SELECT Name, (SELECT COUNT(*) FROM Orders WHERE Orders.CustomerID = Customers.CustomerID) AS OrderCount FROM Customers;

-- Correlated subquery example
SELECT OrderID, CustomerID, TotalAmount FROM Orders o1
WHERE TotalAmount > (
    SELECT AVG(TotalAmount) FROM Orders o2 WHERE o2.CustomerID = o1.CustomerID
);

-- EXISTS and NOT EXISTS examples
SELECT Name FROM Customers c WHERE EXISTS (SELECT 1 FROM Orders o WHERE o.CustomerID = c.CustomerID);
SELECT Name FROM Customers c WHERE NOT EXISTS (SELECT 1 FROM Orders o WHERE o.CustomerID = c.CustomerID);