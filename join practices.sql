create database joins;
use joins;
create table employees (
    emp_id INT,
    emp_name VARCHAR(30),
    dept_id INT
);

insert into employees values
(101, 'Amit', 1),
(102, 'Rina', 2),
(103, 'Karan', 3),
(104, 'Neha', 1),
(105, 'Suresh', NULL);

create table departments (
    dept_id INT,
    dept_name VARCHAR(30)
);

Insert into departments values
(1, 'IT'),
(2, 'HR'),
(3, 'Finance'),
(4, 'Admin');


-- 1. Display employee name and department name for all employees.
-- 2. Show all employees even if they are not assigned to any department.
-- 3. Display all departments even if no employee is assigned to them.
-- 4. List employee names working in IT department.
-- 5. Display employees who do not belong to any department.
-- 6. Show total number of employees in each department.
-- 7. Display departments where no employees are working.
-- 8. Show employee name, department name ordered by department name.
-- 9. Find employees working in IT or HR department.
-- 10. Find departments having more than 1 employee.

select * from employees;
select * from departments;

select *
from employees
inner join departments
on employees.dept_id = departments.dept_id;


-- answers
select e.emp_name, d.dept_name
from employees as e
left join departments as d
on e.dept_id = d.dept_id;


select employees.emp_name
from employees
left join departments
on employees.dept_id = departments.dept_id;
-- or
select emp_name
from employees;


select d.dept_name
from departments as d ;
-- or
select 













