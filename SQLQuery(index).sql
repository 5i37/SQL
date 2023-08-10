select FirstName,id ,country from Customer where FirstName = 'thomas' and LastName='hardy' and country = 'UK';
create index ind_cutomer on Customer(FirstName,lastname,city)
drop index ind_cutomer on Customer