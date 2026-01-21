use db_sabya;
create table class1(
	roll_num int,
    name varchar(20)
	);
desc class1;
insert into class1 values
 (101, "Ankit"),
 (102, "Shashi"),
 (103, "Sabyasachi");

select * from class1;

create table class2(
	roll_num int,
    name varchar(20));
    
insert into class2 values 
(103, "Sabyasachi"),
(104, "Nutan"),
(105, "Sumit");
select * from class2;

-- UNION
select * from class1
union
select * from class2;

-- UNION ALL
select * from class1
union all
select * from class2;

-- INTERSECT
select * from class1
intersect
select * from class2;

-- MINUS/EXCEPT
select * from class1
except
select * from class2;