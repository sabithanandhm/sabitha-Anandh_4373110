show databases;
CREATE DATABASE SchoolDB;
USE SchoolDB;
CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50),
    Credits INT
);
CREATE TABLE Student (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(25),
    LastName VARCHAR(25),
    CourseID INT,
    AdmissionDate DATE,
FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
ON DELETE CASCADE
ON UPDATE CASCADE
);
INSERT INTO Course (CourseID, CourseName, Credits)
VALUES (101, 'Computer Science', 4),
       (102, 'Mathematics', 3),
       (103, 'Physics', 4);
INSERT INTO Student (FirstName, LastName, CourseID, AdmissionDate)
VALUES ('Alice', 'Johnson', 101, '2023-08-01'),
       ('Bob', 'Smith', 102, '2023-07-15'),
       ('Charlie', 'Brown', 103, '2023-09-10'),
       ('Diana', 'Williams', 101, '2023-06-20');       
SELECT * FROM Student;
SELECT * FROM Student WHERE CourseID = 101;
SELECT AdmissionDate AS Enrollment FROM Student;
SELECT * FROM Student WHERE LastName LIKE 'B%';
CREATE VIEW HighCreditCount AS SELECT * FROM Course WHERE Credits >= 4;
select * from HighCreditCount ;





