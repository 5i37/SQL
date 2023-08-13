begin
print'welcome world'

declare @name varchar(15) = 'khalid'; -- first way to declare 

declare @addr varchar(15); --- another way to declare ((using set ))
set  @addr = 'oman'

declare @salary int = 1200;

print @name +' '+'salary'+' '+ cast(@salary as varchar)
print @addr
end 


begin


declare @width NUMERIC = 2 ; 

declare @height NUMERIC = 4; 



print 'the area of rectangle is '+ cast(@width*@height as varchar)

end 

begin


declare @firstName nvarchar(40) ; 
declare @LastName nvarchar(40); 

select @firstName = FirstName, @LastName = LastName 
from Customer where Id = 4 

print 'the customer id 4 is  '+@firstName +' '+@LastName

end



begin

declare @avrg decimal(12,2); 
select @avrg = AVG(UnitPrice) from Product

print 'the avg of Total Amount is '+''+cast(@avrg as varchar)

end


