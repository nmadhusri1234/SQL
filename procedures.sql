select * from company_db.employee;

delimiter //
create procedure getEmployees()
begin
	select * from employee;
end //
delimiter ;

call getEmployees;



delimiter //
create procedure getEmployeesByDepartment(IN dept_name varchar(10))
begin
	select * from employee where department = dept_name;
end //
delimiter ;

call getEmployeesByDepartment('it');






