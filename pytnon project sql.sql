SELECT * FROM login;
select * from bills;
select * from transaction;

insert into items values
(2,'soap',20),
(3,'apple',100),
(4,'banana',40),
(5,'suger',80),
(6,'salt',20),
(7,'iron',250),
(8,'chips',20),
(9,'tea powder',60);
select * from items;
#searching bill details 
select b.bill_id,b.name,b.phone,b.bill_date,t.item_id,t.qty,i.item_name,i.price from bills b,transaction t,
items i where b.bill_id = t.bill_id AND t.item_id= i.id and b.bill_id =1;
# searching customer details;
select * from bills where name like "%anil%";
# collection between dates
select sum(t.qty*i.price)as collection from bills b,transaction t,items i 
           where b.bill_date between "2022-12-16" AND "2022-12-17" 
           and b.bill_id = t.bill_id and t.item_id = i.id;
#date wise sell 
select * from bills where bill_date between "2022-12-16" and "2022-12-17";
# find items
select * from items where id =4;
#Last bill number
select max(bill_id) as last_bill from bills;




