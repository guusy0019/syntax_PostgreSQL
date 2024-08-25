\dt

\c my_db


CREATE TABLE people (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    birth_day DATE DEFAULT '1990-01-01'
);

-- すべて挿入する場合はカラム名を省略してもデータを挿入できる
INSERT INTO people VALUES (1, 'Taro', '2001-01-01');

-- 特定のカラムにデータを挿入する場合はカラム名を指定する
-- 値を指定しない場合、デフォルトの値が挿入される
INSERT INTO people (id, name) VALUES (2, 'Jiro');

SELECT * FROM people;

-- postgresqlではシングルクォートをエスケープするために連続して記述する
INSERT INTO people (id, name, birth_day) VALUES (3, 'John''s son', '2003-03-03');









