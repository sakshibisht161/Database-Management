create database casedemo;

use casedemo;

create table productdetails(product_id int primary key , 
							product_name varchar (20) not null ,
                            price int not null ,
                            price_category varchar (20) 
                            );
                            
insert into productdetails(product_id ,product_name,price) value(5,"E" ,0);

select * from productdetails;

select product_name ,price ,
case 
when price<20 then "Low"
when price between 20 and 50 then "Medium"
when price>50 then "High"
else "None"
 END AS price_category
FROM productdetails;

alter table productdetails add payment_status varchar(20) ;

alter table productdetails add code int not null ;

update productdetails set payment_status = "Completed" where product_id =5;

select product_name ,price ,payment_status,
case 
when payment_status ="Pending" then 1 
when payment_status ="Processing" then 2
when payment_status ="Completed" then 3
 END AS payment_status
FROM productdetails;

select *,
case payment_status
when "Pending" then 1 
when "Processing" then 2
when "Completed" then 3
else 4
end as code 
from productdetails
order by code ;









