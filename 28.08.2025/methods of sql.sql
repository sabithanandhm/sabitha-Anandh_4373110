
CREATE DATABASE ORG123;
SHOW DATABASES;
USE ORG123;

CREATE TABLE Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY INT(15),
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(25)
);

INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
		(002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
		(003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
		(004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'),
		(005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),
		(006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
		(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
		(008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');

select salary, sum(salary) from
worker group by salary
order by salary asc;
select department ,sum(salary) from
worker group by department
order by  department asc;
select joiningdate ,avg(salary) from
worker group by joiningdate
order  by joiningdate asc;
select firstname ,avg(salary) from
worker group by firstname
order by  firstname desc;
select count(*) from worker where department not in('HR','Admin');
select DEPARTMENT, MAX(salary) FROM
worker group bY DEPARTMENT
order by DEPARTMENT ASC;
select *from department;
 select UPPER(FIRST_NAME) from worker;
 select lower(FIRST_NAME) FROM worker;
 select substring(FIRST_NAME, 1,4) FROM worker;
 select INSTR(FIRST_NAME,'m') as INDEX_OF_A FROM worker;
 select replace(FIRST_NAME,'m','M') FROM worker;
 select concat(FIRST_NAME, ' ' ,LAST_NAME) FROM WORKER;
 select* from worker 
 order by salary desc
 limit 3 offset 5;
select* from worker order by salary desc;