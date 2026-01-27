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

