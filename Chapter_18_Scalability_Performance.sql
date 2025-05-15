-- Example of partitioning concept (MySQL range partition)

CREATE TABLE Sales (
    SaleID INT,
    SaleDate DATE,
    Amount DECIMAL(10,2)
)
PARTITION BY RANGE (YEAR(SaleDate)) (
    PARTITION p2019 VALUES LESS THAN (2020),
    PARTITION p2020 VALUES LESS THAN (2021),
    PARTITION pmax VALUES LESS THAN MAXVALUE
);

-- Indexing example
CREATE INDEX idx_price ON Products(Price);