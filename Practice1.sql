create table employees(
emp_id INT primary key AUTO_INCREMENT,
emp_name VARCHAR(50),
department VARCHAR(50),
salary DECIMAL(10,2),
experience INT,
status INT
);


INSERT INTO employees
(emp_name, department, salary, experience, status)
VALUES
('Rajesh',   'IT',        60000, 4, 1),
('Madhu',   'HR',        45000, 3, 2),
('Priya',  'Finance',   70000, 6, 4),
('Sneha',  'IT',        85000, 7, 3),
('Kiran',  'Sales',     35000, 2, 1),
('Arjun',  'IT',        55000, 5, 5),
('Divya',  'HR',        40000, 4, 2),
('Rahul',  'Finance',   65000, 8, 6),
('Meena',  'Sales',     30000, 1, 1),
('Suresh', 'IT',        95000, 10, 7),
('Pooja',  'Marketing', 50000, 3, 2),
('Vijay',  'Finance',   48000, 4, 4),
('Neha',   'IT',        72000, 6, 3),
('Amit',   'Sales',     42000, 5, 1),
('Swathi', 'Marketing', 58000, 7, 5);

create table products(
product_id INT primary key AUTO_INCREMENT,
product_name VARCHAR(50),
price DECIMAL(10,2),
quantity INT
);

INSERT INTO products
(product_name, price, quantity)
VALUES
('Laptop',       55000, 10),
('Mouse',         800, 25),
('Keyboard',     1500, 15),
('Monitor',     12000, 8),
('Headphones',   2500, 20),
('Webcam',        3500, 12),
('Printer',      15000, 5),
('SSD',           6000, 18),
('RAM',           4000, 30),
('USB Cable',      500, 40),
('Router',        3000, 10),
('Speaker',       4500, 7);

select emp_name,salary,salary+5000 as bonus_salary from employees;

select emp_name,salary as current_salary, salary+(salary*10.1) as increment_salary from employees;

select * from employees where salary>50000;

select * from employees where salary>30000 and salary<60000 ;

select * from employees where department = 'It' and salary>50000;

select * from employees where department = 'it' or department='hr';

select * from employees where department!='finance' and experience>3;

select * from employees where salary>40000 or experience >5;

select emp_name,mod(salary,1000) as remainder from employees;






select price*quantity as total_price from products;

set sql_safe_updates = 0;
update employees set salary = salary+(salary*10/100);

select * from employees;

update employees set salary = salary+(salary*15/100) where department='it';

select * from products;
update products set price = price - (price*5/100);

update products set quantity = quantity+10  where quantity<20;

insert into employees(emp_name,department,salary,experience,status) values('madhu','it',80000,5,3);

create table high_salary as select emp_id,emp_name,department,salary,experience,status  from employees where salary>60000;
select * from high_salary;

create table employees_backup (
emp_id INT ,
emp_name VARCHAR(50),
department VARCHAR(50),
salary DECIMAL(10,2),
experience INT,
status INT);
insert into employees_backup select * from employees;
select * from employees_backup;
drop table employees_backup;
insert into employees_backup select * from employees where department='IT';

delete from employees_backup where department='IT';

select * from products;
delete from products where price<1000;
