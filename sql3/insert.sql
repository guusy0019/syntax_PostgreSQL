-- customer 間違って三郎を太郎と同じIDで登録すると
-- INS.60
INSERT INTO customer (id, name) VALUES ( 1, '三郎') ;


-- pkを付与しているので、同じIDで登録するとエラーになる
-- sample=> \i sql3/insert.sql 
-- psql:sql3/insert.sql:3: ERROR:  duplicate key value violates unique constraint "customer_pkey"
-- DETAIL:  Key (id)=(1) already exists.