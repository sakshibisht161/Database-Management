create database sales;

use sales;

create table purchasing (customer_id int primary key not null,
                         payment int not null ,
                         mode varchar(10) not null ,
                         paymentdate date 
                         );
                         
insert into purchasing value( 1, 500 , "creditcard" ,'2026-04-20');
insert into purchasing value( 2, 200 , "cash" ,'2026-05-02');
insert into purchasing value( 3, 50 , "cash" ,'2026-06-01');
insert into purchasing value( 4, 400 , "creditcard" ,'2026-06-03');
insert into purchasing value( 5, 300 , "debitcard" ,'2026-06-09');
insert into purchasing value( 6, 100 , "cash" ,'2026-06-09');
insert into purchasing value( 7, 800 , "cash" ,'2026-06-09');
insert into purchasing value( 8, 300 , "credtcard" ,'2026-06-09');
insert into purchasing value( 9, 400 , "creditcard" ,'2026-06-09');
insert into purchasing value( 10, 300 , "creditcard" ,'2026-06-09');




select * from purchasing;

select mode ,sum(payment) AS total_payment 
from purchasing group by mode 
order by 
total_payment ASC;

select mode ,sum(payment) from purchasing
group by mode;

-- HAVING-CLAUSE---

select mode ,count(mode) AS modecount ,sum(payment) AS total
from purchasing group by mode order by total;

select mode ,count(mode),sum(payment) AS total
from purchasing group by mode
having count(mode) > 2 and count(mode) <= 4
order by total;





