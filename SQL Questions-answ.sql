/*1. Retrieve all columns from the "Customers" table:*/
--write your query here (3 points)

select * from Customers;


/*2. Retrieve the "ProductName" column from the "Products" table:*/
--write your query here (3 points)
select ProductName from Products;

/*3. Retrieve the "OrderID" and "OrderDate" columns from the "Orders" table,
ordered by "OrderDate" in descending order:*/
--write your query here (3 points)
select OrderID, OrderDate from Orders
order by OrderDate DESC  ; 

/*4. Retrieve the "CompanyName" column from the "Suppliers" table, 
where the "Country" is "USA":*/
--write your query here (3 points)
select CompanyName from Suppliers
where Country = 'USA'

/*5. Retrieve the "CategoryName" column from the "Categories" table, 
ordered by "CategoryName" in alphabetical order:*/
--write your query here (3 points)
select CategoryName from Categories
order by  CategoryName; 


/*6. Retrieve the "CompanyName" and "ShipCity" columns from the "Shippers" table, joining it with the Orders
table to obtain the Shipper's city for each order*/
--write your query here (3 points)
select CompanyName, ShipCity  from Shippers,Orders
where Shippers.ShipperID = Orders.ShipVia
group by CompanyName, ShipCity 
 

/*7. Retrieve the "FirstName" and "LastName" columns from the "Employees" table, 
where the "Country" is not "USA":*/
--write your query here (3 points)
select FirstName,LastName from Employees 
where Country != 'USA'

/*8. Retrieve the "CustomerID" and "CompanyName" columns from the "Customers" table, 
where the "City" is either "London" or "Paris":*/
--write your query here (3 points)
select CustomerID,CompanyName from Customers 
where city = 'London'or city = 'Paris'

/*9. Retrieve the "OrderID" and "ProductName" columns from the "Order Details" table, 
where the "Quantity" is greater than 10:*/
--write your query here (3 points)
select OrderID, ProductName  from [Order Details],Products
where Products.ProductID = [Order Details].ProductID and Quantity >10
group by OrderID, ProductName

/*10. Retrieve the "EmployeeID" and "Title" columns from the "Employees" table, 
where the "Title" contains the word "Manager":*/
--write your query here (3 points)
select EmployeeID,Title from Employees 
where Title like '%Manager%'


/*11. Retrieve the "SupplierID" and "CompanyName" columns from the "Suppliers" table, 
where the "CompanyName" starts with the letter "A":*/
--write your query here (6 points)
select SupplierID,CompanyName from Suppliers 
where CompanyName like 'A%'


/*12. Retrieve the "ProductID" and "UnitPrice" columns from the "Products" table, 
where the "UnitPrice" is between 10 and 20:*/
--write your query here (6 points)
select ProductID,UnitPrice from Products 
where UnitPrice between 10 and 20



/*13. Retrieve the "ShipCountry" and the count of orders shipped to each country from the "Orders" table, 
grouped by "ShipCountry":*/
--write your query here (6 points)
select ShipCountry, count(OrderID) as count_of_orders_shipped from Orders 
group by ShipCountry


/*14. Retrieve the "CustomerID" and the sum of "Quantity" from the "Order Details" table, grouped by "CustomerID", 
ordered by the sum in descending order:*/
--write your query here (6 points)
select CustomerID,sum(Quantity) as sum_of_Quantity from Orders,[Order Details]
where Orders.OrderID = [Order Details].OrderID
group by CustomerID,Quantity
order by sum_of_Quantity DESC


/*15. Retrieve the "ProductName" and the average of "UnitPrice" from the "Products" table, grouped by "ProductName", 
ordered by the average in descending order:*/
--write your query here (6 points)
select ProductName,AVG(UnitPrice) as sum_of_UnitPrice from Products
group by ProductName
order by sum_of_UnitPrice DESC

/*16. Retrieve the "OrderID" and "OrderDate" columns from the "Orders" table, 
where the "OrderDate" is in the year 1997 and the "ShipCity" is "Berlin":*/
--write your query here (6 points)
select OrderID,OrderDate from Orders
where OrderDate between '1997-1-1' and  '1997-12-30' and ShipCity = 'Berlin'

/*17. Retrieve the "CustomerID" and the minimum "OrderDate" from the "Orders" table, 
grouped by "CustomerID":*/
--write your query here (6 points)
select CustomerID,min(OrderDate) as minimum_RequiredDate from Orders
group by CustomerID

/*18. Retrieve the "OrderID" and the maximum "RequiredDate" from the "Orders" table, 
where the "ShipCountry" is either "France" or "Spain":*/
--write your query here (6 points)
select OrderID, max(RequiredDate) as maximum_RequiredDate from Orders
where ShipCountry = 'France' or ShipCountry = 'Spain'
group by OrderID


/*19. Retrieve the "ProductID" and the sum of "Quantity" from the "Order Details" table, grouped by "ProductID", 
where the sum is greater than 100:*/
--write your query here (6 points)
select ProductID, sum(Quantity) as sum_of_Quantity from [Order Details]
group by ProductID
HAVING sum(Quantity) > 100


/*20. Retrieve the "EmployeeID" and the count of orders handled by each employee from the "Employees" table, grouped by "EmployeeID", 
ordered by the count in descending order:*/
--write your query here (9 points)
select Employees.EmployeeID, count(OrderID) as orders_handled_by_each_employee from Employees, Orders
where Employees.EmployeeID = Orders.EmployeeID
group by Employees.EmployeeID
order by orders_handled_by_each_employee DESC

/*21. Retrieve the customer ID, company name, and total revenue for customers who have made at least 5 orders, 
ordered by total revenue in descending order.*/
--write your query here (9 points)
select Customers.CompanyName,Orders.CustomerID, sum(UnitPrice*Quantity) as total_revenue from Customers, Orders,[Order Details]
where Customers.CustomerID = Orders.CustomerID and Orders.OrderID = [Order Details].OrderID and Orders.OrderID > 5
group by Orders.CustomerID,Customers.CompanyName
order by total_revenue DESC

/*22. Retrieve the employee ID, employee ID, last name, and the number of orders they have taken, 
for employees who have taken orders in the year 1996, ordered by the number of orders in descending order.*/
--write your query here (9 points)
select Orders.EmployeeID,Employees.LastName name, count(OrderID) as number_of_order from Employees, Orders
where Employees.EmployeeID = Orders.EmployeeID and OrderDate  between '1996-1-1' and  '1996-12-31'
group by Orders.EmployeeID,Employees.LastName
order by number_of_order DESC


/*23. Retrieve the product name, unit price, and the number of times each product has been ordered, 
for products that have been ordered more than 100 times, ordered by the number of times ordered in descending order.*/
--write your query here (9 points)
select Products.ProductName,Products.UnitPrice, count([Order Details].ProductID) as number_of_time_order from Products, [Order Details]
where Products.ProductID =[Order Details].ProductID
group by Products.ProductName,Products.UnitPrice
HAVING count([Order Details].ProductID) > 100
order by number_of_time_order DESC

/*24. Retrieve the employee ID, first name, last name, and the total revenue generated from the orders they have taken, 
for employees who have generated revenue exceeding $100,000, ordered by total revenue in descending order.*/
--write your query here (9 points)
select Employees.EmployeeID,Employees.FirstName,Employees.LastName, sum([Order Details].UnitPrice) as total_revenue from Employees, Orders,[Order Details]
where Employees.EmployeeID = Orders.EmployeeID and Orders.OrderID = [Order Details].OrderID
group by Employees.EmployeeID,Employees.FirstName,Employees.LastName
HAVING sum([Order Details].UnitPrice) > 10000
order by total_revenue DESC

/*25. Retrieve the customer ID, company name, and the number of distinct products they have ordered, 
for customers who have ordered products from more than 5 different categories, ordered by the number of distinct products in descending order.*/
--write your query here (9 points)
select distinct Customers.CompanyName,Orders.CustomerID, count(Products.CategoryID) as number from Customers, Orders,[Order Details],Products
where Customers.CustomerID = Orders.CustomerID and Orders.OrderID = [Order Details].OrderID and Products.ProductID = [Order Details].ProductID 
group by Orders.CustomerID,Customers.CompanyName,Orders.CustomerID, Products.CategoryID
HAVING  count(Products.CategoryID) > 5
order by number DESC


/*26. Retrieve the employee ID, first name, last name, and the number of orders they have taken, 
for employees who have taken orders in the month of February, sorted by the number of orders in descending order.*/
--write your query here (9 points)


/*27. Retrieve the product ID, product name, and the total revenue generated from the sales of each product, 
for products that have generated revenue exceeding the average revenue of all products, ordered by total revenue in descending order.*/
--write your query here (9 points)


/*28. Retrieve the category name and the average unit price of products within each category, 
for categories that have at least 10 products, ordered by the average unit price in descending order.*/
--write your query here (9 points)


/*29. Retrieve the customer ID, company name, and the total quantity of products ordered by each customer, 
for customers who have ordered a total quantity exceeding 1000, ordered by the total quantity in descending order.*/
--write your query here (9 points)


/*30. Retrieve the supplier company name and the number of products supplied by each supplier, 
for suppliers who have supplied more products than the average number of products supplied by all suppliers, ordered by the number of products supplied in descending order.*/
--write your query here (9 points)