SELECT USER();

-- Works
INSERT INTO products (product_name, price, stock) VALUES ('Tabs', 8000, 5);
UPDATE products SET stock = 20 WHERE product_id = 1;

-- Fails
CREATE USER 'temp_user'@'localhost' IDENTIFIED BY 'TempPass';

-- Viewing data
SELECT * FROM products;

SELECT USER(), CURRENT_USER();