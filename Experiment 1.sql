  create database INVOICE;
  use INVOICE;
  show databases;
create table student(id int primary key auto_increment,name varchar(20),age int,city varchar(30));
desc student; 
alter table student add Dob date;
desc student;
alter table student modify Dob year;
alter table student drop city;
desc student;
create table CUSTOMER(cust_id int primary key auto_increment,address varchar(25),city varchar(30),phone_number int);
desc CUSTOMER;
create table Product(p_id int  primary key auto_increment,pname varchar(18),price int default'0');
desc product;
create table invoice_master (inv_id int primary key auto_increment,cust_id int,constraint cust_id foreign key (cust_id) references CUSTOMER(cust_id),inv_date date);
desc invoice_master;
alter table CUSTOMER add cust_name varchar(23);
desc CUSTOMER;
create table invoice_item(inv_id int ,constraint inv_id foreign key(inv_id) references invoice_master(inv_id),p_id int,constraint p_id foreign key(p_id) references Product(p_id));
alter table invoice_item add quantity int;
desc invoice_item;
truncate table student;
show tables;