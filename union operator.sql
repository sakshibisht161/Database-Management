create database uniondb;

use uniondb;

create table customers (customerid int primary key ,
                        customername varchar(20) not null,
                        contactname varchar(20) not null ,
                        address varchar(30) , 
                        city varchar (20),
                        postalcode varchar(20),
                        country varchar(30) 
                        );

alter table customers modify postalcode int not null ;

select * from customers;

insert into customers value(1,"A", "ABC" , "Sector16","Noida" , 201301,"India");
insert into customers value(2,"B", "BCD" , "Sector16","Noida" , 201301,"India");
insert into customers value(3,"C", "CDE" , "Sector51","Noida" , 201301,"India");

create table suppliers (supplierid int primary key ,
                        suppliername varchar(30) not null,
                        contactname varchar(20) not null ,
                        address varchar(30) , 
                        city varchar (20),
                        postalcode varchar(20),
                        country varchar(30) 
                        );
                        
insert into suppliers value( 1, "X" ,"XYZ", "Sector16","Delhi",110046,"India");
insert into suppliers value( 2, "Y" ,"YXZ", "Setor18","Chicago ",200300,"USA");
insert into suppliers value(3, "Z" ,"ZYX", "Sector19","Phoenix",200300,"USA");

select * from suppliers;

select country from customers
union 
select country from suppliers;


