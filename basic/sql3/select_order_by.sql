-- 購入日付順に表示 ORDER BY
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
ORDER BY o.order_date
;


-- sample=> \i sql3/select_order_by.sql 
--  order_date | name |  name  | quantity 
-- ------------+------+--------+----------
--  2015-09-05 | 太郎 | ばなな |       10
--  2015-09-10 | 太郎 | みかん |        6
--  2015-09-15 | 太郎 | りんご |        3
--  2015-09-20 | 太郎 | ばなな |        8