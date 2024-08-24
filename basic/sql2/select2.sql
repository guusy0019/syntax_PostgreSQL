-- SEL.60
-- INNER JOIN を LEFT JOINに変更
-- fruitsのid4がないので、leftにしないと表示されないよ
SELECT
    o.order_date
    , c.name
    , f.name
    , o.quantity
FROM orders AS o
    LEFT JOIN customer AS c
        ON c.id = o.customer_id
    LEFT JOIN fruits   AS f
        ON f.id = o.fruits_id
;

-- inner join
-- sample=> \i sql2/select2.sql 
--  order_date | name |  name  | quantity 
-- ------------+------+--------+----------
--  2015-09-05 | 太郎 | ばなな |       10


-- left join
-- sample=> \i sql2/select2.sql
--  order_date | name |  name  | quantity
-- ------------+------+--------+----------
--  2015-09-05 | 太郎 | ばなな |       10
--  2015-09-10 | 太郎 |        |        6