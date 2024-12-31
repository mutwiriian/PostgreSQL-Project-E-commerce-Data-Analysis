-- Joins
select c.name, p.product_name,p.category, o.order_date as date,oi.quantity ,oi.price 
from customers c 
inner join
orders o 
on c.customer_id = o.customer_id
left join order_items oi 
on oi.order_id = o.order_id 
left join products p 
on p.product_id = oi.product_id ;

-- Window functions RANK()
with spending as (
    select o.customer_id ,sum(oi.price * oi.quantity) as spending
    from orders o
    inner join order_items oi 
    on oi.order_id = o.order_id 
    group by o.customer_id 
    )

select c.name, s.spending, rank() over (order by spending) as rank
from customers c 
inner join spending s
on c.customer_id = s.customer_id;

-- Window functions ROW_NUMBER()
select c.name,row_number() over (order by name) as order_number, o.order_date ,o.total_amount
from customers c 
inner join orders o 
on c.customer_id = o.customer_id ;

-- CTE - Total revenue per customer
with purchases as (
    select o.customer_id,oi.quantity, oi.price
    from orders o 
    inner join order_items oi 
    on o.order_id = oi.order_id
    )

select c.name, sum(p.quantity * p.price) as revenue 
from purchases p
inner join customers c 
on c.customer_id = p.customer_id
group by c.name
having sum(p.quantity * p.price) > 500;

-- Sub query - Highest price product
select product_name, price 
from products p 
where price = (select max(price) from products);

-- Indexing

--SELECT indexname
--FROM pg_indexes
--WHERE tablename = 'products';

--create unique index product_index on products (product_id); drop index product_index;
--create unique index order_index on orders (order_id, customer_id);
--create unique index order_items_index on order_items (order_item_id, order_id, product_id);\

create unique index if not exists product_index on products (product_id);

-- Check effect of indexing on query speed by matching on ".com" in email column
drop index if exists customer_index ;

explain analyze 
select *from customers 
where email ilike '%.com%';

-- Adding an index on customers table marginally increases query speed
create unique index customer_index on customers (customer_id);

explain analyze 
select * from customers 
where email ilike '%.com%';

-- Optimization
-- Adjusting indexes, improving index coverage by using a composite index
create unique index if not exists product_name_index on products (product_id, product_name);

-- Join re-ordering
-- from
explain analyze
with purchases as (
    select o.customer_id,oi.quantity, oi.price
    from orders o 
    inner join order_items oi 
    on o.order_id = oi.order_id
    )

select c.name, sum(p.quantity * p.price) as revenue 
from purchases p
inner join customers c 
on c.customer_id = p.customer_id
group by c.name
having sum(p.quantity * p.price) > 500;

-- to
explain analyze 
with purchases as (
    select o.customer_id,oi.quantity, oi.price
    from orders o 
    inner join order_items oi 
    on o.order_id = oi.order_id
    )

select c.name, sum(p.quantity * p.price) as revenue 
from customers c
inner join purchases p 
on c.customer_id = p.customer_id
group by c.name
having sum(p.quantity * p.price) > 500;

-- Rewrite entire query
-- Subquery instead of CTE
select c.name, o.order_id, oi_details.product_id, oi_details.quantity, oi_details.price
from customers c
inner join orders o
on
c.customer_id = o.order_id
inner join (
    select product_id, order_id, quantity, price
from order_items
) as oi_details on
o.order_id = oi_details.order_id;