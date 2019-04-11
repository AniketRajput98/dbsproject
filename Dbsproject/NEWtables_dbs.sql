create table reg_user(
userid varchar(30) primary key,
password varchar(30) not null,
ssn numeric(12,0) not null unique check(ssn >99999999999 and ssn<1000000000000),
firstname varchar(30) not null,
lastname varchar(30),
email varchar(30) not null
);

insert into reg_user values ('pranav' ,  'aiims' ,  100000000000 , 'pranav' , 'mohanrao' , 'iamlonely@gmail.com');
insert into reg_user values ('aniket' ,  '1234' ,  100000000001 , 'ankit' , 'rajput' , '30ke20momo@gmail.com');

create table caretaker(
cid int primary key,
ssn numeric(12,0) not null unique check(ssn >99999999999 and ssn<1000000000000),
name varchar(30) not null,
contact_number numeric(10,0) not null unique check(contact_number>999999999 and contact_number<10000000000)
);

insert into caretaker values (1, 198023458374 , 'Aakash' , 9898696923);
insert into caretaker values (2, 198023458654 , 'Aadarsh' , 9898234923);

create table med_records(
med_id int primary key,
med_condition varchar(30) not null,
description varchar(30) not null
);

insert into med_records values(1 , 'none yet' , 'none');
insert into med_records values(2, 'osteoporosis' , 'bones are weak');
insert into med_records values(3 , 'none yet' , 'none');
insert into med_records values(4 , 'none yet' , 'none');
insert into med_records values(5 , 'none yet' , 'none');

create table proposed_adoptive(
userid varchar(30) not null,
ssn numeric(12,0) primary key check(ssn >99999999999 and ssn<1000000000000),
name varchar(30) not null,
address varchar(30) not null,
contact_number numeric(10,0) not null unique check( contact_number>999999999 and contact_number<10000000000)
);

insert into proposed_adoptive values ('rohan' , 234234347895 , 'Rohan Shinde' , '305 Kalyaninagar' , 1234567890);
insert into proposed_adoptive values ('sahil' , 234234341234 , 'Sahil Kumar' , '123 Vimannagar' , 1234567892);

create table ssdb(
ssn numeric(12,0) primary key check(ssn >99999999999 and ssn<1000000000000),
firstname varchar(30) not null,
lastname varchar(30),
marital_status varchar(30) not null,
street varchar(30) not null,
city varchar(30) not null,
state varchar(30) not null,
contact_number numeric(10,0) not null unique check(contact_number>999999999 and contact_number<10000000000), 
enthnicity varchar(20) not null,
income int not null check(income> 0),
criminal_record varchar(40)
);

insert into ssdb values (123498765432 , 'Rahul' , 'Bhatnagar' , 'married' , 'Mira road' , 'Mumbai' , 'Maharashtra' , 7676764343 , 'Asian' , 10000 , 'none');
insert into ssdb values (123498765112 , 'Maneesha' , 'Bhatnagar' , 'married' , 'Mira road' , 'Mumbai' , 'Maharashtra' , 7674364343 , 'Asian' , 10020 , 'DUI');
insert into ssdb values(123456789999 , 'Hema' , 'Malini', 'single' ,'12A Mira Road' ,'Mumbai' , 'Maharashtra' , 9898989898 , 'Asian' , 100000 , 'none');
insert into ssdb values(123456789889 , 'Jaya' , 'Bacchan', 'single', '12D Mira Road' , 'Mumbai' , 'Maharashtra' ,9898722389 ,  'Asian' , 50000 , 'none');
insert into ssdb values (123443215674 , 'Tejas' , ' Kashinath' , 'married ',  '12F Mira Road' , 'Mumbai' , 'Maharashtra' , 8743823473 , 'Asian' , 233020 , 'none');


create table birthparent(
bp_id int primary key,
ssn numeric(12,0) not null unique check(ssn >99999999999 and ssn<1000000000000),
birthmother varchar(30),
birthfather varchar(30),
address varchar(30),
contact_number numeric(10,0) unique check(contact_number>999999999 and contact_number<10000000000),
constraint bpssn foreign key (ssn) references ssdb(ssn)
);

insert into birthparent values(1 , 123456789999 , 'Hema Malini' , 'Nitin', '12A Mira Road' , 9898989898);
insert into birthparent values(2 , 123456789889 , 'Jaya Bacchan' , 'Rahul', '12D Mira Road' , 9898722389);

create table donation(
userid varchar(30),
ssn numeric(12,0) primary key check(ssn >99999999999 and ssn<1000000000000),
donated_item varchar(40) not null,
donated_money int check(donated_money >= 1000), 
constraint donate_key foreign key(userid) references reg_user(userid)
);


insert into donation values ('aniket' , 100000000001 , 'toys' , 15000);
insert into donation values ('pranav' , 100000000000 , 'food' , 1000);

create table adoptive(
ad_id int primary key,
ssn numeric(12,0) not null unique check(ssn >99999999999 and ssn<1000000000000),
name varchar(30) not null,
address varchar(30) not null,
contact_number numeric(10,0) not null unique check(contact_number>999999999 and contact_number<10000000000),
constraint adssn foreign key(ssn) references ssdb(ssn)
);

insert into adoptive values (1 , 123443215674 , 'Tejas' , '12F Mira Road' , 8743823473);


create table kids(
k_id int primary key,
name varchar(25) not null,
age int,
blood_group varchar(3),
gender char(1) not null,
enthnicity varchar(20),
bp_id int,
ad_id int,
cid int not null,
med_id int,
constraint p_key foreign key(ad_id) references adoptive(ad_id),
constraint care_key foreign key(cid) references caretaker(cid),
constraint med_key foreign key(med_id) references med_records(med_id) on delete cascade,
constraint bp_key foreign key(bp_id) references birthparent(bp_id) on delete cascade
);

insert into kids values( 1 , 'Twisha Jain' , 5 , 'B-' , 'm' , 'Asian' , null , null , 1 , 1);
insert into kids values( 2 , 'Mary Ann' , 15 , 'B+' , 'f' , 'Caucasian' , 1 , 1 , 1 , 2);
insert into kids values( 3 , 'lisa' , 15 , 'B+' , 'f' , 'Caucasian' , 1 , 1 , 1 , 3);
insert into kids values( 4 , 'mona' , 15 , 'B+' , 'f' , 'Caucasian' , 1 , 1 , 1 , 4);
insert into kids values( 5 , 'mona' , 15 , 'B+' , 'f' , 'Caucasian' , 1 , 1 , 1 , 5);


insert into donation values ('aniket' , 100000000001 , 'toys' , 15000);
insert into donation values ('pranav' , 100000000000 , 'food' , 1000);
--------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------

DELIMITER$$
create procedure verifyyy
(in ssn1 int,in h varchar(30),in g varchar(30))
is
newsal integer
newsal2 integer
begin
select income into newsal
from ssdb 
where ssn=ssn1 
if (newsal>150000 and Marital_Status='s')
then
select 'verified'
else 
select 'Not Verified'
end if
end //
DELIMITER;


