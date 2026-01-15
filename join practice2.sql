use joins;

CREATE TABLE students (
    student_id INT,
    student_name VARCHAR(30),
    course_id INT
);

INSERT INTO students VALUES
(1, 'Rahul', 101),
(2, 'Anita', 102),
(3, 'Suresh', 103),
(4, 'Pooja', NULL),
(5, 'Amit', 101);

CREATE TABLE courses (
    course_id INT,
    course_name VARCHAR(30)
);

INSERT INTO courses VALUES
(101, 'Python'),
(102, 'SQL'),
(103, 'Selenium'),
(104, 'DevOps');


select * from courses;

-- 1. Display students name and course name for student who are enrolled in a course?
-- 2. Find students who are enrolled in the 'Python' course?
-- 3. Display all students, even if they are not enrolled in any course.
-- 4. Display all courses, even if no students is enrolled.
-- 5. Find courses which have no students.
-- 6. Show student count per course, include student without course.

-- 1
select s.student_name , c.course_name
from students s
inner join courses c
on s.course_id = c.course_id;


-- 2
select s.student_name , c.course_name
from students s
inner join courses c
on s.course_id = c.course_id
where course_name = "Python";


-- 3
select s.student_name , c.course_name
from students s
left join courses c
on s.course_id = c.course_id;

-- 4
 select s.student_name , c.course_name
from students s
right join courses c
on s.course_id = c.course_id;


-- 5
select  c.course_name, s.student_name
from courses c
left join students s
on s.course_id = c.course_id
where student_name is null;

-- 6
select  c.course_name, count(student_id) as total_students
from courses c
left join students s
on s.course_id = c.course_id
group by course_name
union
select 'No course' as course_name, count(*) as total_students 
from students
where course_id is null;






