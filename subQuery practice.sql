use db_sabya;
show tables;
select * from employees;


-- find employee who have more then the average salary for all employess.
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
               
-- Questions
-- 1.Find employees who earn more than the average salary of all employees.
-- 2.Find employees who earn less than the average salary.
-- 3.Find employees who earn the maximum salary.
-- 4.Find employees who earn the minimum salary.
-- 5.Find the second highest salary.
-- 6.Find employees who earn more than Amit.
-- 7.Find employees who work in the same department as Rina.
-- 8.Find employees whose salary is equal to the highest salary in IT department.
-- 9.Find employees who earn less than the lowest salary in HR.
-- 10.Find employees who work in departments located in Mumbai.
-- 11.Find employees whose salary is greater than ANY salary in HR department.
-- 12.Find employees whose salary is greater than ALL salaries in IT department.
-- 13.Find employees who belong to departments having more than one employee.
-- 14.Find employees who earn more than the average salary of their department.
-- 15.Find employees who earn the highest salary in their department.
-- 16. Find employees who earn the lowest salary in their department.
-- 17. Find employees who work in departments having at least one employee earning more than 70,000.
-- 18. Find employees who belong to departments that exist.
-- 19. Find employees who do not belong to any department.
-- 20. Find departments where no employee earns more than 60,000.
-- 21. Find employees whose salary is equal to the average salary of their department.
-- 22. Find employees who work in departments where average salary is greater than overall average salary.
-- 23. Find employees who share the same salary with someone else.
-- 24. Find employees who earn exactly the same salary as at least one other employee.
-- 25. Find employees who earn more than all employees in Admin department.

-- ANSWERS
-- 1.Find employees who earn more than the average salary of all employees.
select emp_name, salary
from employees
where salary > (select avg(salary)from employees);

-- 2.Find employees who earn less than the average salary.
select emp_name,salary
from employees 
where salary < (select avg(salary) from employees);

-- 3.Find employees who earn the maximum salary.
select * 
from employees
where salary = (select max(salary) from employees);

-- (also we can solve this by not using sub query)
select * from employees
order by salary desc
limit 1;

-- 4.Find employees who earn the minimum salary.
select *
 from employees 
 where salary = (select min(salary) from employees);

-- (also we can solve this by not using sub query)
select * from employees
order by salary asc
limit 1;

-- 5.Find the second highest salary.
select emp_name, salary
from employees
where salary = (select max(salary) 
				from employees
                where salary < (select max(salary) 
							   from employees)); 
                               
                      
-- (it is a database specific answer)
select emp_name, salary
from employees
where salary = (select salary
				from employees 
				order by salary desc 
                limit 1 offset 1); 
                
-- 6.Find employees who earn more than Amit.
select emp_name , salary 
from employees 
where salary > (select max(salary) 
				from employees 
                where emp_name = "Amit");                

-- 7.Find employees who work in the same department as Rina.
select emp_name, department 
from employees
where department in (select department from employees where emp_name = "Rina");
-- (Here i am using "in" onperator just because if Rina named some other employees are there from other department, it can fetch all these employees from all departments also.) 


-- 8.Find employees whose salary is equal to the highest salary in IT department.
select * 
from employees 
where salary = (select max(salary)
				from employees
                where department = "IT");
                

-- 9.Find employees who earn less than the lowest salary in HR.
select * 
from employees 
where salary < (select min(salary)
				from employees 
				where department = "HR");

-- 10.Find employees who work in departments located in Mumbai.
select * 
from employees 
where city in (select city
			  from employees
              where city = "Mumbai");
