select * from student; 

create table student2 (
std2_id int primary key,
std2_name varchar(100) null, 
phone2 int, 
add2 varchar(100));

insert into student2 (std2_id, std2_name)
select Std_id, Std_name from student;


select * from student2; 