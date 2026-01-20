use db_sabya;
CREATE TABLE students (
    student_id INT,
    student_name VARCHAR(30),
    subject VARCHAR(20),
    marks INT,
    exam_date DATE
);
INSERT INTO students VALUES
(1,  'Amit',   'Maths',    85, '2024-01-10'),
(2,  'Rina',   'Maths',    90, '2024-01-10'),
(3,  'Karan',  'Maths',    90, '2024-01-10'),
(4,  'Neha',   'Maths',    75, '2024-01-10'),
(5,  'Suresh', 'Maths',    60, '2024-01-10'),
(6,  'Priya',  'Science',  88, '2024-01-12'),
(7,  'Rahul',  'Science',  92, '2024-01-12'),
(8,  'Anita',  'Science',  88, '2024-01-12'),
(9,  'Vikas',  'Science',  70, '2024-01-12'),
(10, 'Pooja',  'Science',  60, '2024-01-12'),
(11, 'Arjun',  'English',  95, '2024-01-15'),
(12, 'Kavya',  'English',  85, '2024-01-15'),
(13, 'Rohit',  'English',  85, '2024-01-15'),
(14, 'Sneha',  'English',  72, '2024-01-15'),
(15, 'Manoj',  'English',  60, '2024-01-15');

select * from students;


select *, count(subject)
from students
group by subject;

-- row_number()
select student_name, marks, subject, 
	row_number() over(partition by subject order by marks desc) as rownum
from students;


-- rank()
select student_name , marks, subject,
   rank() over(partition by subject order by marks desc) as rnk
from students;



-- dense_rank()
select student_name, marks, subject,
	dense_rank() over(partition by subject order by marks desc)as dnsrnk
from students;

-- count(), sum() , avg(), max(), min()
select student_name, marks, subject,
avg(marks) over(partition by subject ) as avg_marks
from students;

select student_name, marks, subject,
count(student_id) over(partition by subject ) as avg_marks
from students;


