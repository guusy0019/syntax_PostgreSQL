-- 注文の数量のランキングを横に付与する
SELECT
    o.order_date
    , c.name
    , f.name
    , o.quantity
    , RANK() OVER (ORDER BY o.quantity DESC)
FROM orders AS o
    LEFT JOIN customer AS c
        ON c.id = o.customer_id
    LEFT JOIN fruits   AS f
        ON f.id = o.fruits_id
ORDER BY o.order_date
;


-- sample=> \i sql3/select_rank.sql 
--  order_date | name |  name  | quantity | rank 
-- ------------+------+--------+----------+------
--  2015-09-05 | 太郎 | ばなな |       10 |    1
--  2015-09-10 | 太郎 | みかん |        6 |    3
--  2015-09-15 | 太郎 | りんご |        3 |    4
--  2015-09-20 | 太郎 | ばなな |        8 |    2
-- (4 rows)