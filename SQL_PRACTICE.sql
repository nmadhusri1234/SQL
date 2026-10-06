create database studentdb;
use studentdb;
create table student(
		Studentid int,
        age tinyint,
        totalMarks smallInt);
      
insert into student values(100,20,450);
insert into student values(101,21,500);
insert into student values(102,20,450),
						  (103,22,430),
                          (104,20,435);

select * from student;

use studentdb;
create table medicine (
				name varchar(50),
                dom date,
                doe date);
                
insert into medicine values('Crocin','2023-08-15','2025-06-23');

select * from medicine;

create table class(subject varchar(50),class_time time);
insert into class values('Java','11:00:00');
select * from class;

create table appointment(
				patient_name varchar(50),
                appointment_time datetime);
insert into appointment values('john','2026-09-22 10:30:00');
select * from appointment;

create table emp(
				id int,
                name varchar(100),
                created_at timestamp default current_timestamp);
desc emp;
desc emp;
describe emp;
insert into emp(id,name) values(101,'Raj');
select * from emp;							
                        
create table enrollment(
studentid int,courseid int,
primary key(studentid,courseid));
insert into enrollment values(101,1);
select * from enrollment;
insert into enrollment values(101,1);
insert into enrollment values(101,2);
select * from enrollment;
				
 drop table student;
 
 create table student (
			student_id int,
            name varchar(50),
            age int);
insert into student values(1,"madhu",21);            
insert into student values(2,"mouvys",19);
insert into student values(1,"bhavya",22);

select * from student;			

alter table student add column email varchar(30);

alter table student drop column email;

alter table student add column phonenum varchar(15), add column city varchar(10);

describe student;

alter table student modify column phonenum varchar(10);

alter table student modify column age smallint;

alter table student modify column name varchar(100) not null;

alter table student change column name student_name varchar(50);

drop table student;

create table student (
			student_id int,
            name varchar(50),
            age int,
            city varchar(10) default "Hyderabad" );

describe student;

truncate table student ;
select * from student;

insert into student values(1,'madhu',21,'HYD'),(2,'mouvya',20,'VIJ'),(3,'abc',19,'GUN');
insert into student (student_id,name,age) values(4,'asj',21);
insert into student values(5,'honey',18,'VIJ');
insert into student (student_id,name,age) values(6,'asj',21),(7,'euhrueh',19); 

insert into student set student_id = 8,name="iehruehf"; 

create table student_backup (
			student_id int,
            name varchar(50),
            age int,
            city varchar(10));
            
insert into student_backup (student_id,name,age,city) select student_id,name,age,city from student;

select * from student_backup;

create table student_backup2 as select student_id,name from student;

describe student_backup2;
select * from student_backup2;

alter table student_backup2 add primary key(student_id);

alter table student add primary key(student_id);

select * from student;

update student set age = 20 where student_id = 8;
update student set name = "bhavya", age = 20 where student_id = 7;

delete from student where student_id = 8;

select * from student;
select name,age from student;
select name from student where city='vij';
select name as student_name from student;





