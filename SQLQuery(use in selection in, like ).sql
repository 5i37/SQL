select top 10 * from Customer 
where Country in ('UK', 'mexico') ;

select top 5 * from Customer 
where FirstName  like '%_om%' ;  --any name that have os letter

select  * from Customer 
where Phone  like '%555%' ;  
