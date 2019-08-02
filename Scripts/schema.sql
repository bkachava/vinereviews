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

-- vine table for shoes data set
CREATE TABLE vine_table_sho (
  review_id TEXT PRIMARY KEY,
  star_rating INTEGER,
  helpful_votes INTEGER,
  total_votes INTEGER,
  vine TEXT
);

-- vine table for apparel data set
CREATE TABLE vine_table_app (
  review_id TEXT PRIMARY KEY,
  star_rating INTEGER,
  helpful_votes INTEGER,
  total_votes INTEGER,
  vine TEXT
);

-- Table for updating the counts for the second dataset
CREATE TABLE repcustomers (
  customer_id INT PRIMARY KEY NOT NULL UNIQUE,
  cdb_count INT,
  customer_count INT,
  shoes BOOLEAN DEFAULT FALSE
);

