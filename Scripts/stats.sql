--Total reviews
SELECT COUNT(*) FROM review_id_table;

--Total unique customers
SELECT COUNT(*) FROM customers;

--Total unique products
SELECT COUNT(*) FROM products;

--Total reviews for shoes
SELECT COUNT(*) FROM vine_table_sho;

--Total reviews for apparel
SELECT COUNT(*) FROM vine_table_app;

--Customer with more reviews
SELECT MAX(customer_count) FROM customers;

--Top 10 customers with more reviews
SELECT * FROM customers ORDER BY customer_count DESC LIMIT 10;

--Top 10 products with more reviews
SELECT rev.product_id, prod.product_title, COUNT(*) 
FROM review_id_table AS rev, products AS prod
WHERE rev.product_id = prod.product_id
GROUP BY rev. product_id, prod.product_title
ORDER BY COUNT(*) DESC LIMIT 10;

-- Reviews for shoes by star rating 
SELECT star_rating, vine, COUNT(*)
FROM vine_table_sho
GROUP BY star_rating, vine;

-- Reviews for apparel by star rating 
SELECT star_rating, vine, COUNT(*)
FROM vine_table_app
GROUP BY star_rating, vine;

-- Vine reviews for shoes top 5 customers
SELECT customer_id, COUNT(*)
FROM vine_table_sho AS vine, review_id_table AS rev
WHERE vine.review_id = rev.review_id AND vine = 'Y'
GROUP BY customer_id
ORDER BY COUNT(*) DESC LIMIT 5;

-- Vine reviews for apparel top 5 customers
SELECT customer_id, COUNT(*)
FROM vine_table_app AS vine, review_id_table AS rev
WHERE vine.review_id = rev.review_id AND vine = 'Y'
GROUP BY customer_id
ORDER BY COUNT(*) DESC LIMIT 5;

-- Vine reviews for shoes 5 star rating (462)
SELECT rev.customer_id, COUNT(*)
FROM vine_table_sho AS vine, review_id_table AS rev
WHERE vine.review_id = rev.review_id AND star_rating = 5 AND vine = 'Y'
GROUP BY customer_id
ORDER BY COUNT(*) DESC LIMIT 10;

-- Vine reviews for shoes 4 star rating (328)
SELECT rev.customer_id, COUNT(*)
FROM vine_table_sho AS vine, review_id_table AS rev
WHERE vine.review_id = rev.review_id AND star_rating = 4 AND vine = 'Y'
GROUP BY customer_id
ORDER BY COUNT(*) DESC LIMIT 10;

-- Vine reviews for apparel 5 star rating (1107)
SELECT rev.customer_id, COUNT(*)
FROM vine_table_app AS vine, review_id_table AS rev
WHERE vine.review_id = rev.review_id AND star_rating = 5 AND vine = 'Y'
GROUP BY customer_id
ORDER BY COUNT(*) DESC LIMIT 10;

-- Vine reviews for shoes 4 star rating (841)
SELECT rev.customer_id, COUNT(*)
FROM vine_table_app AS vine, review_id_table AS rev
WHERE vine.review_id = rev.review_id AND star_rating = 4 AND vine = 'Y'
GROUP BY customer_id
ORDER BY COUNT(*) DESC LIMIT 10;

-- Vine Get the star rating for the top 5 customers Shoes
SELECT rev.customer_id, star_rating, COUNT(*)
FROM vine_table_sho AS vine, review_id_table AS rev
WHERE vine.review_id = rev.review_id AND vine = 'Y'
AND (customer_id = 40581989 OR customer_id = 52228204 OR customer_id = 51070985 OR customer_id = 43698610 OR customer_id = 48156368)
GROUP BY customer_id, star_rating;

-- Vine Get the star rating for the top 5 customers Apparel
SELECT rev.customer_id, star_rating, COUNT(*)
FROM vine_table_app AS vine, review_id_table AS rev
WHERE vine.review_id = rev.review_id AND vine = 'Y'
AND (customer_id = 52188216 OR customer_id = 36983626 OR customer_id = 13814078 OR customer_id = 49620639 OR customer_id = 49598970)
GROUP BY customer_id, star_rating;

-- No Vine reviews for shoes top 5 customers
SELECT customer_id, COUNT(*)
FROM vine_table_sho AS vine, review_id_table AS rev
WHERE vine.review_id = rev.review_id AND vine = 'N'
GROUP BY customer_id
ORDER BY COUNT(*) DESC LIMIT 5;

-- No Vine reviews for apparel top 5 customers
SELECT customer_id, COUNT(*)
FROM vine_table_app AS vine, review_id_table AS rev
WHERE vine.review_id = rev.review_id AND vine = 'N'
GROUP BY customer_id
ORDER BY COUNT(*) DESC LIMIT 5;

-- No Vine reviews for shoes 5 star rating
SELECT rev.customer_id, COUNT(*)
FROM vine_table_sho AS vine, review_id_table AS rev
WHERE vine.review_id = rev.review_id AND star_rating = 5 AND vine = 'N'
GROUP BY customer_id
ORDER BY COUNT(*) DESC LIMIT 10;

-- No Vine reviews for shoes 4 star rating
SELECT rev.customer_id, COUNT(*)
FROM vine_table_sho AS vine, review_id_table AS rev
WHERE vine.review_id = rev.review_id AND star_rating = 4 AND vine = 'N'
GROUP BY customer_id
ORDER BY COUNT(*) DESC LIMIT 10;

-- No Vine reviews for apparel 5 star rating
SELECT rev.customer_id, COUNT(*)
FROM vine_table_app AS vine, review_id_table AS rev
WHERE vine.review_id = rev.review_id AND star_rating = 5 AND vine = 'N'
GROUP BY customer_id
ORDER BY COUNT(*) DESC LIMIT 10;

-- No Vine reviews for shoes 4 star rating
SELECT rev.customer_id, COUNT(*)
FROM vine_table_app AS vine, review_id_table AS rev
WHERE vine.review_id = rev.review_id AND star_rating = 4 AND vine = 'N'
GROUP BY customer_id
ORDER BY COUNT(*) DESC LIMIT 10;

-- No Vine Get the star rating for three of the top 5 customers
SELECT rev.customer_id, star_rating, COUNT(*)
FROM vine_table_sho AS vine, review_id_table AS rev
WHERE vine.review_id = rev.review_id AND vine = 'N'
AND (customer_id = 45547332 OR customer_id = 20872710 OR customer_id = 52433525)
GROUP BY customer_id, star_rating;

-- No Vine Get the star rating for two of the top 5 customers
SELECT rev.customer_id, star_rating, COUNT(*)
FROM vine_table_app AS vine, review_id_table AS rev
WHERE vine.review_id = rev.review_id AND vine = 'N'
AND (customer_id = 37474421 OR customer_id = 15006109)
GROUP BY customer_id, star_rating;

-- Vine Top 5 products Shoes
SELECT rev.product_id, COUNT(*)
FROM vine_table_sho AS vine, review_id_table AS rev
WHERE vine.review_id = rev.review_id AND vine = 'Y'
GROUP BY product_id
ORDER BY COUNT(*) DESC LIMIT 5;

-- Vine Top 5 products Shoes Get star rating
SELECT rev.product_id, vine.star_rating, COUNT(*)
FROM vine_table_sho AS vine, review_id_table AS rev
WHERE vine.review_id = rev.review_id AND vine = 'Y'
AND (rev.product_id = 'B00SM2LSQ8' OR rev.product_id = 'B0018KYMNW' 
	 OR rev.product_id = 'B0018KYOVW' OR rev.product_id = 'B00LV4D1X2' 
	 OR rev.product_id = 'B00M42W4XS')
GROUP BY rev.product_id, vine.star_rating;

-- Vine Top 5 products Shoes Get title
SELECT *
FROM products
WHERE product_id = 'B00SM2LSQ8' OR product_id = 'B0018KYMNW' 
     OR product_id = 'B0018KYOVW' OR product_id = 'B00LV4D1X2'  
	 OR product_id = 'B00M42W4XS';

-- Vine Top 5 products Apparel
SELECT rev.product_id, COUNT(*)
FROM vine_table_app AS vine, review_id_table AS rev
WHERE vine.review_id = rev.review_id AND vine = 'Y'
GROUP BY product_id
ORDER BY COUNT(*) DESC LIMIT 5;

-- Vine Top 5 products Apparel Get star rating
SELECT rev.product_id, vine.star_rating, COUNT(*)
FROM vine_table_app AS vine, review_id_table AS rev
WHERE vine.review_id = rev.review_id AND vine = 'Y'
AND (rev.product_id = 'B002BFLJ70' OR rev.product_id = 'B00FXPRJWO' 
	 OR rev.product_id = 'B004OA7QVI' OR rev.product_id = 'B004OA7QYA' 
	 OR rev.product_id = 'B004OA7QT0')
GROUP BY rev.product_id, vine.star_rating;

-- Vine Top 5 products Apparel Get title
SELECT *
FROM products
WHERE product_id = 'B002BFLJ70' OR product_id = 'B00FXPRJWO' 
	 OR product_id = 'B004OA7QVI' OR product_id = 'B004OA7QYA' 
	 OR product_id = 'B004OA7QT0';

-- No Vine Top 5 products Shoes
SELECT rev.product_id, COUNT(*)
FROM vine_table_sho AS vine, review_id_table AS rev
WHERE vine.review_id = rev.review_id AND vine = 'N'
GROUP BY product_id
ORDER BY COUNT(*) DESC LIMIT 5;

-- No Vine Top 5 products Shoes Get star rating
SELECT rev.product_id, vine.star_rating, COUNT(*)
FROM vine_table_sho AS vine, review_id_table AS rev
WHERE vine.review_id = rev.review_id AND vine = 'N'
AND (rev.product_id = 'B00H9RZDRM' OR rev.product_id = 'B004RR0N8Q' 
	 OR rev.product_id = 'B002L9AL84' OR rev.product_id = 'B001UQ71G4' 
	 OR rev.product_id = 'B004M6W4FW')
GROUP BY rev.product_id, vine.star_rating;

-- No Vine Top 5 products Shoes Get title
SELECT *
FROM products
WHERE product_id = 'B00H9RZDRM' OR product_id = 'B004RR0N8Q' 
	 OR product_id = 'B002L9AL84' OR product_id = 'B001UQ71G4' 
	 OR product_id = 'B004M6W4FW';

-- No Vine Top 5 products Apparel
SELECT rev.product_id, COUNT(*)
FROM vine_table_app AS vine, review_id_table AS rev
WHERE vine.review_id = rev.review_id AND vine = 'N'
GROUP BY product_id
ORDER BY COUNT(*) DESC LIMIT 10;

-- No Vine Top 5 products Apparel Get star rating
SELECT rev.product_id, vine.star_rating, COUNT(*)
FROM vine_table_app AS vine, review_id_table AS rev
WHERE vine.review_id = rev.review_id AND vine = 'N'
AND (rev.product_id = 'B004M6XUI2' OR rev.product_id = 'B004M6UDF0' 
	 OR rev.product_id = 'B006PGGJOE' OR rev.product_id = 'B0045H0L1W' 
	 OR rev.product_id = 'B004M6UD46')
GROUP BY rev.product_id, vine.star_rating;

-- No Vine Top 5 products Apparel Get title
SELECT *
FROM products
WHERE product_id = 'B004M6XUI2' OR product_id = 'B004M6UDF0' 
	 OR product_id = 'B006PGGJOE' OR product_id = 'B0045H0L1W' 
	 OR product_id = 'B004M6UD46';

-- Top 5 apparel products with star rating by vine or non-vine
SELECT rev.product_id, vine.vine, vine.star_rating, COUNT(*)
FROM vine_table_app AS vine, review_id_table AS rev
WHERE vine.review_id = rev.review_id 
AND (rev.product_id = 'B004M6XUI2' OR rev.product_id = 'B004M6UDF0' 
	 OR rev.product_id = 'B006PGGJOE' OR rev.product_id = 'B0045H0L1W' 
	 OR rev.product_id = 'B004M6UD46')
GROUP BY rev.product_id, vine.vine, vine.star_rating
ORDER BY COUNT(*) DESC;

-- Queries to analyze both types of reviews for apparel
-- Verify that the view has the right number of records
SELECT COUNT(*) FROM vineapp;

-- Verify that the view has the right number of records
SELECT COUNT(*) FROM prodvine;

-- Verify that the view has the right number of records
SELECT COUNT(*) FROM prodnovine;

-- Get the top 20 products that have vine and non-vine reviews
SELECT yesvine.product_id, COUNT(*)
FROM prodvine AS yesvine
INNER JOIN prodnovine AS novine ON yesvine.product_id = novine.product_id 
GROUP BY yesvine.product_id
ORDER BY COUNT(*) DESC LIMIT 20;

-- Check if the rating changes depending of the type of review, only for top 5 products
SELECT rev.product_id, app.vine, app.star_rating, COUNT(*)
FROM review_id_table AS rev, vine_table_app AS app
WHERE rev.review_id = app.review_id 
  AND (rev.product_id = 'B002BFLJ70' OR rev.product_id = 'B00BGIQPSG' OR 
	   rev.product_id = 'B00BGIQR3E' OR rev.product_id = 'B004OA7QVI' OR 
	   rev.product_id = 'B004OA7QT0')
GROUP BY rev.product_id, app.vine, app.star_rating
ORDER BY COUNT(*) DESC;

-- Queries to analyze both types of reviews for shoes
-- Verify that the view has the right number of records
SELECT COUNT(*) FROM svineapp;

-- Verify that the view has the right number of records
SELECT COUNT(*) FROM sprodvine;

-- Verify that the view has the right number of records
SELECT COUNT(*) FROM sprodnovine;

-- Get the top 20 products that have vine and non-vine reviews
SELECT yesvine.product_id, COUNT(*)
FROM sprodvine AS yesvine
INNER JOIN sprodnovine AS novine ON yesvine.product_id = novine.product_id 
GROUP BY yesvine.product_id
ORDER BY COUNT(*) DESC LIMIT 20;

-- Check if the rating changes depending of the type of review, only for top 5 products
SELECT rev.product_id, app.vine, app.star_rating, COUNT(*)
FROM review_id_table AS rev, vine_table_sho AS app
WHERE rev.review_id = app.review_id 
  AND (rev.product_id = 'B00NHUW1UW' OR rev.product_id = 'B0018KYMNW' OR 
	   rev.product_id = 'B00NHUVF18' OR rev.product_id = 'B00NHUVFGS' OR 
	   rev.product_id = 'B00NHUVTRS')
GROUP BY rev.product_id, app.vine, app.star_rating
ORDER BY COUNT(*) DESC;

-- Check votes for shoes vine
SELECT * FROM vine_table_sho WHERE vine = 'Y'
ORDER BY total_votes DESC LIMIT 5;

-- Check votes for shoes non-vine
SELECT * FROM vine_table_sho WHERE vine = 'N'
ORDER BY total_votes DESC LIMIT 5;

-- Check votes for apparel vine
SELECT * FROM vine_table_app WHERE vine = 'Y'
ORDER BY total_votes DESC LIMIT 5;

-- Check votes for apparel non-vine
SELECT * FROM vine_table_app WHERE vine = 'N'
ORDER BY total_votes DESC LIMIT 5;


-- Update the counts for the second data set before running the stats
UPDATE customers
SET customer_count = 
   (SELECT repcustomers.customer_count + repcustomers.cdb_count AS s
      FROM repcustomers
      WHERE repcustomers.customer_id = customers.customer_id);

