
SHOW DATABASES;
CREATE DATABASE CompanyDB;
USE CompanyDB;


CREATE TABLE Worker (
    WorkerID INT PRIMARY KEY AUTO_INCREMENT, -- Unique ID for each worker
    FirstName VARCHAR(30),                   -- Worker’s first name
    LastName VARCHAR(30),                    -- Worker’s last name
    Salary INT,                              -- Worker’s salary
    JoiningDate DATE,                        -- Worker’s joining date
    Department VARCHAR(20)                   -- Department of the worker
);

INSERT INTO Worker (FirstName, LastName, Salary, JoiningDate, Department)
VALUES 
    ('Alice', 'Johnson', 50000, '2022-05-10', 'HR'),
    ('Bob', 'Smith', 60000, '2021-03-15', 'Finance'),
    ('Charlie', 'Brown', 45000, '2023-07-20', 'IT'),
    ('Diana', 'Williams', 70000, '2020-09-01', 'IT'),
    ('Ethan', 'Clark', 80000, '2019-12-11', 'Finance');




SELECT WorkerID, FirstName, Salary, (Salary * 1.10) AS IncreasedSalary
FROM Worker;


SELECT WorkerID, FirstName, Salary, (Salary * 12) AS AnnualSalary
FROM Worker;


SELECT * FROM Worker
WHERE FirstName LIKE 'A%';


SELECT * FROM Worker
WHERE LastName LIKE '%n';


SELECT * FROM Worker
WHERE Department LIKE '%Fin%';




SELECT * FROM Worker
WHERE Salary BETWEEN 50000 AND 75000;


SELECT * FROM Worker
WHERE JoiningDate BETWEEN '2021-01-01' AND '2023-12-31';

SELECT * FROM Worker
WHERE WorkerID BETWEEN 2 AND 4;


SELECT * FROM Worker
WHERE (Department = 'Finance' AND Salary >= 60000)
   OR WorkerID = 1;


SELECT * FROM Worker
WHERE Salary BETWEEN 50000 AND 75000
   OR JoiningDate BETWEEN '2021-01-01' AND '2023-12-31'
   OR WorkerID BETWEEN 2 AND 4;


