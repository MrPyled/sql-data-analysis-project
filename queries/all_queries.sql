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

