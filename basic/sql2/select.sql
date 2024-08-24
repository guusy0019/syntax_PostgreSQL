-- SEL.50
SELECT
    o.order_date,
    c.name,
    f.name,
    o.quantity
FROM
    orders o
    INNER JOIN customer c ON o.customer_id = c.id
    INNER JOIN fruits f ON o.fruits_id = f.id
;

-- sample-> \i sql2/select.sql 
--  order_date | name |  name  | quantity 
-- ------------+------+--------+----------
--  2015-09-05 | 太郎 | ばなな |       10