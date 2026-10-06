create database company_db;

create table employee(
emp_id int primary key auto_increment,
emp_name varchar(50) not null,
email varchar(100) unique,
department varchar(30) not null,
salary decimal(10,2) check (salary>0),
joining_date date not null,
city varchar(50) default 'Hyderabad'
);

use company_db;

describe employee;

insert into employee (emp_name,department,salary,joining_Date,city)
 values
('Ravi','IT',45000,'2023-01-15','Hyderabad'),
('Priya','HR',38000,'2022-06-10','Chennai'),
('Kiran','IT',55000,'2021-03-20','Banglore'),
('Sneha','Finance',42000,'2024-02-05','Hyderabad');

select * from employee;

update employee set email = 'ravi@gmail.com' where emp_id=1;

select emp_name from employee where department = 'IT';

SET SQL_SAFE_UPDATES = 0;
update employee set salary = salary+(salary*10/100) where department='IT';
select * from employee;



