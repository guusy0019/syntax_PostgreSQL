-- 日付の累計
SELECT
    o.order_date
    , c.name
    , f.name
    , o.quantity
    , SUM(o.quantity) OVER (ORDER BY o.order_date)
FROM orders AS o
    LEFT JOIN customer AS c
        ON c.id = o.customer_id
    LEFT JOIN fruits   AS f
        ON f.id = o.fruits_id
ORDER BY o.order_date
;



-- sample=> \i sql3/select_sum
-- select_sum.sql       select_sum_data.sql  
-- sample=> \i sql3/select_sum_data.sql 
--  order_date | name |  name  | quantity | sum 
-- ------------+------+--------+----------+-----
--  2015-09-05 | 太郎 | ばなな |       10 |  10
--  2015-09-10 | 太郎 | みかん |        6 |  16
--  2015-09-15 | 太郎 | りんご |        3 |  19
--  2015-09-20 | 太郎 | ばなな |        8 |  27
-- (4 rows)