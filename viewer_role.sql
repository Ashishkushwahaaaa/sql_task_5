SELECT USER();
SELECT * FROM products;  -- ✅ works
INSERT INTO products (product_name, price, stock) VALUES ('Tablet', 500, 5); -- ❌ should fail
