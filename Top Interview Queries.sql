-- Mostly asked Interview Questions
use db_sabya;
show tables;
select * from employee;

alter table employees
rename to employee;

-- 1 Find second highest salary from all employees
select max(salary) as Second_HighSal
from employee
where salary < (select max(salary) 
				from employee);
-- (by using limit and offset) 
select salary
from employee
order by salary desc
limit 1 offset 1;

-- find top 3 lowest salary)
select distinct salary 
from employee
order by salary asc
limit 3 offset 0;






                
