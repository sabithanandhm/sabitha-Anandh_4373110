show databases;
create database company;
use company;
CREATE TABLE Employees (
    ID INT NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(20),
    age INT,
    UNIQUE(ID)
);
INSERT INTO Employees (ID, Email, Phone, Age)
VALUES
 (1, 'sabi@gmail.com', '8667898432', 11),
(2,'siva@gmail.com',678888888,12);
SHOW INDEXES FROM Employees;
ALTER TABLE Employees DROP INDEX Email;
select*from Employees;
DROP TABLE Employees;



