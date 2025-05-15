CREATE USER 'app_user'@'localhost' IDENTIFIED BY 'strong_password';
CREATE ROLE 'read_only';
GRANT SELECT ON mydb.* TO 'read_only';
GRANT 'read_only' TO 'app_user';

GRANT SELECT, INSERT ON mydb.Customers TO 'app_user'@'localhost';
REVOKE INSERT ON mydb.Customers FROM 'app_user'@'localhost';