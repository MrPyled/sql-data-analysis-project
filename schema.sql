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
);