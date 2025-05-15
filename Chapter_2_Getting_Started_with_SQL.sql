-- Create Sample Database and Table
CREATE DATABASE SampleDB;
USE SampleDB;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Position VARCHAR(50)
);

-- Insert Sample Data
INSERT INTO Employees (EmployeeID, FirstName, LastName, Position) VALUES
(1, 'John', 'Doe', 'Developer'),
(2, 'Jane', 'Smith', 'Manager'),
(3, 'Sam', 'Brown', 'Designer');

-- Query Data
SELECT * FROM Employees;