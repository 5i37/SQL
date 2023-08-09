select ordernumber, totalamount from "order"; 

select DISTINCT CustomerId from "Order" ; 

select TOP 3 * from Customer; 
select TOP 5  * from "order"; 
select  DISTINCT top 5 * from "order" where TotalAmount > 440; 
select top 5 * from "order" where TotalAmount >600;

select productname from product where UnitPrice in (18,20,22);   
