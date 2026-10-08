create table student(
sid int primary key,
sname varchar(10),
age int,
city varchar(10)
);
drop table student;

create table employeee(
eid int primary key,
ename varchar(10) not null,
salary decimal(10,2),
email varchar(10) unique
);
drop table employeee;

create table department(
did int primary key,
dname varchar(10) unique,
location varchar(9)
);

create table productt(
pid int primary key,
pname varchar(15) not null,
price decimal(9,2) check (price>0),
quantity int check (quantity>=0)
);

create table customer(
cusid int primary key,
cusname varchar(10),
location varchar(10)
);

create table orders(
orderid int primary key,
ordername varchar(15),
cusid int,
foreign key(cusid) references customer(cusid)
);


create table studentt(
sid int,
sname varchar(15),
age int
);

alter table studentt add column email varchar(20);

alter table studentt add constraint check (age between 18 and 60);

alter table employeee add column phone int unique;

alter table productt modify column pname varchar(50);

alter table student rename column sname to student_name;

alter table employeee drop column email;

desc employeee;

create table student(
sid int,
sname varchar(10),
age int,
city varchar(10)
);

alter table student add constraint  primary key(sid);

create table employeee(
eid int primary key,
ename varchar(10) not null,
salary decimal(10,2),
email varchar(10) 
);
drop table employeee;

alter table employeee add constraint unique(email);
alter table employee add constraint check (salary>10000);
desc employee;

create table employeee(
eid int primary key,
ename varchar(10) not null,
salary decimal(10,2),
email varchar(10) ,
did int
);

alter table employeee add constraint foreign key(did) references department(did);
desc employeee;
alter table employeee drop primary key;

create table studenttt(
sid int,
sname varchar(10),
age int,
city varchar(10),
email varchar(15)
);
alter table studenttt add constraint uk_student_email unique(email);
desc studenttt;

alter table studenttt drop constraint uk_student_email;



