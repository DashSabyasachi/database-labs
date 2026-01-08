use db_sabya;
show tables;
select * from orders;


select count(*) as total_orders
from orders;

select sum(quantity) as total_quantity
from orders;

select avg(price) as avg_price
from orders;

select max(price) as max_price 
from orders;

select min(price) as max_price 
from orders;

select sum( quantity * price) as total_sales_amount 
from orders;

select avg(quantity) as avg_quantity
from orders;

select count(distinct city) from orders;

select count(*) as total_number_electronics
from orders
where category = "Electronics";


select count(*) as total_number_Furniture
from orders
where category = "Furniture";


select city , sum(quantity * price) as total_sales_per_city
from orders 
group by city;


select category, sum(quantity) 
from orders
group by category;


select product, avg(price)
from orders
group by product;


select city , count(*) as number_of_order
from orders
group by city;


select city , sum(quantity * price)
from orders
group by city 
having sum(quantity * price) > 100000;


select category, sum(quantity)
from orders
group by category
having sum(quantity) > 5;


select category , max(price)
from orders
group by category;
 


