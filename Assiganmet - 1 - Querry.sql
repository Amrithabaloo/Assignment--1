CREATE DATABASE ORG;
USE ORG;
CREATE TABLE Worker (
WORKER_ID INT not NULL PRIMARY KEY AUTO_INCREMENT,
FIRST_NAME CHAR(25), LAST_NAME CHAR(25), SALARY INT(15),
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
     
     ----Question :1
        Select First_name AS WORKER_NAME FROM Worker;
        
        ----Question :2
        Select Distinct Department from Worker;
        
      ------question:4
        Select Distinct Department from Worker;
	    select Distinct Department,
        length (Department) AS LENGTH
        From Worker;
    
    ------ Question :5
    Select Department, FIRST_NAME from worker
    order by Department desc,
    fIRST_NAME asc;
    
    -----question:6
    Select Department AS Admin from worker;
        
	----question:7
    Select Salary, First_name from worker
    where Salary between 100000 and 500000;
    
    ---question:10
    Select * from Worker
    where Joining_date ='2014-02-01';
   
   ---question:8
    Select first_name , Salary from Worker
    where Salary >= 50000  and salary <= 100000;       
    
    ---- question:9
    Select* from Worker
    where worker_id % 2=0;
    
    ---- question:3
    Select left(first_name ,3 )  AS worker_name_new from worker;
        
      
        