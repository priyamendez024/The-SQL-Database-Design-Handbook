-- Example of poor design data
-- Data duplicated in orders table

-- Normalized tables example
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    CustomerAddress VARCHAR(255)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductName VARCHAR(100),
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);