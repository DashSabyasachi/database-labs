use db_sabya;
show tables;
select * from employees;

select emp_name, avg(salary) as avg_sal from employees;

select * 
from employees
where salary > (select avg(salary)
				from employees);
                
				


-- find employee with same department as Amit's department
select * 
from employees 
where department = (select department 	
					from employees 
					where emp_name = "Amit");


-- find employee with same salary as highest salary in hr
select emp_name, salary , department
from employees
where salary = (select max(salary) 
			   from employees 
               where department = "HR");
