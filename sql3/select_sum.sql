-- 果物の注文合計数を集計する
SELECT
    f.name
    , SUM(o.quantity) AS total_qty
FROM orders AS o
    LEFT JOIN customer AS c
        ON c.id = o.customer_id
    LEFT JOIN fruits   AS f
        ON f.id = o.fruits_id
GROUP BY f.name
;

-- sample=> \i sql3/select_sum.sql 
--   name  | total_qty 
-- --------+-----------
--  りんご |         3
--  みかん |         6
--  ばなな |        18
-- (3 rows)