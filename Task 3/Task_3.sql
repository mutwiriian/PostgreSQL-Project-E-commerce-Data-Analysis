-- Analytical queries

select *from customers;
select * from products;
select * from orders;
select * from order_items;

-- Calculate all revenue for the 
select sum(quantity*Price) as total_revenue
from order_items;

-- Revenue per product
select p.category , sum(p.price*oi.quantity) as revenue 
from products p 
inner join order_items oi 
on p.product_id = oi.product_id
group by p.category ;

-- Top 5 customers by total spending
select c.name,c.phone_number , round(sum(o.total_amount)::integer,2) as spending
from orders o 
inner join customers c 
on o.customer_id =c.customer_id 
group by c.customer_id 
order by spending desc
limit 5;

-- Customers without purchases
select c.name, o.customer_id
from customers c
left join orders o
on c.customer_id = o.customer_id 
where o.customer_id is null ;

-- 3 best sellig products
select oi.product_id ,sum(oi.quantity*oi.price) as sales
from order_items oi 
inner join products p
on oi.product_id = p.product_id
group by oi.product_id 
order by sales desc
limit 3;

-- Out of stock products
select product_name, stock_quantity
from products p
where p.stock_quantity = 0;

-- Items in order
select oi.order_id,p.product_name , oi.quantity ,oi.price 
from  order_items oi 
inner join products p 
on p.product_id = oi.product_id 
order by oi.order_id, oi.product_id ;

-- Total amount of an order
select o.order_id, sum(oi.quantity*oi.price) as amount 
from order_items oi 
inner join orders o 
on o.order_id = oi.order_id 
group by o.order_id
order by order_id;

-- Number of orders and revenue per month
select extract(month from o.order_date) as month,count(oi.order_id) as orders, sum(oi.quantity * oi.price) as revenue
from orders o 
inner join order_items oi 
on o.order_id  = oi.order_id 
group by month
order by month;