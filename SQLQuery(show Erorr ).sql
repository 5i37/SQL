BEGIN TRY
SELECT 1/0
END TRY

BEGIN CATCH 
	SELECT 
	@@ERROR AS ERORR, 
	ERROR_NUMBER() AS ErorrNumber,
	ERROR_SEVERITY() AS ErrorServrity,
	ERROR_STATE() AS ErrorSTATE, 
	ERROR_PROCEDURE() AS ErrorPROCEDUR, 
	ERROR_LINE()  AS ErrorLINE,
	ERROR_MESSAGE() AS ERRORMESSAGE

END CATCH 

BEGIN TRY 
begin


declare @width NUMERIC = 2 ; 

declare @height NUMERIC = 4; 



print 'the area of rectangle is '+ @width*@height

end 
END TRY 
BEGIN CATCH 
	SELECT 
	@@ERROR AS ERORR, 
	ERROR_NUMBER() AS ErorrNumber,
	ERROR_SEVERITY() AS ErrorServrity,
	ERROR_STATE() AS ErrorSTATE, 
	ERROR_PROCEDURE() AS ErrorPROCEDUR, 
	ERROR_LINE()  AS ErrorLINE,
	ERROR_MESSAGE() AS ERRORMESSAGE

END CATCH 
