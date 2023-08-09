
create sequence countby1 
start with 1 
increment by 1 
maxvalue 10 ;
select * from sys.sequences where name = 'countby1'

create sequence cont2; 
select * from sys.sequences where name = 'cont2'


create sequence SmallSeqq as smallint;
select * from sys.sequences where name = 'SmallSeqq'

create sequence Decseq
as decimal(3,0)
start with 125
increment by 25
minvalue 100
maxvalue 200
cycle 
cache 3; 

select next value for decseq; 

create table customer (
id int primary key, 
C_name varchar(50) not null, 
c_addr varchar(100));

create sequence cus_seq
as int
start with 1
increment by 1
minvalue 1
maxvalue 200
cycle 
cache 3; 

insert into customer values (next value for cus_seq , 'khalid', 'oman' ) ;
insert into customer values (next value for cus_seq , 'omar', 'oman' ) ;
insert into customer values (next value for cus_seq , 'hamza', 'oman' ) ;

select * from customer where id = 5
select * from customer where FirstName = 'Thomas'

create index index1 ON customer(firstname)
