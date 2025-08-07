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