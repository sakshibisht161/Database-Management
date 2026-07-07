create database company;

use company;

create table employees ( emp_id int primary key , 
						emp_name varchar (30) ,
                        department varchar (20),
                        salary decimal(10,2),
                        city varchar (20)
                        );
                         


--- stored procedure ---

delimiter //
create procedure addemployeeinfo( in emp_id int , in emp_name varchar(30) , 
                             in department varchar (20),
                             in salary decimal(10,2),
                             in city varchar (20) )
begin 
   insert into employees values ( emp_id , emp_name, department,salary , city);
end//
delimiter ;

call addemployeeinfo (101, "sreya" , "IT", 25000,"Mumbai");

select * from employees;

--- delete procedure --- 

delimiter //
create procedure deleteemployees( in id int)
begin 
   delete from employees where emp_id = id;
end//
delimiter ;

call  deleteemployees(101);

--- show data ------

delimiter //
create procedure showemployeedata()
begin 
  select * from employees ;
end//
delimiter ;

call showemployeedata();

--- Emp id through find data -----

delimiter //
create procedure getemployee(in id int)
begin 
  select * from employees where emp_id = id;
end//
delimiter ;

call getemployee(102);

--- Find Highest Salary ---

delimiter //
create procedure highestsalaryemployee()
begin 
  select max(salary) as highest_salary from employees;
end//
delimiter ;

call highestsalaryemployee();

--- Find Lowest Salary ---

delimiter //
create procedure lowestsalaryemployee()
begin 
  select max(salary) as lowest_salary from employees;
end//
delimiter ;

call lowestsalaryemployee();

--- Update Salary ---

delimiter //
create procedure UpdateSalaryEmployee()
begin 
  update employees 
  set salary = salary * 1.05 
  where department = 'IT';
end //
delimiter ;

CALL UpdateSalaryEmployee();


