begin transaction; 



update producat set  p_price = 40  where p_name = 'water';  
select * from producat;

rollback;
select * from producat;