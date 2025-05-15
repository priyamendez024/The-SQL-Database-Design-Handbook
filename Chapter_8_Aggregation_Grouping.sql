-- Aggregation Functions
SELECT COUNT(*) AS TotalCustomers FROM Customers;
SELECT SUM(TotalAmount) AS TotalSales FROM Orders;
SELECT AVG(Price) AS AveragePrice FROM Products;
SELECT MIN(Price) AS LowestPrice FROM Products;
SELECT MAX(OrderDate) AS LatestOrder FROM Orders;

-- GROUP BY examples
SELECT CustomerID, SUM(TotalAmount) AS TotalSpent FROM Orders GROUP BY CustomerID;

-- HAVING clause example
SELECT CustomerID, SUM(TotalAmount) AS TotalSpent FROM Orders GROUP BY CustomerID HAVING SUM(TotalAmount) > 1000;

-- Practical examples
SELECT Category, COUNT(*) AS ProductCount FROM Products GROUP BY Category;
SELECT MONTH(OrderDate) AS OrderMonth, AVG(TotalAmount) AS AvgOrderValue FROM Orders GROUP BY MONTH(OrderDate);
SELECT OrderDate, SUM(TotalAmount) AS DailySales FROM Orders GROUP BY OrderDate ORDER BY DailySales DESC LIMIT 1;