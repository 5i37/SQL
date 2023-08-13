begin 
declare cursor_product cursor for 
SELECT  Product.ProductName,Product.UnitPrice,Product.IsDiscontinued, Supplier.CompanyName from Product,Supplier
WHERE Supplier.Id = Product.SupplierId and Product.IsDiscontinued >0; 

OPEN cursor_product;
declare @pname nvarchar(50);
declare @cname nvarchar(40);
declare @price decimal(12,2); 
declare @p_dis bit;
FETCH NEXT FROM cursor_product INTO @pname,@price,@p_dis,@cname ;
while @@FETCH_STATUS = 0 
	begin 		
		print  @pname+' => '+cast(@price as varchar)+' => '+cast(@p_dis as varchar)+' => '+@cname;
		FETCH NEXT FROM cursor_product INTO @pname,@price,@p_dis,@cname ;
	end 

close cursor_product 

end 
