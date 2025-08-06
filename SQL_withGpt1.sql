/*use learn_with_gpt;

create table if not exists customers(
	customer_id int primary key auto_increment,
    first_name varchar(20),
    last_name varchar(20),
    city varchar(20),
    unique(first_name,last_name)
);
create table if not exists products	(
	product_id int primary key auto_increment,
    product_name varchar(35),
    price int NOT null,
    category varchar(15)
);
create table if not exists orders(
	order_id int primary key auto_increment,
    customer_id int ,
    order_date date,
    foreign key(customer_id) references customers(customer_id)
);
create table if not exists order_details(
	order_detail_id int primary key auto_increment,
    order_id int ,
    product_id int,
    quantity mediumint,
    foreign key(product_id) references products(product_id),
    foreign key(order_id) references orders(order_id)
);*/
-- show tables;
/*
ALTER table customers add column email varchar(50) after first_name;
INSERT INTO customers (first_name, last_name, email, city) VALUES
('Ahmed', 'Ali', 'ahmed.ali@example.com', 'Cairo'),
('Sara', 'Hassan', 'sara.hassan@example.com', 'Alexandria'),
('Mohamed', 'Sayed', 'mohamed.sayed@example.com', 'Giza'),
('Layla', 'Adel', 'layla.adel@example.com', 'Tanta'),
('Youssef', 'Fathy', 'youssef.fathy@example.com', 'Mansoura'),
('Nour', 'Kamel', 'nour.kamel@example.com', 'Zagazig'),
('Omar', 'Mahmoud', 'omar.mahmoud@example.com', 'Aswan'),
('Dina', 'Lotfy', 'dina.lotfy@example.com', 'Cairo'),
('Hany', 'Mostafa', 'hany.mostafa@example.com', 'Fayoum');
INSERT INTO products (product_name, price, category) VALUES
('Laptop Dell Inspiron', 850.00, 'Electronics'),
('Smartphone Samsung S22', 999.99, 'Electronics'),
('Wireless Mouse Logitech', 25.50, 'Accessories'),
('Bluetooth Headphones', 59.99, 'Accessories'),
('Office Chair', 120.00, 'Furniture'),
('Desk Lamp', 35.00, 'Furniture'),
('USB-C Cable', 12.00, 'Accessories'),
('External Hard Drive 1TB', 75.00, 'Electronics'),
('Monitor 24 inch', 140.00, 'Electronics');
INSERT INTO orders (customer_id, order_date) VALUES
(1, '2025-07-01'),
(2, '2025-07-02'),
(3, '2025-07-02'),
(1, '2025-07-03'),
(4, '2025-07-04'),
(5, '2025-07-04'),
(6, '2025-07-05'),
(7, '2025-07-06'),
(8, '2025-07-06');
INSERT INTO order_details (order_id, product_id, quantity) VALUES
(1, 1, 1),
(1, 3, 2),
(2, 2, 1),
(3, 4, 1),
(4, 1, 1),
(4, 5, 1),
(5, 6, 2),
(6, 1, 1),
(6, 9, 1),
(7, 7, 3),
(8, 8, 1),
(8, 2, 1),
(9, 3, 1),
(9, 4, 1);
select count(customer_id) as allcus from customers;
select DISTINCT city from customers;
select category
from products
group by category;
select avg(price) as avg_price from products;
select * from products where price > 100;

select * from customers
join orders ON 
customers.customer_id = orders.customer_id;
use learn_with_gpt;
select sum(quantity) from order_details;

select *,(quantity * price) as all_amount from order_details join products on order_details.product_id = products.product_id;
select sum(quantity * price) as all_amount from order_details join products on order_details.product_id = products.product_id;
select c.customer_id,concat(c.first_name," ",c.last_name) as all_name,(od.quantity * pr.price) as all_amount  from orders as o join customers as c on o.customer_id = c.customer_id
join order_details as od on o.order_id = od.order_id
join products as pr on pr.product_id = od.product_id
order by od.quantity * pr.price desc
limit 1;
select pr.category,sum(od.quantity) from order_details as od join products as pr on od.product_id = pr.product_id group by pr.category order by pr.category asc limit 1;
select ors.order_date,month(ors.order_date) as "the month",sum(ord.quantity) as "quantity" from orders as ors join order_details as ord  on ors.order_id = ord.order_id group by order_date order by sum(ord.quantity) desc;*/
use learn_with_gpt;
-- select pr.category,sum(od.quantity) from orders as os join order_details as od on os.order_id = od.order_id join products as pr on pr.product_id = od.product_id group by pr.category;
select * from customers where city = (select city from customers where city = "Cairo" limit 1);
select * from products where price > (select avg(price) from products);
-- اعرض أسماء المنتجات التي سعرها أعلى من متوسط الأسعار في جدول products.
select * from customers as cs join order_details as os on cs.customer_id = cs.customer_id 


-- اعرض أسماء الزبائن الذين قاموا بعملية شراء واحدة على الأقل.





