use db_sabya;
 show tables;
CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(30),
    salary INT,
    department VARCHAR(20),
    city VARCHAR(20)
);
INSERT INTO employees VALUES
(101, 'Amit',   60000, 'IT',       'Pune'),
(102, 'Rina',   45000, 'HR',       'Mumbai'),
(103, 'Karan',  70000, 'Finance',  'Delhi'),
(104, 'Neha',   50000, 'IT',       'Bangalore'),
(105, 'Suresh', 80000, 'Admin',    'Chennai'),
(106, 'Priya',  65000, 'IT',       'Mumbai'),
(107, 'Anita',  48000, NULL,       'Pune');


select * from employees;

-- Questions
-- 1. Increase salary of all employees by 5000.
-- 2.  Calculate annual salary (salary × 12) for each employee.
-- 3. Find employees whose monthly salary × 2 > 100000.
-- 4. Display employees whose salary is even number.
-- 5. Reduce salary by 10% for HR department employees.
-- 6. Find employees whose salary greater than 60000.
-- 7. Display employees whose department is IT.
-- 8. Find employees whose salary not equal to 50000
-- 9. Find employees whose salary is between 40000 and 70000.
-- 10. Display employees whose emp_id less than or equal to 105.
-- 11. Find employees working in IT department and salary > 60000.
-- 12. Display employees who are in IT or HR department.
-- 13. Find employees who are not from Mumbai.
-- 14. Find employees whose salary is greater than 50000 and less than 80000.
-- 15. Display employees who are not in IT department.
-- 16. Find employees whose department is IT, HR, Finance.
-- 17. Display employees whose salary is between 50000 and 70000.
-- 18. Find employees whose name starts with 'A'.
-- 19. Display employees whose city ends with 'i'.
-- 20. Find employees whose department is NULL.



-- 1. Increase salary of all employees by 5000.
select emp_name, salary+5000 increased_sal 
from employees;


-- 2.  Calculate annual salary (salary × 12) for each employee.
select emp_name, salary*12 annual_sal 
from employees;

-- 3. Find employees whose monthly salary × 2 > 100000.
select emp_name
from employees
where (salary*2) > 100000;

-- 4. Display employees whose salary is even number.
select emp_name , salary
from employees
where salary % 2 = 0;


-- 5. Reduce salary by 10% for HR department employees.
select emp_name , salary - (salary * 0.1) as salary
from employees
where department = "HR";

-- 6. Find employees whose salary greater than 60000.
select *
from employees
where salary > 60000;

-- 7. Display employees whose department is IT.
select *
from employees
where DEPARTMENT = "IT";

-- 8. Find employees whose salary not equal to 50000
select *
from employees
where salary != 50000;

-- 9. Find employees whose salary is between 40000 and 70000.
select *
from employees
where salary between 40000 and 70000;


-- 10. Display employees whose emp_id less than or equal to 105.
select *
from employees
where emp_id <= 105;

