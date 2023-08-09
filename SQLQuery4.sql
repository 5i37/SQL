select * from student; 
select * from student where std_name = 'khalid'; 

create table employee (
emp_id int primary key, 
emp_name varchar(100),
emp_phone varchar (100),
emp_addr varchar (100))

exec sp_help 'student'

SELECT * FROM student
ORDER BY Std_name DESC;

alter table employee alter column emp_phone int null;
alter table employee alter column emp_name varchar(50) not null;



create table course (
c_id char(8) constraint c_courseid_pk primary key, 
c_name varchar(50));


alter table student add course_id  char(8); 
alter table student add constraint fk_course_id foreign key(course_id) REFERENCES course(c_id) ; 


insert into course values (1,'information system');


exec sp_help 'student' 
select * from student; 