-- データベースを切り替える
\c my_db

-- 現在のデータベースを確認する
SELECT current_database();

-- テーブルを作成する
-- 主キーを設定する
CREATE TABLE users (
    id INT PRIMARY KEY,
    name VARCHAR(10), -- 可変長
    age INT,
    phone_number CHAR(13), -- 固定長
    message TEXT
);

-- テーブルの一覧を取得する
\dt


-- テーブルの定義を確認する
/* 
Collation: 文字列データのソートや比較に関する設定。
Nullable: NULL値を許容するかどうかを決定。
Default: カラムに値が指定されなかった場合に使用されるデフォルト値。
 */
\d users


-- -- テーブルを削除する
-- DROP TABLE users;

-- テーブルの一覧を取得する
\dt

