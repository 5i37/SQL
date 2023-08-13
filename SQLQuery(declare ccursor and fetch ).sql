

declare ccursor_customer cursor for 
SELECT Id, Firstname, city  from Customer
WHERE Country = 'UK'; 

OPEN ccursor_customer;
declare @customerId int ;
declare @fname nvarchar(40);
declare @city nvarchar(40); 
FETCH NEXT FROM ccursor_customer INTO @customerId,@fname,@city
while @@FETCH_STATUS = 0 
	begin 
		FETCH NEXT FROM ccursor_customer INTO @customerId,@fname,@city
		print 'customer: ' + cast(@customerid as varchar)+' => '+@fname+' from '+@city; 

	end 

close ccursor_customer