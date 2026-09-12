-- part A --

create database ecommerce_db;
use ecommerce_db;
create table products (
    product_id int PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    brand VARCHAR(50),
    price DECIMAL(10,2),
    quantity int,
    city VARCHAR(50),
    status VARCHAR(20)
);
DESC products;
show tables;

-- part B --

insert into products
values (201, 'Galaxy M55', 'Mobile', 'Samsung', 32000, 15, 'Pune', 'Available');

insert into products
values (202, 'iPhone 15', 'Mobile', 'Apple', 65000, 8, 'Mumbai', 'Available');

insert into products
values (203, 'Moto Edge 50', 'Mobile', 'Motorola', 28000, 20, 'Pune', 'Available');

insert into products
values (204, 'Inspiron 15', 'Laptop', 'Dell', 58000, 6, 'Nashik', 'Available');

insert into products
values (205, 'IdeaPad Slim 3', 'Laptop', 'Lenovo', 45000, 12, 'Mumbai', 'Available');

insert into products
values (206, 'Galaxy Watch 6', 'Watch', 'Samsung', 22000, 4, 'Pune', 'Out of Stock');

insert into products
values (207, 'Apple Watch SE', 'Watch', 'Apple', 30000, 10, 'Mumbai', 'Available');

insert into products
values (208, 'Redmi Pad', 'Tablet', 'Xiaomi', 24000, 18, 'Pune', 'Available');

insert into products
values (209, 'OnePlus Pad', 'Tablet', 'OnePlus', 35000, 5, 'Nashik', 'Available');

insert into products
values (210, 'Bluetooth Speaker', 'Accessories', 'JBL', 7000, 25, 'Mumbai', 'Available');

-- part C --

select * from products;
select product_name from products;
select product_name, price from products;
select product_name, category, brand, price from products;

select * from products
where city = 'Pune';

select * from products
where city = 'Mumbai';

select * from products
where category = 'Mobile';

select * from products
where category = 'Laptop';

select * from products
where price > 30000;

select * from products
where price < 30000;

select * from products
where price = 35000;

select * from products
where price >= 45000;

select * from products
where price <= 30000;

select * from products
where quantity > 10;

select * from products
where quantity < 10;

-- part D --

select * from products
where city= 'Pune' AND category='Mobile';

select * from products
where city= 'mumbai' AND status='available';

select * from products
where price>30000 AND quantity>5;

select * from products
 where price >= 30000 AND price <= 60000;
 
select * from products
where city = 'Pune' OR city='mumbai';

select * from products
where  category='Mobile' OR category='Laptop'; 

select * from products
where quantity < 10 OR price > 50000;
 
select * from products
where category = 'Mobile' AND price > 30000;

select * from products
where brand = 'Samsung' OR brand = 'Apple';

select * from products
where city = 'Pune' AND status = 'Available' AND quantity > 10;

-- part E --

select * from products
where price BETWEEN 25000 and 50000;

select * from products
where quantity BETWEEN 5 and 15;

select * from products
where category IN ('Mobile', 'Laptop', 'Tablet');

select * from products
where  city IN ('Pune', 'Mumbai');

select * from products
where  brand != ('Samsung');

select * from products
where  status != ('Out of Stock');

select * from products
where price != 30000;

select * from products
where product_name like 'Galaxy%';

select * from products
where product_name like '%Pad%';

select * from products
where  category = 'Mobile' AND (price > 30000 OR quantity > 15);

-- part F --

SET SQL_SAFE_UPDATES = 0; -- for safe mode off 

update products
set price=34000
where product_name='Galaxy M55';


update products
set quantity = 12
where product_name = 'iPhone 15';


update products
set status = 'Available'
where product_name = 'Galaxy Watch 6'
and status = 'Out of Stock';


update products
set price = price + 2000
where category = 'Mobile';


update products
set quantity = quantity + 5
where city = 'Pune';


update products
set status = 'Out of Stock'
where quantity < 5;

-- part G --

delete from products
where product_id = 210;

delete from products
where price < 8000;

delete from products
where status = 'Out of Stock'
and quantity < 5;

delete from products
where category = 'Tablet'
and price > 30000;



