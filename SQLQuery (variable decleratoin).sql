-- variable decleratoin 

declare @student_id int = 124080; 
select * from student where Std_id = 124080;


-- another why to decler variable with set 

declare @student2_id int;
set @student2_id = 124090; 
select * from student2 where std2_id = 124090;