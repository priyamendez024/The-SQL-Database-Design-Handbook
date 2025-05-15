-- Create index
CREATE INDEX idx_customer_email ON Customers(Email);

-- Drop index
DROP INDEX idx_customer_email ON Customers;

-- Example EXPLAIN usage
EXPLAIN SELECT * FROM Customers WHERE Email = 'alice@example.com';

-- EXPLAIN ANALYZE example (PostgreSQL)
EXPLAIN ANALYZE SELECT * FROM Customers WHERE Email = 'alice@example.com';