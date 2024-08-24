-- シーケンスの作成
CREATE SEQUENCE customer_id_seq;

-- 連番を1から始める
SELECT setval('customer_id_seq', 1) ;

-- 二つ進める
SELECT nextval('customer_id_seq') ;
SELECT nextval('customer_id_seq') ;

-- 現在の連番
SELECT currval('customer_id_seq') ;

-- sample=> \i sql3/sequence.sql 
-- CREATE SEQUENCE
--  setval 
-- --------
--       1
-- (1 row)

--  nextval 
-- ---------
--        2
-- (1 row)

--  nextval 
-- ---------
--        3
-- (1 row)

--  currval 
-- ---------
--        3
-- (1 row)



