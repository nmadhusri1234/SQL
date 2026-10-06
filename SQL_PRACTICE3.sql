create table employee(
emp_id int primary key auto_increment,
emp_name varchar(50) not null,
department varchar(30) not null,
salary decimal(10,2) check (salary>0),
joining_date date not null,
email varchar(100) unique
);


insert into employee (emp_id,emp_name,department,salary,joining_Date,email)
 values
(101,'Ravi','IT',45000,'2023-01-15','ravi@gmail.com'),
(102,'Priya','HR',38000,'2022-06-10','priya@gmail.com'),
(103,'Kiran','IT',55000,'2021-03-20','kiran@gmail.com'),
(104,'Sneha','Finance',42000,'2024-02-05','sneha@gmail.com');

insert into employee (emp_id,emp_name,department,salary,joining_Date,email)
 values
(105,'Pavan','IT',29000,'2023-01-15','pavan@gmail.com'),
(106,'Rani','HR',50000,'2022-06-10','rani@gmail.com');


insert into employee (emp_id,emp_name,department,salary,joining_Date,email)
 values
(107,'Harish','Non IT',29000,'2023-04-21','harish@gmail.com');


select * from employee;

select emp_name,salary,
case
	when salary>=50000 then 'High Salary'
    when salary>=40000 then 'Medium Salary'
    else 'Low salary' 
end as salary_category
from employee;

Select emp_name,salary, 
Case 
 	When department = 'It' then salary+(salary*0.1) 
	When department = 'Hr' then salary+(salary*0.08) 
	When department = 'Finance' then salary+(salary*0.05) 
    else 'No increment'
End as new_salary 
From employee; 

select count(*) as total_employees from employee;

select department,count(*) as employees from employee group by department;

Select department,avg(Salary) as average_salary from employee group by department;

select department,sum(Salary) as total_salary from employee group by department;

select year(joining_date) from employee;

select max(Salary) from employee where salary <(select max(salary) from employee);

select avg(salary) from employee;
select emp_name,salary from employee where salary >(select avg(salary) from employee);

select e1.emp_name,e1.department,e1.salary from employee e1 where e1.salary>
(select avg(e2.salary) from employee e2 where e2.department = e1.department);

create table category(category_id int primary key, 
category_name varchar(50));

insert into category values(1,'Electronics'),(2,'Clothing'),(3,'Books');

create table product(
product_id int primary key,
product_name varchar(50),
price decimal(10,2),
category_id int );

insert into product values(101,'Laptop',60000,1),(102,'Mobile',50000,1),(103,'Shirt',2000,2),(104,'Java',300,3);

select * from category;
select * from product;


select avg(price) from product;
select p1.product_name,p1.price from product p1 where p1.price >(select avg(p2.price) from product p2 where p2.category_id = p1.category_id);








