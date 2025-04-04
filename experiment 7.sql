USE invoice;
SELECT * FROM customer;
DELIMITER $$
CREATE PROCEDURE list_names4(I=inout name_list varchar(4000))
begin
DECLARE is_done INTEGER DEFAULT 0 ;
DECLARE c_name VARCHAR (50)defalut"";
DECLARE cust_cursor CURSOR FOR SELECT  cust_name  FROM customer;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET is_done =1;
set name_list ='';
OPEN cust_cursor;
get_list:LOOP
FETCH cust_cursor INTO c_name;
IF is_done=1 THEN
LEAVE get_list;
END if;
if name_list='' then
SET name_list=c_name;
else
set name_list=concat(c_name,";",name_list);
end if;
END LOOP get_list;
CLOSE cust_cursor;
END $$
delimiter ; //
SET @ name_list '';
CALL list_names4(@name_list);
CALL list_names(@name_list);
SELECT  @name_list from customer;