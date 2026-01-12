use emp;
select * from employee;


-- distinct
select distinct department 
from employee;

-- join/on

-- limit
select * from employee
limit 3;


-- offset
select * from employee
limit 3
offset 2;

select * from employee;
-- 2nd highest sal
select distinct salary, emp_name
from employee
order by salary desc
limit 1
offset 1;


-- 3rd highest sal
select distinct salary, emp_name
from employee
order by salary desc
limit 1
offset 2;


-- Aggregate function(multirow function)

-- count(),avg(),sum(),min(),max()

-- count()
select count(*) as total_employee from employee;

-- avg()
select avg(salary) as average_salary from employee;

-- sum()
select sum(salary) as total_salary from employee;

select department ,  sum(salary) as total_salary
from employee
group by department;


-- max()
select max(salary) as highest_salary 
from employee;

-- min()
select department, min(salary) as lowest_salary
from employee
group by department;




