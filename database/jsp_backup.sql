CREATE DATABASE tutorials;
CREATE USER 'tutorials';
ALTER USER 'tutorials'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON tutorials.* TO 'backend'@'%';
FLUSH PRIVILEGES;

exit
