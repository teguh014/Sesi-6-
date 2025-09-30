CREATE DATABASE IF NOT EXISTS ecommerce;
USE ecommerce;

-- tabel products
CREATE TABLE IF NOT EXISTS products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nama_produk VARCHAR(100) NOT NULL,
    harga INT NOT NULL,
    deskripsi TEXT,
    stok INT NOT NULL
);

-- tabel users
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL
);

-- tabel orders
CREATE TABLE IF NOT EXISTS orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    total INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (product_id) REFERENCES products(id)
);

-- CREATE 
INSERT INTO products (nama_produk, harga, deskripsi, stok)
VALUES ('Laptop ASUS', 8000000, 'Laptop ASUS Core i5', 10);

-- READ 
SELECT * FROM products;

-- UPDATE 
UPDATE products
SET harga = 7500000, stok = 8
WHERE id = 1;

-- cek hasil update
SELECT * FROM products;

-- DELETE 
DELETE FROM products WHERE id = 1;

-- cek hasil delete
SELECT * FROM products;
