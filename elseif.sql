create database db;

use db;

create table studentmarks(name varchar(20) not null,
						   marks int not null ,
                           result varchar(10) 
                           );
					
insert into studentmarks(name , marks )value('F',70);

select * from studentmarks;

select name , marks , if(marks>=35,"Pass","Fail")AS result from studentmarks;

alter table studentmarks add gender varchar(20);

update studentmarks set gender = "Male" where name ='F';

-- Elseif Statement --

select name, if(marks>=35,"Pass","Fail")AS result,
if(if(marks>=35,"Pass","Fail")="Pass"
and gender ="Male","Eligible","Not Eligible")AS output 
from studentmarks;

-- if else statement --

create database dbdemo;

use dbdemo;

create table marks(studentname varchar(20),
                   marks int not null,
                   grade varchar(5)
                   );
                   
insert into marks(studentname,marks)value("F",20);


select studentname, marks, if(marks>=60 ,'A',if(marks>=45,'B',if(marks>=30,'C',"Fail"))) AS grade from marks;

select * from marks;

create table employeerecords(emp_id int auto_increment primary key,
							name varchar(20) not null,
                            age int not null ,
                            experience int not null,
                            level int not null ,
                            salary int not null 
                            );

alter table employeerecords modify level varchar(5);


ALTER TABLE employeerecords
MODIFY COLUMN salary DECIMAL(18,2);


insert into employeerecords(name ,age,experience)value('D',48,24);

select * from employeerecords;

select emp_id ,name ,age,experience ,if(experience>=20,'A',if(experience>=15,
'B',if(experience>=10,'C',if(experience>=5,'D',if(experience>=2,'E',"")))))
AS level from employeerecords;


select emp_id ,name ,age,experience ,level, if(level = 'A' ,100000 ,if(level = 'B' ,80000,
if(level = 'C' ,50000, if(level = 'D' ,30000, "10000")))) AS salary  from employeerecords;