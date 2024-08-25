-- データベースを切り替える
\c my_db

-- テーブルを作成する
CREATE TABLE students (
    id INT PRIMARY KEY,
    name CHAR(10)
);

-- char型は固定長で格納される
INSERT INTO students (id, name) VALUES (1, 'Alice   ');

-- データを選択して表示する
SELECT * FROM students;


-- charからvarcharに変更
ALTER TABLE students ALTER COLUMN name TYPE VARCHAR(10);

INSERT INTO students (id, name) VALUES (2, 'Bob      ');

select * from students;

-- 実際にスペースが削除されているかを確認
-- LENGTH関数を使うことで文字列の長さを取得できる
SELECT name, LENGTH(name) FROM students;