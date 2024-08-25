\c my_db

select * from users;

-- transactionを開始
BEGIN;

UPDATE users SET name = '奥山 成美' WHERE id = 1;

SELECT * FROM users;

-- ROLLBACK; -- トランザクション開始前に戻す

COMMIT; -- トランザクションを確定する