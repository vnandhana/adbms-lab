use invoice;
show tables;
insert into customer values (1,'rose villa', 'pathanamthitta', 953645892,'anjali');
insert into customer values (2,'white house', 'kollam', 85693528,'arathy');
insert into customer values (3,'rome flower', 'alappuzha', 6958245,'sona');
insert into customer values (4,'jasmin block' ,'kottayam', 758632,'nandhana');
select * from customer;
insert into product values (201,'pen', 10);
insert into product values (302,'rubber',5);
insert into product values (402,'powtch',40);
insert into product values (602,'pensil',12); 
select * from  product;
insert into invoice_master values(11,1,'2021-01-21');
insert into invoice_master values(12,2,'2022-02-25');
insert into invoice_master values(13,3,'2023-03-15');
insert into invoice_master values(14,4,'2024-04-19');
select * from invoice_master;
insert into invoice_item values(11,201,150);
insert into invoice_item values(12,302,170);
insert into invoice_item values(13,402,190);
insert into invoice_item values(14,502,200);
insert into invoice_item values(14,602,201);
select * from invoice_item;
update customer set phone_number=9856256 where cust_id=1;
select * from customer;
update customer set city='mumbai' where cust_id=2;
select * from customer;
delete from product  where p_id=602;
select * from product;




