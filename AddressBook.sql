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
values('yash','gaikwad','nanapeth','Mumbai','Maharashtra',411028,7972393594,'abhibhavekar@gmail.com');
insert into Address_Book (first_name,last_name,Address,city,state,zip,phoneNumber,email) 
values('yogita','Bhandare','Hadapsar','Goa','Maharashtra',411028,7972393594,'abhibhavekar@gmail.com');

---UC4-Edit_contact---
Update Address_Book
set first_name='Abhi' where id = 1;
select * from Address_Book;
---UC5-Delete_Contact---
delete from Address_Book where first_name = 'yogita';
select * from Address_Book
--UC6-Retrive data from table--
select first_name,last_name,Address,city,state,zip,email from Address_Book where Address='Hadapsar';
--UC7-Understand size of address book by city or state---
select CoUNT(*) as StateCount, state from Address_Book group by state;
select count(*) as CityCount, city from Address_Book group by city;
---UC8-Retrieve entries sorted alphabetically by person name----
select * from Address_Book order by last_name;