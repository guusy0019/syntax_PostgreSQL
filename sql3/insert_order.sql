-- りんご を 太郎 が 3つ 注文
INSERT INTO orders
    ( id,   order_date, customer_id, fruits_id, quantity)
VALUES
    (  3, '2015-09-15',           1,         1,        3)
;

-- ばなな を 太郎 が 8房 注文
INSERT INTO orders
    ( id,   order_date, customer_id, fruits_id, quantity)
VALUES
    (  4, '2015-09-20',           1,         3,        8)
;