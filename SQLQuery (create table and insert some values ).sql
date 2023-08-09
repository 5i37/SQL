create table stuff (
sf_id int primary key , 
sf_name varchar(100),
sf_salary FLOAT ,
sf_addr varchar(100) );

insert into stuff values (1,'jhone', 200, 'msucat');
insert into stuff values (2,'ahmed', 400, 'nizwa');
insert into stuff values (3,'omar', 400, 'shoar');
insert into stuff values (4,'ali', 500, 'Izke');


select * from stuff; 
select sf_name, sf_salary from stuff; 
