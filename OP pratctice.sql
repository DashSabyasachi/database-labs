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

