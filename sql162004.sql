create database ducollege;
use ducollege;

create table studentrecord(id int primary key,
								name varchar (50),
                                age int not null ,
                                marks int not null ,
								city varchar (20)
                                );
insert into studentrecord value(101,"sumit",18,90,"delhi");
insert into studentrecord value(102,"shreya",16,70,"mumbai");
insert into studentrecord value(103,"priya",17,80,"delhi");
insert into studentrecord value(104,"ritu",19,60,"pune");


select * from studentrecord;



select name , marks from studentrecord;

alter table studentrecord add gender varchar(7);

update studentrecord set gender="male" where id=101;
update studentrecord set gender="female" where id=102;
update studentrecord set gender="female" where id=103;
update studentrecord set gender="female" where id=104;

alter table studentrecord rename column name to studentname;

select * from studentrecord where marks>=80;

select * from studentrecord where studentname like 's%';
select * from studentrecord where studentname like '%s%';

select * from studentrecord where id between 101 and 104 and age between 18 and 19 and city in("delhi","mumbai");
select * from studentrecord where studentname between "s" and "p"; 
select * from studentrecord where studentname like 's%' or studentname like 'p%'; 
alter table studentrecord add constraint check (age>=16);

select count(*) AS total_student from studentrecord;
select sum(marks) AS total_marks from studentrecord;
select avg(marks) AS average_marks from studentrecord;
select min(marks) AS minimum_marks from studentrecord;
select max(marks) AS maximum_marks from studentrecord;

create database inventory;

use inventory;

create table inventorydetails(sno int primary key,
								  itemname varchar(50),
                                  totalstockpurchase int not null ,
                                  mrpperunit varchar(10) not null,
                                  totalsalecount int not null ,
                                  totalsale varchar(10),
                                  stockavailable int
								 );
 insert into inventorydetails value(1,"laptop",10,500000,2,null ,null); 
 insert into inventorydetails value(2,"microvave",15,300000,3,null ,null); 
 insert into inventorydetails value(3,"fridge",20,700000,5,null ,null); 
 insert into inventorydetails value(4,"airconditioner",30,800000,7,null ,null); 
 insert into inventorydetails value(5,"oven",40,200000,9,null ,null); 
                      
                      
update inventorydetails set  totalsale= mrpperunit*totalstockpurchase;
update inventorydetails set stockavailable = totalstockpurchase-totalsalecount;

select * from inventorydetails;
