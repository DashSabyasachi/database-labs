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


-- 2 Find the nth highest salary using window function
select salary,
	dense_rank() over(order by salary desc) as nth_sal
from employee;


--  Find duplicate records

-- (Duplicate based on a COLUMN (partial duplicate)) 
select Salary , count(*)
 from employee
 group by salary
 having count(*) >1;

-- Duplicate ROWS (entire record is same)
select emp_name, salary ,count(*)
from employee
group by emp_name, salary
having count(*) >1;

select * from employee;