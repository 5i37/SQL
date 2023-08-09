select top 5 * from Customer 
where FirstName  like '%j%' ;  --first letter 

select top 5 * from Customer 
where FirstName  like '_s%' ;  -- second letter 

select top 5 * from Customer 
where FirstName  like '%a' ;  -- last letter 

select top 5 * from Customer 
where FirstName  like '%_s%' ;  --any name that have s letter 
