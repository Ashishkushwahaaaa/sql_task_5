SELECT user();
-- Works (full power)
DROP TABLE sales;
CREATE USER 'new_user'@'localhost' IDENTIFIED BY 'NewPass';
SELECT * FROM sales;

REVOKE INSERT, UPDATE, DELETE ON sql_task_5.* FROM 'editor_user'@'localhost';
