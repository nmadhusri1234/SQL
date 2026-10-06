create table student(
sid int primary key,
sname varchar(10),
age int,
city varchar(10)
);

create table employeee(
eid int primary key,
ename varchar(10) not null,
salary decimal(10,2),
email varchar(10) unique
);

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

alter table employeee add column phone int unique;

alter table productt modify column pname varchar(50);

alter table student rename column sname to student_name;

alter table employeee drop column email;

desc employeee;









