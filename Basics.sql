-- Create a Database
CREATE DATABASE mydatabase;

-- Switch to the database
USE mydatabase;

-- Create a Table
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100),
    age INT
);

INSERT INTO users (name, email, age) VALUES ('John Doe', 'john@example.com', 30);
INSERT INTO users (name, email, age) VALUES ('Jane Smith', 'jane@example.com', 25);

-- Select all columns from the users table
SELECT * FROM users;

-- Select specific columns
SELECT name, email FROM users;

-- Filtering records (WHERE clause)
SELECT * FROM users WHERE age > 25;

SET SQL_SAFE_UPDATES = 0;

-- updating data
UPDATE users SET age = 26 WHERE name = 'Jane Smith';

-- delete
DELETE FROM users WHERE name = 'John Doe';

-- COUNT(): Returns the number of rows.
SELECT COUNT(*) FROM users;

-- SUM(): Adds up the values of a column.
SELECT SUM(age) FROM users;

-- AVG(): Returns the average value of a column.
SELECT AVG(age) FROM users;

-- GROUP BY groups rows sharing a property, often used with aggregation functions. HAVING filters the result of a GROUP BY.
SELECT age, COUNT(*) FROM users
GROUP BY age;

SELECT age, COUNT(*) FROM users
GROUP BY age
HAVING COUNT(*) > 0;

SELECT * FROM users WHERE age > (SELECT AVG(age) FROM users);



