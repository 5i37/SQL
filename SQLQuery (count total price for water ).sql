create table producat (
p_id int primary key , 
p_name varchar(100),
p_count int,
p_price int );



insert into producat values (1, 'water',2,200)

select * from producat; 

select p_name, p_count * p_price as total_price from producat where p_name = 'water'; 

insert into producat values (2, 'milk',5,100)
insert into producat values (3, 'beef',3,500)