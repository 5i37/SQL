select  avg(unitprice) as avrgPrice, CompanyName from product,Supplier 
where product.SupplierId = Supplier.id   
group by  companyname;

select Country, count(companyname) as NumberOfComany from Supplier
group by Country 
order by NumberOfComany DESC ;


select sum(TotalAmount) as revene from "Order";

select * from "Order" 


select sum(TotalAmount) as revene from "Order";

select top 1 max(o.Quantity)as higtest , c.FirstName, c.LastName from Product p ,OrderItem o, Customer c, "Order" oo
where p.Id = ProductId and oo.Id = o.OrderId  and oo.CustomerId = c.Id
group by c.FirstName,c.LastName
order by higtest DESC; 


select top 1 p.productName, max(o.Quantity)as higtest , c.FirstName, c.LastName from Product p ,OrderItem o, Customer c, "Order" oo
where p.Id = ProductId and oo.Id = o.OrderId  and oo.CustomerId = c.Id
group by  p.ProductName,c.FirstName,c.LastName
order by higtest DESC; 