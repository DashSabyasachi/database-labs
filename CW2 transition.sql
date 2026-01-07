use db_sabya;
show tables;
select * from orders;
-- 1. Find the total number of orders.
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








