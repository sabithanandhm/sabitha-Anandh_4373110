
 CREATE DATABASE SchoolDB;
USE SchoolDB;


CREATE TABLE Student (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(30),
    LastName VARCHAR(30),
    DateOfBirth DATE,
    Gender CHAR(1),
    ClassID INT
);


CREATE TABLE Class (
    ClassID INT PRIMARY KEY AUTO_INCREMENT,
    ClassName VARCHAR(50),
    Section CHAR(1)
);


CREATE TABLE Teacher (
    TeacherID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(30),
    LastName VARCHAR(30),
    Subject VARCHAR(30)
);


CREATE TABLE SubjectAllocation (
    AllocationID INT PRIMARY KEY AUTO_INCREMENT,
    TeacherID INT,
    ClassID INT,
    FOREIGN KEY (TeacherID) REFERENCES Teacher(TeacherID) ON DELETE CASCADE,
    FOREIGN KEY (ClassID) REFERENCES Class(ClassID) ON DELETE CASCADE
);

INSERT INTO Class (ClassName, Section) VALUES
('10th Grade', 'A'),
('10th Grade', 'B'),
('11th Grade', 'A'),
('12th Grade', 'C');


INSERT INTO Teacher (FirstName, LastName, Subject) VALUES
('Ravi', 'Sharma', 'Maths'),
('Anita', 'Verma', 'Physics'),
('Sunil', 'Kumar', 'Chemistry'),
('Meena', 'Rajput', 'English');


INSERT INTO Student (FirstName, LastName, DateOfBirth, Gender, ClassID) VALUES
('Aman', 'Gupta', '2006-04-12', 'M', 1),
('Neha', 'Singh', '2007-05-18', 'F', 2),
('Rahul', 'Yadav', '2005-11-20', 'M', 3),
('Priya', 'Sharma', '2004-07-22', 'F', 4);

INSERT INTO SubjectAllocation (TeacherID, ClassID) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 3),
(1, 4);
SELECT S.FirstName, S.LastName, C.ClassName, C.Section
FROM Student S
JOIN Class C ON S.ClassID = C.ClassID;
SELECT T.FirstName, T.LastName, T.Subject, C.ClassName, C.Section
FROM Teacher T
inner JOIN SubjectAllocation SA ON T.TeacherID = SA.TeacherID
 inner JOIN Class C ON SA.ClassID = C.ClassID
WHERE C.ClassName = '10th Grade' AND C.Section = 'A';



SELECT S.FirstName AS Student, C.ClassName, T.FirstName AS Teacher, T.Subject
FROM Student S
JOIN Class C ON S.ClassID = C.ClassID
JOIN SubjectAllocation SA ON C.ClassID = SA.ClassID
JOIN Teacher T ON SA.TeacherID = T.TeacherID;
SELECT C.ClassName, C.Section, COUNT(S.StudentID) AS Total_Students
FROM Class C
LEFT JOIN Student S ON C.ClassID = S.ClassID
GROUP BY C.ClassName, C.Section;
SELECT C.ClassName, C.Section, COUNT(S.StudentID) AS Total_Students
FROM Class C
right JOIN Student S ON C.ClassID = S.ClassID
GROUP BY C.ClassName, C.Section;

SELECT S.FirstName AS Student, T.FirstName AS Teacher
FROM Student S
CROSS JOIN Teacher T;












