create or alter view cus as   -- creating view for customer id,name,phone
select id, firstname, phone from Customer

select * from cus


CREATE or ALTER VIEW pro as select ProductName from Product where UnitPrice <20;

select * from pro

select CONCAT(firstname,lastname) as full_name from Customer; -- using concat(x,y)