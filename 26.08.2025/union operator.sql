SHOW DATABASES;
CREATE DATABASE CompanyDB;
USE CompanyDB;


CREATE TABLE Worker (
    WorkerID INT PRIMARY KEY AUTO_INCREMENT, 
    FirstName VARCHAR(30),                 
    LastName VARCHAR(30),                    
    Salary INT,                            
    JoiningDate DATE,                        
    Department VARCHAR(20)                   
);

INSERT INTO Worker (FirstName, LastName, Salary, JoiningDate, Department)
VALUES 
    ('Alice', 'Johnson', 50000, '2022-05-10', 'HR'),
    ('Bob', 'Smith', 60000, '2021-03-15', 'Finance'),
    ('Charlie', 'Brown', 45000, '2023-07-20', 'IT'),
    ('Diana', 'Williams', 70000, '2020-09-01', 'IT'),
    ('Ethan', 'Clark', 80000, '2019-12-11', 'Finance'); 
    SELECT FirstName, LastName, Department
FROM Worker
WHERE Department = 'HR'

UNION

SELECT FirstName, LastName, Department
FROM Worker
WHERE Department = 'IT';
SELECT Department FROM Worker
UNION ALL
SELECT Department FROM Worker;
