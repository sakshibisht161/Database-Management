create database organization;

use organization;

create table employee(id int auto_increment unique key ,
						empid int primary key ,
                        empname varchar(20) not null,
                        empjoiningdate varchar (12) not null ,
                        lastjoiningdate varchar(12),
                        salary int not null ,
                        empdepartment varchar(20) not null);


insert into employee (empid, empname, empjoiningdate, lastjoiningdate, salary, empdepartment) values
(110, 'Suyash', '2026-04-08', NULL,45000, 'Marketing');

select * from employee;

alter table employee add dob date;

update employee set dob = '2001-06-13' where id = 10;

select * from employee where salary > 70000;

select * from employee where salary between 30000 and 50000;

select sum(salary) AS total_salary from employee;
select max(salary) AS maximum_salary from employee;
select min(salary) AS minimum_salary from employee;
select count(*) AS emp_name from employee;
select avg(salary) AS average_salary from employee;

create database xyz_school;

use xyz_school;

create table studentdetails( id int primary key , 
                               name varchar (20) not null ,
                               gender varchar(8) not null ,
                               age int not null , 
                               marks int not null 
                               );
insert into studentdetails( id , name , gender , age , marks ) values ( 108 ,"bobby" , "male", 20, 40); 

select * from studentdetails;

alter table studentdetails add emailid varchar(30) not null ;    

update studentdetails set emailid = "bobbysingh00356@gmail.com" where id = 108;     

select name from studentdetails where marks>=75;
select * from studentdetails where marks <75;

select * from studentdetails where name like 'a%';
select * from studentdetails where name like '%a%';
select * from studentdetails where name like '%a';

select * from studentdetails order by name asc;
select * from studentdetails order by name desc;
select * from studentdetails order by marks asc;
select * from studentdetails order by marks desc;

select * from studentdetails where marks between 60 and 80 ;
select * from studentdetails where age between 17 and 18 and marks between 70 and 80 ;

select count(name) from studentdetails;
select sum(marks) from studentdetails;
select min(marks) from studentdetails;
select max(marks) from studentdetails;
select avg(marks) from studentdetails;





