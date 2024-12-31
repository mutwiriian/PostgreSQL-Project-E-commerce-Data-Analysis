# Ecommerce platform database modeling and analysis in PostrgreSQL
This project demonstrates the application of SQL skills in joins,
aggregations and optimization to design and implement an efficient schema 
for an E-commerce platform. 

The following is further documentation on each task for submission

## Task 1: Database Design
The database contains for tables; `customers`, `products `, `orders` and `order_items`.
We establish a relationship between the `orders` and `customers` table through a
foreign key column `customer_id` in the `customers` table to the `customer_id` column in
the `orders` table. 
The `order_items` table contains product and  customer information for each made by 
customers. `order_id` and `product_id` columns in `order_item` link to the `order_id`
and `product_id` columns in `orders` and `products` tables. The ER diagram below provides 
a visual representation of the schema

![Schema](./Task 1/ecommerce.png)

## Task 2: Database Setup
To implement the schema in the database, 
we call `create table if not exists <table_name> (<col_1>,<col_2?>, ...)` for each table 
and the corresponding constraints and relationships in the columns. 

![create_tables](./Task 2/Task 2 Screenshot 1.png)

To persist data, 
we call `insert  into <table_name> (<col_1>, <col_2>, ...) values (<val_1, <val_2>, ...)` for each table.
![Customers](./Task 2/Task 2 Screenshot 2.png)

![Products](./Task 2/Task 2 Screenshot 3.png)

![Orders](./Task 2/Task 2 Screenshot 4.png)

![Order Items](./Task 2/Task 2 Screenshot 5.png)

## Task 3 - Analytical Queries
### Revenue Analysis
To calculate the total revenue by the platform we run the following query

![Revenue](./Task 3/Task 3 Screenshot 1.png)

To find the total revenue per product

![Revenue-Product](./Task 3/Task 3 Screenshot 2.png)

### Customer Insights
To extract the top 5 customers by spending we run

![Top 5 Customers](./Task 3/Task 3 Screenshot 3.png)

To identify the customers who have not made a purchase 

![No Purchase](./Task 3/Task 3 Screenshot 4.png)

### Product Trends
To find the 3 best selling product we run

![No Purchase](./Task 3/Task 3 Screenshot 5.png)

To identify the products that have ran out of stock we call the following query.

![No Stock](./Task 3/Task 3 Screenshot 6.png)

### Order Details
To retrieve all items in a specific order we call 

![Items in order](./Task 3/Task 3 Screenshot 7.png)

To view the amount a given order call

![Order amount](./Task 3/Task 3 Screenshot 8.png)

### Monthly Trends
To calculate orders and revenue per month

![By month](./Task 3/Task 3 Screenshot 9.png)

## Task 4 - Advanced SQL Concepts
### Joins
To query data from multiple tables joins as follows

![Joins](./Task 4/Task 4 Screenshot 1.png)

### Window functions
To rank customers based on total spending tun the following

![Rank](./Task 4/Task 4 Screenshot 2.png)

To assign a unique number to each order for a customer run

![Row number](./Task 4/Task 4 Screenshot 3.png)

### CTEs and Sub-queries
To calculate total revenue per customer and find customers spending
more than $500 proceed as follows

![More then $500](./Task 4/Task 4 Screenshot 4.png)

To find the product with the highest price use a sub-query as follows

![More then $500](./Task 4/Task 4 Screenshot 5.png)

## Indexing
Use `explain analyze` to demonstrate efficiency of adding index columns
![Product index](./Task 4/Task 4 Screenshot 6.png)

![Customer index](./Task 4/Task 4 Screenshot 7.png)

## Optimization
![Index optimization](./Task 4/Task 4 Screenshot 8.png)

![Reordering joins](./Task 4/Task 4 Screenshot 9.png)

Rewrite CTE to sub-query

![CTE to subquery](./Task 4/Task 4 Screenshot 10.png)


























 

