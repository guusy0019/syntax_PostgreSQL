-- id属性に シーケンスを設定
ALTER TABLE customer
    ALTER COLUMN id SET DEFAULT nextval('customer_id_seq');



-- sample=> \i sql3/sequence_conf.sql 
-- ALTER TABLE
-- sample=> 
-- sample=> 
-- sample=> 
-- sample=> \d customer
--                             Table "public.customer"
--  Column |  Type   | Collation | Nullable |               Default                
-- --------+---------+-----------+----------+--------------------------------------
--  id     | integer |           | not null | nextval('customer_id_seq'::regclass)
--  name   | text    |           |          | 
-- Indexes:
--     "customer_pkey" PRIMARY KEY, btree (id)

-- sample=> 
-- sample=> 
-- sample=> SELECT MAX(id) FROM customer;
--  max 
-- -----
--    3
-- (1 row)

-- sample=> SELECT setval('customer_id_seq', 3) ;
--  setval 
-- --------
--       3
-- (1 row)

-- sample=> SELECT setval('customer_id_seq', (SELECT MAX(id) FROM customer)) ;
--  setval 
-- --------
--       3
-- (1 row)

-- sample=> INSERT INTO customer (name) VALUES ('三郎') ;
-- INSERT 0 1
-- sample=> SELECT * FROM customer;
--  id |  name  
-- ----+--------
--   1 | 太郎
--   2 | まいく
--   3 | 次郎
--   4 | 三郎
-- (4 rows)