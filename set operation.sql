select cust_id as all_id from customer union select p_id from product;
select p_id,pname,price +5 from product;
select * from customer where phone_number is null and city='kottayam';
select pname from product where p_id in(select p_id from invoice_item where quantity=150);
select * from invoice_products;
