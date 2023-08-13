begin -- using if statement

declare @price decimal(12,2) = 30; 
if @price >=50
	select * from Product where UnitPrice >= @price
else 
	select * from Product where UnitPrice <= @price 

end

 -- USING CASE STATMENTS 
SELECT Companyname,Country = 
	CASE Country 
		WHEN 'UK' THEN 'UNITED KINGDOM'
		WHEN 'USA' THEN 'UNITED STAT'
		ELSE Country
	END 
FROM Supplier


SELECT * FROM  Supplier

SELECT Companyname,Fax = 
	CASE Fax 
		WHEN ISNULL(Fax,NULL) THEN 'NOT FOUND'
	
		ELSE Fax
	END 
FROM Supplier



SELECT IsDiscontinued = 
	CASE IsDiscontinued 
		WHEN 0 THEN 'NO'
		
	
		ELSE 'YSE'
	END 
FROM Product