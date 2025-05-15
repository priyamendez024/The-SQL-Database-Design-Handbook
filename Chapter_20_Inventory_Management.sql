CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY AUTO_INCREMENT,
    CategoryName VARCHAR(100) NOT NULL
);

CREATE TABLE Suppliers (
    SupplierID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(150) NOT NULL,
    ContactInfo VARCHAR(255)
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(150) NOT NULL,
    Description TEXT,
    SKU VARCHAR(50) UNIQUE NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    CategoryID INT,
    CurrentStock INT DEFAULT 0,
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

CREATE TABLE InventoryTransactions (
    TransactionID INT PRIMARY KEY AUTO_INCREMENT,
    ProductID INT NOT NULL,
    SupplierID INT,
    Quantity INT NOT NULL,
    TransactionDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    TransactionType ENUM('purchase','sale','adjustment') NOT NULL,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID)
);