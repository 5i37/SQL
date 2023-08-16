create trigger EmpCheck on employees for update as 
begin 
	declare @old_sl decimal(18,2);
	declare @new_sl decimal(18,2)

	select @old_sl = salary from deleted;
	select @new_sl = salary from inserted ;
	if @old_sl > @new_sl
		begin 
			print 'New salary cannot be less then the old salary' 
			Rollback;
		End; 

End; 

create trigger depCheck on department for delete as 
begin 
	declare @count int;



	if @count > 1
		begin 
			print ' cannot delete more then one record ' 
			Rollback;
		End; 

End;