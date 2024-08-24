-- 集計した結果 10を超えるもの
SELECT
    f.name
    , SUM(o.quantity) AS total_qty
FROM orders AS o
    LEFT JOIN customer AS c
        ON c.id = o.customer_id
    LEFT JOIN fruits   AS f
        ON f.id = o.fruits_id
GROUP BY f.name
HAVING SUM(o.quantity)>10
;

-- sample=> \i sql3/select_gt_10.sql 
--   name  | total_qty 
-- --------+-----------
--  ばなな |        18
-- (1 row)