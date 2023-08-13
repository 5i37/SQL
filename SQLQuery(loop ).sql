-- loops 

begin 

declare @price decimal(12,2);
declare @id decimal(12,2) = 30;
while @id <=40 
	begin 

		select @price = UnitPrice from Product where Id = @id;
		if @price >=100
			print('the product is expansive')
		else 
			print('the product is not expansive')
		set @id = @id +	1 ;

	end
end 


begin 


declare @idd decimal(12,2) = 1
declare @name varchar(30);
while @idd <=40 
	begin 

		select * from Customer where Id = @idd and City ='London' ;

		set @idd = @idd +	1 ;

	end
end 




begin 

declare @x int = 1
while @x <=10
	begin 
	
		if @x%3!=0 
			print @x 
			 			
	set @x= @x +1
			
	end
end 
