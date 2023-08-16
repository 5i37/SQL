create or alter view empView As 
select e.EmployeeId, e.firstName, e.salary,d.departmentName from employees e , department d 
where d.departmentid = e.DepartmentId

select * from  empView


create or alter trigger tri_empview on empview instead of insert as 
begin 
	declare @empid int;
	declare @name nvarchar(50);
	declare @sal decimal(18,2);
	declare @depid int ;
	select @empid = EmployeeId, @name = FIrstName , @sal = Salary , @depid = d.departmentid from department d , inserted 
	where d.DepartmentName = inserted.DepartmentName

	if @depid is null 
	begin 
		print 'Invalid Department' 
		Rollback; 
	end ; 

	insert into Employees(EmployeeId, FirstName, Salary, DepartmentId) values (@empid, @name,@sal, @depid);

end ;
	


insert into Employees values (11, 'ali','ahmed','Developer',4, 7999.0)

select * from  empView

select * from  Employees


insert into empView values (13, 'hamza',200.1, 'HR');