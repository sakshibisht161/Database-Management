create database storedproceduredb;

use storedproceduredb;

create table customers (id int primary key not null ,
                        name varchar(20),
                        age int not null , 
                        address varchar (30),
                        salary decimal(18, 2)
                        );
					
insert into customers value( 1, "A" , 21, "Delhi" , 20000);
insert into customers value( 2, "B" , 23, "Delhi" , 25000);
insert into customers value( 3, "C" , 25, "Noida" , 30000);
insert into customers value( 4, "D" , 27, "Noida" , 35000);
insert into customers value( 5, "E" , 29, "Delhi" , 40000);

select * from customers;

--- stored procedure without parameters ---

delimiter //
create procedure getcustomerinfo()
begin 
    select * from customers where age > 25;
end //
delimiter ;

-- call stored procedure --

call getcustomerinfo();

--- show procedure --- 

show procedure status where db = 'storedproceduredb';



--- stored procedure with parameters ---
--- stored procedure with IN parameters ---

delimiter //
create procedure getcustomerage(in input_age int )
begin 
    select * from customers where age > input_age;
end //
delimiter ;

-- call stored procedure --

call getcustomerage(23);

--- stored procedure with OUT parameters ---

delimiter // 
create procedure totalemployee( out total_salary int)
begin 
  select sum(salary) into total_salary from customers where address = "delhi";
end //
delimiter ;

-- call stored procedure --

set @total_salary = 0;
call storedproceduredb.totalemployee(@total_salary);
select @total_salary;

--- stored procedure with IN OUT parameters ---

delimiter // 
create procedure totalsalaryincreament( inout total_salary decimal(10,2))
begin 
select sum(salary) into total_salary from customers where address = "delhi";
set total_salary = ((total_salary * 10)/100);
end //
delimiter ;

-- call stored procedure --

set @total_salary = 10000;
call storedproceduredb.totalsalaryincreament(@total_salary);
select @total_salary;

