create database foreignkeydb;

use foreignkeydb;

create table department (dep_id int primary key ,dep_name varchar(30));

insert into department values (101,"HR"),(102,"Sales");
insert into department values (103,"IT");

select * from department;

create table employeedetail( emp_id int primary key ,
                            emp_name varchar (30),
                            salary decimal (10,2),
                            dep_id int ,
                            foreign key (dep_id)
                            references department(dep_id)
                            );
                            
insert into employeedetail values ( 1 , "Amit" , 35000 , 101);
insert into employeedetail values ( 2 , "Riya" , 42000 , 103);
insert into employeedetail values ( 3 , "Rahul" , 50000 , 102);
insert into employeedetail values ( 4 , "neha" , 50000 , 104);

select * from employeedetail ;

select employeedetail. emp_id,emp_name , salary ,department. dep_name from employeedetail
 join department on employeedetail.dep_id = department.dep_id ;

