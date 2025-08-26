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
    SELECT WorkerID, FirstName,Salary,
    CASE
        WHEN Salary < 50000 THEN 'Low Salary'
        WHEN Salary BETWEEN 50000 AND 70000 THEN 'Medium Salary'
        WHEN Salary > 70000 THEN 'High Salary'
        ELSE 'Not Defined'
    END AS Salary_Grade
FROM Worker;
SELECT FirstName, Department,Salary,
    CASE 
        WHEN Department = 'Finance' AND Salary > 70000 THEN 'Senior Finance'
        WHEN Department = 'Finance' THEN 'Junior Finance'
        WHEN Department = 'IT' AND Salary > 60000 THEN 'Senior IT'
        ELSE 'Others'
    END AS Category
FROM Worker;
