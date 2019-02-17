DROP DATABASE IF EXISTS bamazonDB;

CREATE DATABASE bamazonDB;

USE bamazonDB;

CREATE TABLE products (
  item_id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(45) NULL,
  department_name VARCHAR(100) NULL,
  price DECIMAL(10,2) NULL,
  stock_quantity INT NULL,
  PRIMARY KEY (item_id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Hot Cocoa", "grocery", 6.95, 225);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Coconut Water", "grocery", 20.86, 173);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("comforter", "household", 21.85, 50);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Batteries", "household", 13.99, 76);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("headphones", "household", 23.99, 27);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("chair", "office supplies", 118.96, 67);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("gloves", "hardware", 6.95, 98);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("light", "hardware", 36.95, 17);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("paper towels", "household", 11.95, 117);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("coffee", "grocery", 6.95, 57);

-- ### Alternative way to insert more than one row
-- INSERT INTO products (flavor, price, quantity)
-- VALUES ("vanilla", 2.50, 100), ("chocolate", 3.10, 120), ("strawberry", 3.25, 75);
