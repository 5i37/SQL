select firstname from customer order by firstname desc  --DESC (from z-a)

select firstname from customer order by firstname ASC ; --ASC(from a-z)   

select firstname from customer order by firstname --by defult will be ASC

select count(CustomerId) from "order" where CustomerId = 2; 

select count(CustomerId) as TotalOfOrder,Customer.FirstName from "order",Customer 
where "Order".CustomerId = Customer.Id group by FirstName;


select count(CustomerId) as TotalOfOrder,Customer.FirstName from "order",Customer 
where "Order".CustomerId = Customer.Id and "Order".orderdate <'01.01.2013'
group by FirstName 
Order by firstname DESC; 

select count(CustomerId) as TotalOfOrder,Customer.FirstName from "order",Customer 
where "Order".CustomerId = Customer.Id and "Order".orderdate <'01.01.2013'
group by FirstName 
HAVING count(CustomerId)>5
Order by firstname DESC;


select count(CustomerId) as TotalOfOrder,c.FirstName from "order" o ,Customer c --using shortcut o/c
where o.CustomerId = c.Id and o.orderdate <'01.01.2013'

group by FirstName
HAVING count(CustomerId)>5
Order by firstname DESC;

--selecting the highest total spending from customer (first,last)name
select  top 1 max(TotalAmount)  as TotalOfSpend,c.FirstName, LastName from "order" o ,Customer c--using shortcut o/c
group by FirstName, LastName; 

