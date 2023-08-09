begin transaction; 



update producat set  p_price = 40*1.20  where p_name = 'water';  
select * from producat;

save transaction saveprice; --save point 


update producat set  p_price = 40*1.40  where p_name = 'water';  
select * from producat;

rollback transaction saveprice; -- call rollback transaction 

select * from producat;