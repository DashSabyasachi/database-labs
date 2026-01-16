use joins;
show tables;
CREATE TABLE emp_2 (
    emp_id INT,
    emp_name VARCHAR(30),
    manager_id INT
);
INSERT INTO emp_2 VALUES
(1, 'Amit',   NULL),
(2, 'Rina',   1),
(3, 'Karan',  1),
(4, 'Neha',   2),
(5, 'Suresh', 2),
(6, 'Priya',  3);

select * from emp_2;

select t1.emp_name as employee, t2.emp_name as manager
from emp_2 t1
inner join emp_2 t2
on t1.manager_id = t2.emp_id;


-- SQL JOIN PRACTICE QUESTIONS FOR TABLE CUSTOMER WITH ORDERS


-- Q1. Show customer name and order amount.
-- Q2. List all orders placed by Rahul.
-- Q3. Show customer name, city, order amount.
-- Q4. Show all customers, even if they have not placed any order.
-- Q5. Find customers who never placed an order.
-- Q6. Show all orders, even if the customer does not exist.
-- Q7. Find orders without valid customers.
-- Q8. Count number of orders per customer.
-- Q9. Show total order amount per customer.
-- Q10. Show customer name with highest order amount.
-- Q11. Find customers whose total order amount > 6000.
-- Q12. Show city-wise total order amount.
-- Q13. Show customers who placed more than 1 order.
-- Q14. Find the latest order date for each customer.


-- 1
SELECT c.customer_name, o.order_amount
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;

-- 2
select c.customer_name, o.*
from customers c
inner join orders o
on c.customer_id = o.customer_id
where customer_name = "Rahul";


