select count(id) as NumberOfCustomer from Customer

select min(orderdate) as LastOrder from "Order"

select sum(TotalAmount) as SumOfAmount from "Order"

select avg(TotalAmount) as Avr from "Order"