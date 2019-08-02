CREATE OR REPLACE VIEW public.vineapp AS
select * from vine_table_app where vine = 'Y';

CREATE OR REPLACE VIEW public.prodvine AS
SELECT review_id_table.product_id
   FROM review_id_table
     JOIN vine_table_app ON vine_table_app.review_id = review_id_table.review_id
  WHERE vine_table_app.vine = 'Y'

CREATE OR REPLACE VIEW public.prodnovine AS
SELECT review_id_table.product_id
   FROM review_id_table
     JOIN vine_table_app ON vine_table_app.review_id = review_id_table.review_id
  WHERE vine_table_app.vine = 'N'

CREATE OR REPLACE VIEW public.svineapp AS
select * from vine_table_sho where vine = 'Y';

CREATE OR REPLACE VIEW public.sprodvine AS
SELECT review_id_table.product_id
   FROM review_id_table
     JOIN vine_table_sho ON vine_table_app.review_id = review_id_table.review_id
  WHERE vine_table_sho.vine = 'Y'

CREATE OR REPLACE VIEW public.sprodnovine AS
SELECT review_id_table.product_id
   FROM review_id_table
     JOIN vine_table_sho ON vine_table_app.review_id = review_id_table.review_id
  WHERE vine_table_sho.vine = 'N'