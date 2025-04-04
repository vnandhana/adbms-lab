use invoice;
desc cusomer;
create table cust_update(cust_id int primary key auto_increment,name varchar(20),address varchar(20),city varchar(20),phone_number bigint);
delimiter//
create trigger cust_update
after update
on customer for each row
begin
insert into cust_update
set cust_id=old.cust_id,name,address=old.address,city=old,city.phone_number=old phone_number;
end
//
delimiter;
select * from customer;
update customer set address ='cb villa' where cust_name='sona' AND cust_id=3;
select * from customer;
select * from customer cust_update where cust_name='sona'; 



