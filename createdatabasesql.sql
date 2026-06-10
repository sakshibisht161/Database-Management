create database college;

use college;


create table student(rollno int primary key ,
                                 name varchar (20) not null,
                                 gender varchar (1),
                                 age int not null,
                                 course varchar (20),
                                 sem varchar (10),
                                 contactno varchar (12) not null
                                 );

insert into student value (1,"aman",'m',22,"datascience","first",9988765050,"A+","Noida");
insert into student value (2,"yash",'m',24,"animation","first",8088455050,"A","Delhi");
insert into student value (3,"sakshi",'f',22,"datascience","first",9599136350,"B","Gurgoan");
insert into student value (4,"aman",'m',21,"animation","first",8978678905,"O+","Faridabad");
insert into student value (5,"sumit",'m',20,"datascience","first",7980765050,"O","Delhi");
insert into student value (6,"riya",'f',20,"datascience","first",7865435050,"A","Delhi");
insert into student value (7,"priya",'f',20,"digitalmarketing","first",8979654321,"B","Gurgoan");
insert into student value (8,"neeraj",'m',23,"datascience","first",8976543210,"O-","Ghaziabad");
insert into student value (9,"sidharth",'m',23,"datascience","first",9876543210,"B","Faridabad");
insert into student value (10,"aman",'m',20,"animation","first",8765432190,"A+","Delhi");
insert into student value (11,"kartik",'male',23,"animation","first",9087654321,"B","Ghaziabd");

update student set semester="second" where rollno=7;
update student set studentname ="arun" where rollno=4;
update student set studentname ="akhil" where rollno=10;

select * from student;

show tables;

select name from student where rollno = 2;

select * from student where rollno = 5;

select distinct name from student;

alter table student add bloodgroup varchar(50);
alter table student add address varchar(50);

alter table student drop column bloodgroup;
alter table student drop column address;

alter table student rename column sem to semester;
alter table student rename column name to studentname;
alter table student rename column contactno to mobileno;


alter table student modify gender varchar(7);


update student set gender ="male" where rollno =1;
update student set gender ="male" where rollno =2;
update student set gender ="male" where rollno =4;
update student set gender ="male" where rollno =5;
update student set gender ="male" where rollno =8;
update student set gender ="male" where rollno =9;
update student set gender ="male" where rollno =10;
update student set gender ="female" where rollno =3;
update student set gender ="female" where rollno =6;
update student set gender ="female" where rollno =7;

update student set bloodgroup = "A" where rollno=1;
update student set bloodgroup = "B" where rollno=2;
update student set bloodgroup = "A+" where rollno=3;
update student set bloodgroup = "O+" where rollno=4;
update student set bloodgroup = "O-" where rollno=5;
update student set bloodgroup = "A" where rollno=6;
update student set bloodgroup = "A+" where rollno=7;
update student set bloodgroup = "B" where rollno=8;
update student set bloodgroup = "A+" where rollno=9;
update student set bloodgroup = "A" where rollno=10;
update student set bloodgroup = "O+" where rollno=11;

update student set Address = "noida" where rollno=1;
update student set Address = "ghaziabad" where rollno=2;
update student set Address = "delhi" where rollno=3;
update student set Address = "gurgoan" where rollno=4;
update student set Address = "faridabad" where rollno=5;
update student set Address = "delhi" where rollno=6;
update student set Address = "delhi" where rollno=7;
update student set Address = "noida" where rollno=8;
update student set Address = "gurgoan" where rollno=9;
update student set Address = "noida" where rollno=10;
update student set Address = "delhi" where rollno=11;

delete from student where rollno = 4 ;
delete from student where rollno = 10 ;


delete from student where address = "delhi";
delete from student where address = "faridabad";

delete from student;

select * from student order by studentname asc;
select * from student order by studentname desc;


select * from student order by studentname desc,rollno asc;

select * from student where age>22;
select * from student where age<22;
select * from student where age>=22;
select * from student where age<=22;
select * from student where age=22;
select * from student where age<>22;

select * from student where age>21 and semester="first";
select * from student where age>21 or semester="second";

select * from student where studentname like 'A%';
select * from student where studentname like '%A';
select * from student where studentname like '%A%';
select * from student where studentname like '%AN%';

select * from student where studentname like '_R%';
select * from student where studentname like '%HI';
select * from student where studentname like 'A%N';
select * from student where studentname like '_A%';
select * from student where studentname like '%I';
select * from student where studentname like '_I%';
select * from student where studentname like '%A_';
select * from student where mobileno like '%0';
select * from student where gender like 'M%';
select * from student where mobileno like '%99%';
select * from student where mobileno like '%9';
select * from student where mobileno like '9%';
select * from student where studentname like 'A%' and gender like'M%'and mobileno like '%99%' ;
select * from student where studentname like '%A%' and gender like'M%'and mobileno like '9%' ;
select * from student where studentname like 'A%' and gender like'M%'and mobileno like '%9' ;

select * from student where address = "noida" or address = "delhi" or address = "gurgoan" or address = "faridabad";

select * from student where address in ("delhi","noida","ghaziabad");

select * from student where address not in ("delhi","noida","ghaziabad");

select* from student where rollno between 4 and 10;
select* from student where rollno between 3 and 6;
select* from student where age between 20 and 22;
select* from student where age not between 20 and 22;
select* from student where studentname not between "aman" and "sakshi";


select * from student where rollno between 6 and 8 and age between 20 and 22 and address in ("delhi","noida");

select * from student where studentname between "a" and "s";

select * from student where studentname like 'a%' or studentname like 'r%';

alter table student add joiningdate date ;
alter table student add passingdate date ;

update student set joiningdate = '2025-02-12' where rollno = 1;
update student set joiningdate = '2025-02-13' where rollno = 2;
update student set joiningdate = '2025-02-14' where rollno = 3;
update student set joiningdate = '2025-02-15' where rollno = 4;
update student set joiningdate = '2025-02-16' where rollno = 5;
update student set joiningdate = '2025-02-17' where rollno = 6;
update student set joiningdate = '2025-02-18' where rollno = 7;
update student set joiningdate = '2025-02-19' where rollno = 8;
update student set joiningdate = '2025-02-20' where rollno = 9;
update student set joiningdate = '2025-02-21' where rollno = 10;
update student set joiningdate = '2025-02-22' where rollno = 11;


update student set passingdate = '2026-02-12' where rollno = 1;
update student set passingdate = '2026-02-12' where rollno = 2;
update student set passingdate = '2026-02-12' where rollno = 3;
update student set passingdate = '2026-02-12' where rollno = 4;
update student set passingdate = '2026-02-12' where rollno = 5;
update student set passingdate = '2026-02-12' where rollno = 6;
update student set passingdate = '2026-02-12' where rollno = 7;
update student set passingdate = '2026-02-12' where rollno = 8;
update student set passingdate = '2026-02-12' where rollno = 9;
update student set passingdate = '2026-02-12' where rollno = 10;
update student set passingdate = '2026-02-12' where rollno = 11;

select * from student where joiningdate between '2025-02-12' and '2025-02-18' ;

select * from student where passingdate between '2026-02-12' and '2026-02-18' ;

alter table student add sttatus varchar (10)  default ('active');

alter Table student add constraint unique_name unique (studentname);

 ALTER TABLE student DROP COLUMN status;
 
 alter table student drop constraint unique_name;
 
 alter table student add constraint check (age >=20);
update student set age = 16 where rollno=11;
 
 alter table student add constraint check (age >=18 and age <26 ); 
 alter table student drop constraint check_age;

alter table student modify rollno int auto_increment;
insert into student value ("mohit",'male',24,"animation","first",9087654321,"A","Ghaziabd",'2025-06-14','2026-05-17',active );
 
delete from student where rollno = 9 ;
delete from student where rollno = 10;
delete from student where rollno = 11 ;

-- AGGREGATE FUNCTION --

alter table student add maximummarks int  default(100) ;
alter table student add marks int not null ;

select count(*) AS total_student from student;

update student set marks = 85 where rollno = 8;

select sum(marks) AS total_marks from student;
select sum(maximummarks) AS total_maximummarks from student;

select count(studentname) AS total_studentname from student;

select avg(marks) AS Average_marks from student;

select min(marks) AS minimum_marks from student;
select max(marks) AS maximum_marks from student;

create database joindbdemo;

use joindbdemo;

create table students(rollno int primary key ,
                        name varchar(20),
                        age int not null,
                        address varchar (30)
                        );
                        
create table studentscourse( course_id int primary key ,
                                      rollno int not null 
                                      );
                                      
insert into students value ( 5 , "chirag" , 18 , "noida");

select * from students;

insert into studentscourse value (6 , 7);

select * from studentscourse;

select studentscourse .course_id , students .name , students.age 
from 
students inner join studentscourse
on 
students . rollno = studentscourse . rollno;

select studentscourse .course_id , students .name , students.age 
from 
students left join studentscourse
on 
students . rollno = studentscourse . rollno;

select studentscourse .course_id , students .name , students.age 
from 
students right join studentscourse
on 
students . rollno = studentscourse . rollno;


select studentscourse .course_id , students .name , students.age , students.address
from 
students left join  studentscourse
on 
students . rollno = studentscourse . rollno

union 

select studentscourse .course_id , students .name , students.age , students.address
from 
students right join  studentscourse
on 
students . rollno = studentscourse . rollno;



                 
                 
                 
                 
                 