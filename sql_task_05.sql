CREATE DATABASE sql_task_5;
USE sql_task_5;

CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10,2),
    stock INT
);

CREATE TABLE sales (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    quantity INT,
    sale_date DATE,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Create users with passwords
CREATE USER 'admin_user'@'localhost' IDENTIFIED BY 'AdminPass123';
CREATE USER 'editor_user'@'localhost' IDENTIFIED BY 'EditorPass123';
CREATE USER 'viewer_user'@'localhost' IDENTIFIED BY 'ViewerPass123';

GRANT ALL PRIVILEGES ON sql_task_5.* TO 'admin_user'@'localhost' WITH GRANT OPTION;
GRANT SELECT, INSERT, UPDATE, DELETE ON sql_task_5.* TO 'editor_user'@'localhost';
GRANT SELECT ON sql_task_5.* TO 'viewer_user'@'localhost';

SHOW GRANTS FOR 'admin_user'@'localhost';
SHOW GRANTS FOR 'editor_user'@'localhost';
SHOW GRANTS FOR 'viewer_user'@'localhost';

REVOKE INSERT, UPDATE, DELETE ON sql_task_5.* FROM 'editor_user'@'localhost';
