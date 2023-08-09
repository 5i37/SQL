create table student (
St_id numeric(6) primary key,
St_Major character(30),
St_Cohort numeric (4) not null,
CONSTRAINT  po_sid check (St_id > 0));

create table employee (
Em_id numeric(6) primary key  ,
Em_Office# character(10) not null,
Em_Ext# numeric (4) not null CHECK (Em_Ext# >1000),
CONSTRAINT  po_eid check (Em_id > 0));

create table college (
Cl_Code character(3) primary key,
Cl_Name character(40) not null,
Cl_Dean  character (30));


create table department (
Dp_Code character(4) primary key,
Dp_Name character(40) not null,
Dp_HoD  character (30),
Dp_Col character (3),
FOREIGN KEY (Dp_col) REFERENCES college(Cl_Code));

create table borrower (
Br_ID numeric(6) primary key,
Br_Name character(30) not null,
Br_Dept  character(4),
Br_Mobile character(8),
Br_City character(20),
Br_House# character(4),
Br_Type character(1) ,
FOREIGN KEY (Br_Dept) REFERENCES department(Dp_Code),
CONSTRAINT  br_phone check (Br_Mobile >=90000000),
CONSTRAINT  br_t check (Br_Type in ('S','E')));

create table book (
Bk_ID  numeric(6) primary key check (Bk_ID > 0),
Bk_Title character(50) not null,
Bk_Edition  numeric(2),
Bk_#ofPages  numeric(4),
Bk_TotalCopies  numeric(5),
Bk_RemCopies numeric(5),
CONSTRAINT  bk_p check (Bk_#ofPages > 0 ) );

create table booktopic (
Tp_BkID   numeric(6) primary key ,
Tp_Desc  character(30) not null,

FOREIGN KEY (Tp_BkID ) REFERENCES book(Bk_ID) );


create table course (
Cr_Code  character(8) primary key ,
Cr_Title character(40) not null,
Cr_CH  numeric(2) check (Cr_CH>0),
Cr_#ofSec  numeric(2) check (Cr_#ofSec>0),
Cr_Dept  character(4),
FOREIGN KEY (Cr_Dept ) REFERENCES department(Dp_Code));

create table link (
Li_CrCode character(8) primary key ,
Li_BkID  numeric(6) ,
Li_usage character(1) check (Li_usage in ('T','R')),
FOREIGN KEY (Li_CrCode ) REFERENCES course(Cr_Code),
FOREIGN KEY (Li_BkID ) REFERENCES book(Bk_ID));

create table registration (
Re_BrID numeric(6) primary key ,
Re_CrCode  character(8) ,
Re_Semester character(6) not null,
FOREIGN KEY (Re_BrID ) REFERENCES borrower(Br_ID),
FOREIGN KEY (Re_CrCode ) REFERENCES course(Cr_Code));

create table issuing (
is_BrID numeric(6) primary key ,
is_BkID  numeric(6) ,
is_DateTaken date not null,
is_DateReturn date , 
FOREIGN KEY (is_BrID ) REFERENCES borrower(Br_ID),
FOREIGN KEY (is_BkID ) REFERENCES book(Bk_ID),
CONSTRAINT  DateReturn check (is_DateReturn > is_DateTaken));