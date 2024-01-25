-- File: init.sql
CREATE USER 'healthcheck_user'@'%' IDENTIFIED BY 'healthcheck_password';
GRANT SELECT ON *.* TO 'healthcheck_user'@'%';
