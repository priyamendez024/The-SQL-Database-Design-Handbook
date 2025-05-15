CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    ParentCategoryID INT NULL,
    FOREIGN KEY (ParentCategoryID) REFERENCES Categories(CategoryID)
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255) NOT NULL,
    Description TEXT,
    SKU VARCHAR(100) UNIQUE NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    CategoryID INT,
    Stock INT DEFAULT 0,
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Email VARCHAR(255) UNIQUE NOT NULL,
    Phone VARCHAR(20),
    CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    OrderDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    Status ENUM('Pending', 'Processing', 'Shipped', 'Completed', 'Cancelled'),
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE OrderItems (
    OrderItemID INT PRIMARY KEY AUTO_INCREMENT,
    OrderID INT,
    ProductID INT,
    Quantity INT NOT NULL,
    UnitPrice DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY AUTO_INCREMENT,
    OrderID INT,
    PaymentDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    Amount DECIMAL(10,2),
    PaymentMethod VARCHAR(50),
    Status ENUM('Pending', 'Completed', 'Failed'),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);