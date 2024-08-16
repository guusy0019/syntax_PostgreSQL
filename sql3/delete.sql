-- id重複してしまったやつを消す
-- そもそもこうならないように一意制約をつける => シーケンスによる自動連番
DELETE FROM customer WHERE name = '三郎';
