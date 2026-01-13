
use joins;
create table emp (
    emp_id INT,
    emp_name VARCHAR(30),
    dept_id INT
);

insert into emp values
(101, 'Amit', 1),
(102, 'Rina', 2),
(103, 'Karan', 3),
(104, 'Neha', 1),
(105, 'Suresh', NULL);

create table dept (
    dept_id INT,
    dept_name VARCHAR(30)
);

Insert into dept values
(1, 'IT'),
(2, 'HR'),
(3, 'Finance'),
(4, 'Admin');



-- 1. Display employee name and department name for employees.
-- 2. Show all employees even if they are not assigned to any department.
-- 3. Display all departments even if no employee is assigned to them.
-- 4. List employee names working in IT department.
-- 5. Display employees who do not belong to any department.
-- 6. Show total number of employees in each department.
-- 7. Display departments where no employees are working.
-- 8. Show employee name, department name ordered by department name.
-- 9. Find employees working in IT or HR department.
-- 10. Find departments having more than 1 employee.

select * from emp;
select * from dept;

select *
from emp
inner join dept
on emp.dept_id = dept.dept_id;


-- answers
-- 1
select e.emp_name, d.dept_name
from employees as e
inner join departments as d
on e.dept_id = d.dept_id;


-- 2
select employees.emp_name 
from employees
left join departments
on employees.dept_id = departments.dept_id;


-- 3
select employees.emp_name, departments.dept_name
from employees
right join departments
on employees.dept_id = departments.dept_id;


-- 4
select employees.emp_name,departments.dept_name
from employees
inner join departments
on employees.dept_id = departments.dept_id
where dept_name= "IT";


-- 5
select employees.emp_name
from employees
left join departments
on employees.dept_id = departments.dept_id
where departments.dept_id is null;


-- 6 Show total number of employees in each department.
select d.dept_name, count(e.emp_id) from employees e
right join departments d
on e.dept_id = d.dept_id
group by d.dept_name;













