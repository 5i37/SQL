begin 
declare  cursorr_customer cursor for 
SELECT  Id , FirstName, Phone  from Customer where Phone like '%555%';

OPEN cursorr_customer;
declare @cid int;
declare @fname nvarchar(40);
declare @cphone nvarchar(20);


FETCH NEXT FROM cursorr_customer INTO @cid,@fname,@cphone ;
while @@FETCH_STATUS = 0 
	begin 
		
		print  @fname+' => '+cast(@cid as varchar)+' => '+@cphone;
		FETCH NEXT FROM cursorr_customer INTO @cid,@fname,@cphone ;
	end 

close cursorr_customer 

end 



