---UC1 create Address book database----
create database Address_Book;

use Address_Book;
---UC2-Create table---
create table ADDRESS_BOOK
(
 Id int identity(1,1) primary key,
 first_name varchar(250),
 last_name varchar(200),
  Address varchar(200),
   city varchar(200),
    state varchar(200),
	 zip int,
	 phoneNumber bigint,
	 email varchar (250)
);
---UC3-Insert Contact-
select * from Address_Book
insert into Address_Book (first_name,last_name,Address,city,state,zip,phoneNumber,email) 
values('yogesh','chavan','khadki','Pune','Maharashtra',411028,7972393594,'abhibhavekar@gmail.com');
insert into Address_Book (first_name,last_name,Address,city,state,zip,phoneNumber,email) 
values('yash','gaikwad','nanapeth','Pune','Maharashtra',411028,7972393594,'abhibhavekar@gmail.com');
insert into Address_Book (first_name,last_name,Address,city,state,zip,phoneNumber,email) 
values('yogita','Bhandare','Hadapsar','Pune','Maharashtra',411028,7972393594,'abhibhavekar@gmail.com');

---UC4-Edit_contact---
Update ADDRESS_BOOK
set first_name='Abhi' where id = 1;
select * from Address_Book;
---UC5-Delete_Contact---
delete from ADDRESS_BOOK where first_name = 'yogita';
select * from ADDRESS_BOOK