CREATE TABLE review_id_table (
  review_id TEXT PRIMARY KEY NOT NULL,
  customer_id INTEGER,
  product_id TEXT,
  product_parent INTEGER,
  review_date DATE -- this should be in the formate yyyy-mm-dd
);

-- This table will contain only unique values
CREATE TABLE products (
  product_id TEXT PRIMARY KEY NOT NULL UNIQUE,
  product_title TEXT
);

-- Customer table for first data set
CREATE TABLE customers (
  customer_id INT PRIMARY KEY NOT NULL UNIQUE,
  customer_count INT
);

-- vine table
CREATE TABLE vine_table (
  review_id TEXT PRIMARY KEY,
  star_rating INTEGER,
  helpful_votes INTEGER,
  total_votes INTEGER,
  vine TEXT
);



CREATE TABLE repcustomers (
  customer_id INT PRIMARY KEY NOT NULL UNIQUE,
  cdb_count INT,
  customer_count INT,
  shoes BOOLEAN DEFAULT FALSE
);

UPDATE customers
SET customer_count = 
   (SELECT repcustomers.customer_count + repcustomers.cdb_count AS s
      FROM repcustomers
      WHERE repcustomers.customer_id = customers.customer_id);

	 
CREATE TABLE vine_table_app (
  review_id TEXT PRIMARY KEY,
  star_rating INTEGER,
  helpful_votes INTEGER,
  total_votes INTEGER,
  vine TEXT
);


select * from customers where customer_id = 15957
select * from customers where customer_id = 10206


BEGIN;
UPDATE customers
SET customer_count = 
   (SELECT repcustomers.customer_count + repcustomers.cdb_count AS s
      FROM repcustomers
      WHERE repcustomers.customer_id = customers.customer_id
      AND repcustomers.customer_id < 50000);
COMMIT;
VACUUM customers;

