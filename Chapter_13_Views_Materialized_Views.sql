CREATE VIEW CustomerSummary AS
SELECT CustomerID, FullName, Email
FROM Customers
WHERE IsActive = TRUE;

-- Materialized View (PostgreSQL)
CREATE MATERIALIZED VIEW sales_summary AS
SELECT ProductID, SUM(Quantity) AS TotalSold
FROM Orders
GROUP BY ProductID;

REFRESH MATERIALIZED VIEW sales_summary;