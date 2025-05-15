-- Export MySQL database
mysqldump -u username -p database_name > backup.sql

-- Import MySQL database
mysql -u username -p database_name < backup.sql

-- Export table to CSV
SELECT * FROM Customers
INTO OUTFILE '/tmp/customers.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '
';

-- Import CSV into table
LOAD DATA INFILE '/tmp/customers.csv'
INTO TABLE Customers
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '
';