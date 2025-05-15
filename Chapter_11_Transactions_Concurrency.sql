BEGIN;

UPDATE Accounts SET Balance = Balance - 100 WHERE AccountID = 1;
UPDATE Accounts SET Balance = Balance + 100 WHERE AccountID = 2;

COMMIT;

ROLLBACK;

-- Set isolation level example
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;