use db_sabya;
CREATE TABLE orders (
    order_id INT,
    customer_name VARCHAR(50),
    city VARCHAR(30),
    product VARCHAR(30),
    category VARCHAR(30),
    quantity INT,
    price INT,
    order_date DATE
);

INSERT INTO orders VALUES
(1, 'Rahul', 'Delhi', 'Mobile', 'Electronics', 2, 15000, '2024-01-10'),
(2, 'Amit', 'Mumbai', 'Laptop', 'Electronics', 1, 55000, '2024-01-12'),
(3, 'Priya', 'Pune', 'Headphones', 'Electronics', 3, 2000, '2024-01-15'),
(4, 'Suman', 'Delhi', 'Chair', 'Furniture', 4, 3000, '2024-01-18'),
(5, 'Neha', 'Bangalore', 'Table', 'Furniture', 1, 7000, '2024-01-20'),
(6, 'Rohit', 'Mumbai', 'Mobile', 'Electronics', 1, 18000, '2024-01-22'),
(7, 'Kiran', 'Pune', 'Sofa', 'Furniture', 1, 25000, '2024-01-25'),
(8, 'Anjali', 'Delhi', 'Watch', 'Accessories', 2, 5000, '2024-01-28'),
(9, 'Sunil', 'Bangalore', 'Shoes', 'Accessories', 3, 4000, '2024-02-01'),
(10, 'Pooja', 'Mumbai', 'Bag', 'Accessories', 2, 3500, '2024-02-03'),
(11, 'Ramesh', 'Delhi', 'Laptop', 'Electronics', 1, 60000, '2024-02-05'),
(12, 'Meena', 'Pune', 'Mobile', 'Electronics', 2, 16000, '2024-02-07'),
(13, 'Arjun', 'Bangalore', 'Chair', 'Furniture', 2, 3200, '2024-02-10'),
(14, 'Kavya', 'Mumbai', 'Table', 'Furniture', 1, 7500, '2024-02-12'),
(15, 'Deepak', 'Delhi', 'Shoes', 'Accessories', 1, 4200, '2024-02-15'),
(16, 'Sneha', 'Pune', 'Watch', 'Accessories', 1, 5200, '2024-02-18'),
(17, 'Vikas', 'Bangalore', 'Laptop', 'Electronics', 1, 58000, '2024-02-20'),
(18, 'Nitin', 'Delhi', 'Bag', 'Accessories', 3, 3600, '2024-02-22'),
(19, 'Asha', 'Mumbai', 'Mobile', 'Electronics', 2, 17000, '2024-02-25'),
(20, 'Manoj', 'Pune', 'Sofa', 'Furniture', 1, 26000, '2024-02-28');

-- Questions
-- 1. Find the total number of orders.

-- 2. Find the total quantity sold.

-- 3. Find the average price of products.

-- 4. Find the maximum price.

-- 5. Find the minimum price.

-- 6. Find the total sales amount (quantity * price).

-- 7. Find the average quantity per order.

-- 8. Count how many different cities are present.

-- 9. Count total number of electronics orders.

-- 10. Find total sales for Furniture category.

-- 11. Find total sales per city.

-- 12. Find total quantity sold per category.

-- 13. Find average price per product.

-- 14. Find number of orders per city.

-- 15. Find cities where total sales > 1,00,000.

-- 16. Find categories having more than 5 total items sold.

-- 17. Find maximum price per category.

-- 18. Find minimum price per city.

-- 19. Find total sales month-wise (Jan vs Feb).

-- 20. Find products whose average price > 20,000.





select * from orders;

-- 1
select count(*) as total_order 
from orders;

-- 2
select sum(quantity) as total_quantity
from orders;

-- 3
select avg(price) as average_price
from orders;

-- 4
select max(price) as max_price
from orders;

-- 5
select min(price) as min_price
from orders;

-- 6 
select sum(price * quantity) as total_sales_amount
from orders;

-- 7 
select avg(quantity)
from orders;

-- 8
select count(distinct(city))
from orders;

-- 9
select count(*) as total_number_electronics
from orders
where category = 'Electronics';

-- 10
select sum(quantity* price) as total_sale_furniture
from orders
where category = 'Furniture';

-- 11
select city , sum(quantity * price) as total_sales
from orders
group by city;

-- 12
select category , sum(quantity) as total_quantity
from orders
group by category;

-- 13
select product , avg(price) 
from orders
group by product;

-- 14
select city , count(*) as no_orders
from orders
group by city;

-- 15
select city, sum( quantity * price ) as total_sales
from orders
group by city
having sum( quantity * price ) > 100000;

-- 16
select category , sum(quantity) as total_item
from orders
group by category
having sum(quantity) > 5;

-- 17
select category, max(price)
from orders
group by category;

-- 18
select city, min(price)
from orders
group by city;

-- 19
select month(order_date) as month, sum( price * quantity) as total_sales
from orders
group by month(order_date);

-- 20
select product 
from orders
group by product
having avg(price) > 20000;























