---UC1 create Address book database----
create database Address_Book;

use Address_Book;
---Create table---
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