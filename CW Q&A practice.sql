use db24;

show tables;

select * from data_tbl;


create database emp;
use emp;

create table Emps(
emp_id int primary key,
emp_name varchar(50),
department varchar(30),
salary int,
joining_date date,
city varchar(30));

insert into emps (emp_id,emp_name,department,salary,joining_date,city)
values(101,'Amit','IT',70000,'2022-03-15','Pune'),
(102,'Rina','HR',45000,'2021-06-10','Mumbai'),
(103,'Karan','Finance',60000,'2020-01-20','Delhi'),
(104,'Neha','IT',55000,'2023-02-05','Bangalore'),
(105,'Suresh','HR',48000,'2022-09-12','Chennai'),
(106,'Priya','Finance',65000,'2019-11-25','Hyderabad');

select * from emps;


-- 1. Add a new column email to the employee table
alter table emps
add email varchar(40);
select * from emps;

desc emps;

-- 2. Change the datatype of salary from int to bigint.
alter table emps
modify salary bigint;


-- 3. Rename column emp_name to first_name.
alter table emps
rename column emp_name to first_name;


-- 4. Rename the table employee to tnt_employee.
rename table emps to tnt_employee;
select * from tnt_employee;
desc tnt_employee;



-- 5. Insert a new employee record.
insert into tnt_employee
values(107,'Sabya','IT',85000,'2024-04-08','Bangalore','sdash0113@gmail.com');
select * from tnt_employee;

-- 6. Increase salary of all 'IT' employees by 10%.
update tnt_employee
set salary = salary * 1.10
where department = "IT";
select * from tnt_employee;


-- 8. Change department of 'Suresh' from HR to Finanace.
update tnt_employee
set city = "Noida"
where first_name = "Rina";
select * from tnt_employee;


-- 8. Change department of 'Suresh' from HR to Finanace.
update tnt_employee
set department = "Finance"
where first_name = "Suresh";
select * from tnt_employee;



-- 9. Delete all employees whose salary is less than 50000
delete from tnt_employee
where salary < 50000;
select * from tnt_employee;


-- 10. Display all employees who work in 'Finance'.
select * from tnt_employee
where department = "finance";












