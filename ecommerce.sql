-- Task 2: Database setup

create table customers (
    customer_id serial primary key,
    name varchar(50) not null,
    email varchar(50) unique not null,
    phone_number varchar(15) unique not null,
    address text not null
);

create table products (
    product_id serial primary key,
    product_name varchar(100) unique not null,
    category varchar(20) not null,
    price float(2) not null,
    stock_quantity int
);

create table orders (
    order_id serial primary key,
    customer_id int references customers(customer_id),
    order_date date,
    total_amount float(2)
);

create table order_items (
    order_item_id serial primary key,
    order_id int references orders(order_id),
    product_id int references products(product_id),
    quantity int not null,
    price int not null
)
 

INSERT INTO customers (name, email, phone_number, address) VALUES
('Aisha Abubakar', 'aisha.abubakar@example.com', '0709117264', '123 Biashara Street, Eastleigh, Nairobi'),
('Benson Kiprotich', 'b.kiprotich@company.net', '0721752252', '456 Koinange Street, Nairobi CBD'),
('Catherine Wanjiku', 'c.wanjiku@mail.org', '0735233833', '789 Tom Mboya Street, Nairobi CBD'),
('David Omondi', 'david.omondi@web.io', '07100745296', '101 Moi Avenue, Nairobi CBD'),
('Esther Akinyi', 'e.akinyi@email.co.ke', '0772491745', '222 Ronald Ngala Street, Nairobi CBD'),
('Felix Musyoka', 'f.musyoka@online.com', '0766666666', '333 River Road, Nairobi CBD'),
('Grace Atieno', 'grace.atieno@mymail.com', '07753924777', '444 Accra Road, Nairobi CBD'),
('Hassan Mohammed', 'h.mohammed@domain.net', '0787833963', '555 Latema Road, Nairobi CBD'),
('Ivy Chebet', 'ivy.chebet@site.org', '0753926484', '666 Kirinyaga Road, Nairobi CBD'),
('John Kamau', 'john.kamau@mail.io', '0701234567', '777 Luthuli Avenue, Nairobi CBD'),
('Khadija Ali', 'k.ali@email.com', '0712345678', '888 Moi Drive, Nairobi West'),
('Leonard Waweru', 'leonard.waweru@web.net', '0723456789', '999 Langata South Road, Langata'),
('Mary Muthoni', 'm.muthoni@online.org', '0734567890', '1000 Karen Road, Karen'),
('Nicholas Ndegwa', 'nicholas.ndegwa@mymail.io', '0745678901', '1111 Dagoretti Road, Dagoretti'),
('Olivia Nyambura', 'o.nyambura@domain.com', '0756789012', '1212 Kiambu Road, Ruaka'),
('Peter Kioko', 'peter.kioko@site.net', '0767890123', '1313 Thika Superhighway, Kasarani'),
('Queen Waithera', 'q.waithera@mail.org', '0778901234', '1414 Kangundo Road, Komarock'),
('Robert Ochieng', 'robert.ochieng@email.io', '0789012345', '1515 Mombasa Road, Athi River'),
('Sarah Wanjiru', 's.wanjiru@web.com', '0790123456', '1616 Airport North Road, Embakasi'),
('Timothy Musau', 'timothy.musau@online.net', '0702345678', '1717 Outering Road, Umoja'),
('Ummi Bashir', 'u.bashir@mymail.org', '0713456789', '1818 Eastern Bypass, Ruai'),
('Victor Otieno', 'victor.otieno@domain.io', '0724567890', '1919 Southern Bypass, Kikuyu'),
('Winnie Achieng', 'w.achieng@site.com', '0735678901', '2020 Northern Bypass, Ruiru'),
('Xavier Kariuki', 'xavier.kariuki@mail.net', '0746789012', '2121 Redhill Road, Spring Valley'),
('Yvonne Mbithe', 'y.mbithe@email.org', '0757890123', '2222 Riverside Drive, Riverside'),
('Zachary Mwangi', 'zachary.mwangi@web.io', '0768901234', '2323 Westlands Road, Westlands'),
('Abdi Hussein', 'abdi.hussein@online.com', '0779012345', '2424 Parklands Road, Parklands'),
('Brenda Nyokabi', 'b.nyokabi@mymail.net', '0780123456', '2525 Limuru Road, Muthaiga'),
('Caleb Kipkemboi', 'caleb.kipkemboi@domain.org', '0791234567', '2626 Gigiri Road, Gigiri'),
('Doris Akinyi', 'doris.akinyi@site.io', '0703456789', '2727 Lavington Green, Lavington'),
('Edwin Wanjala', 'edwin.wanjala@mail.com', '0714567890', '2828 Valley Road, Upper Hill'),
('Faith Moraa', 'f.moraa@email.net', '0725678901', '2929 Ngong Road, Karen'),
('Geoffrey Mutua', 'geoffrey.mutua@web.org', '0736789012', '3030 Langata Road, Langata'),
('Halima Juma', 'halima.juma@online.io', '0747890123', '3131 Magadi Road, Ongata Rongai'),
('Ian Omondi', 'ian.omondi@mymail.com', '0758901234', '3232 Mombasa Road, Mlolongo'),
('Jane Wambui', 'j.wambui@domain.net', '0769012345', '3333 Kangundo Road, Tala'),
('Kevin Ouma', 'kevin.ouma@site.org', '0770123456', '3434 Thika Road, Juja'),
('Linet Chepkemoi', 'linet.chepkemoi@mail.io', '0781234567', '3535 Kiambu Road, Ruiru'),
('Moses Otieno', 'moses.otieno@email.com', '0792345678', '3636 Waiyaki Way, Westlands'),
('Naomi Wanjiru', 'n.wanjiru@web.net', '0704567890', '3737 Enterprise Road, Industrial Area'),
('Oscar Musyoka', 'o.musyoka@online.org', '0715678901', '3838 Outer Ring Road, Donholm'),
('Peninah Atieno', 'peninah.atieno@mymail.io', '0726789012', '3939 Lunga Lunga Road, Industrial Area'),
('Quentin Kamau', 'quentin.kamau@domain.com', '0737890123', '4040 Likoni Road, South C'),
('Rachel Njeri', 'r.njeri@site.net', '0748901234', '4141 Haille Selassie Avenue, Nairobi CBD'),
('Samuel Kiprono', 'samuel.kiprono@mail.org', '0759012345', '4242 Ronald Ngala Street, Nairobi CBD'),
('Teresia Achieng', 't.achieng@email.io', '0760123456', '4343 Tom Mboya Street, Nairobi CBD');



INSERT INTO products (product_name, category, price, stock_quantity) VALUES
('Sony Bravia 55" TV', 'Electronics', 80000.00, 20),
('Savon Soap', 'Detergents', 80.00, 180),
('Garnier Micellar Water', 'Skincare', 600.00, 80),
('Kimbo Cooking Oil', 'Foods', 250.00, 80),
('Samsung Galaxy S23', 'Electronics', 120000.00, 30),
('Sunlight Dishwashing Liquid', 'Detergents', 180.00, 120),
('Pears Soap', 'Skincare', 100.00, 200),
('Raha Ugali', 'Foods', 120.00, 56),
('LG Refrigerator', 'Electronics', 60000.00, 15),
('Ariel Washing Powder', 'Detergents', 300.00, 75),
('Vaseline Petroleum Jelly', 'Skincare', 200.00, 150),
('Jogoo Maize Flour', 'Foods', 150.00, 100),
('Hisense Microwave', 'Electronics', 15000.00, 40),
('Jik Bleach', 'Detergents', 150.00, 90),
('Nivea Moisturizing Cream', 'Skincare', 450.00, 100),
('Brookside Milk', 'Foods', 60.00, 200),
('Skyworth 32" TV', 'Electronics', 25000.00, 35),
('Dettol Antiseptic Liquid', 'Detergents', 400.00, 60),
('Pemba Unga', 'Foods', 130.00, 90),
('Fresh Fri Cooking Oil', 'Foods', 280.00, 60);



INSERT INTO orders (customer_id, order_date, total_amount) VALUES
(22, '2024-06-15', 125.50),
(4, '2024-07-07', 300.00),
(45, '2024-09-20', 75.00),
(22, '2024-08-03', 450.75),
(8, '2024-09-11', 220.20),
(36, '2024-08-18', 95.80),
(27, '2024-09-09', 180.50),
(4, '2024-08-07', 375.25),
(29, '2024-08-06', 60.00),
(11, '2024-07-06', 520.90),
(38, '2024-06-07', 110.75),
(4, '2024-08-12', 280.00),
(43, '2024-09-06', 85.20),
(18, '2024-08-14', 410.50),
(46, '2024-09-10', 195.00),
(22, '2024-06-02', 70.75),
(11, '2024-07-17', 330.20),
(16, '2024-07-05', 105.50),
(43, '2024-06-13', 250.00),
(36, '2024-09-08', 100.00),
(27, '2024-08-01', 170.80),
(9, '2024-09-19', 390.25),
(33, '2024-06-07', 65.00),
(22, '2024-07-15', 550.75),
(11, '2024-08-03', 130.20),
(18, '2024-09-11', 210.00),
(36, '2024-07-18', 90.50),
(16, '2024-08-09', 480.25),
(14, '2024-08-16', 160.75),
(4, '2024-06-04', 310.00),
(27, '2024-08-12', 70.00),
(5, '2024-07-06', 500.50),
(42, '2024-08-14', 145.20),
(18, '2024-07-10', 260.75),
(3, '2024-07-02', 80.00),
(9, '2024-09-20', 430.25),
(4, '2024-09-08', 100.50),
(23, '2024-08-17', 360.00),
(36, '2024-06-05', 175.00),
(16, '2024-07-13', 290.75);



INSERT INTO order_items (order_id, product_id, quantity, price) VALUES
(1, 8, 1, 120),
(2, 4, 1, 250),
(3, 2, 1, 80),
(4, 5, 1, 120000),
(5, 1, 1, 80000),
(6, 2, 1, 80),
(7, 12, 1, 150),
(8, 4, 1, 250),
(8, 12, 1, 150),
(9, 2, 1, 80),
(10, 5, 1, 120000), 
(10, 1, 1, 80000),
(10, 9, 1, 60000),
(11, 2, 1, 80),
(11, 14, 1, 150),
(12, 4, 1, 250),
(12, 12, 1, 150),
(13, 2, 1, 80),
(14, 5, 1, 120000),
(14, 1, 1, 80000), 
(14, 9, 1, 60000),
(15, 1, 2, 80000),
(15, 12, 1, 150),
(16, 2, 1, 80),
(17, 5, 2, 120000),
(17, 2, 1, 80),
(18, 2, 1, 80), 
(18, 14, 1, 150),
(19, 5, 1, 120000),
(19, 9, 1, 60000),
(20, 2, 1, 80),
(21, 12, 1, 150), 
(21, 8, 1, 120),
(22, 2, 1, 80),
(23, 2, 1, 80),
(23, 14, 1, 150),
(24, 5, 1, 120000), 
(24, 1, 1, 80000),
(25, 2, 1, 80),
(26, 1, 2, 80000),
(26, 12, 1, 150),
(27, 2, 1, 80), 
(27, 14, 1, 150),
(28, 4, 1, 250), 
(28, 12, 1, 150),
(29, 2, 1, 80),
(30, 5, 1, 120000), 
(30, 1, 1, 80000), 
(30, 9, 1, 60000),
(31, 2, 1, 80), 
(31, 14, 1, 150),
(32, 4, 1, 250), 
(32, 12, 1, 150),
(33, 2, 1, 80),
(34, 5, 1, 120000), 
(34, 9, 1, 60000),
(35, 1, 2, 80000),
(35, 12, 1, 150),
(36, 2, 1, 80),
(37, 2, 1, 80), 
(37, 14, 1, 150),
(38, 4, 1, 250), 
(38, 12, 1, 150),
(39, 2, 1, 80),
(40, 5, 1, 120000),
(40, 1, 1, 80000),
(40, 9, 1, 60000);
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
select c.name
from customers c
left join orders o
on c.customer_id = o.customer_id 
where o.customer_id is null ;

-- 3 best selling products
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
where o.order_id = 7
group by o.order_id
order by order_id;

-- Number of orders and revenue per month
select extract(month from o.order_date) as month,count(oi.order_id) as orders, sum(oi.quantity * oi.price) as revenue
from orders o 
inner join order_items oi 
on o.order_id  = oi.order_id 
group by month
order by month;

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




















