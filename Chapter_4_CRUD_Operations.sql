-- Insert Data
INSERT INTO Customers (FullName, Email, DateOfBirth)
VALUES ('Alice Johnson', 'alice.johnson@example.com', '1985-06-12');

INSERT INTO Customers (FullName, Email)
VALUES 
('Bob Smith', 'bob.smith@example.com'),
('Carol White', 'carol.white@example.com'),
('David Brown', 'david.brown@example.com');

-- Select Data
SELECT * FROM Customers;
SELECT FullName, Email FROM Customers;
SELECT FullName, DateOfBirth FROM Customers WHERE DateOfBirth > '1990-01-01';
SELECT FullName FROM Customers ORDER BY FullName ASC;
SELECT * FROM Customers LIMIT 5;
SELECT FullName, Email FROM Customers WHERE IsActive = TRUE ORDER BY FullName LIMIT 10;

-- Update Data
UPDATE Customers SET Email = 'alice.j@example.com' WHERE FullName = 'Alice Johnson';
UPDATE Customers SET Email = 'bob.smith@example.com', IsActive = FALSE WHERE CustomerID = 2;

-- Delete Data
DELETE FROM Customers WHERE FullName = 'David Brown';