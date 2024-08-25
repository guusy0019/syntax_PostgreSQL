\c my_db

-- テーブル一覧を取得する
\dt

-- テーブル名を変更する
ALTER TABLE users RENAME TO users_table;

-- カラムの削除
ALTER TABLE users_table DROP COLUMN message;

-- カラムの追加
ALTER TABLE users_table
ADD post_code CHAR(8);


--PostgreSQLでは、ALTER TABLEコマンドでカラムを特定の位置に追加することはできません。カラムはテーブルの最後に追加されます。

-- カラムの順序変更
-- -- genderカラムをageカラムの後ろに追加
-- ALTER TABLE users_table
-- ADD gender CHAR(1) AFTER age;


-- カラムの定義変更
-- nameカラムのデータ型をCHAR(50)に変更
ALTER TABLE users_table
ALTER COLUMN name TYPE CHAR(50);

-- プライマリキー制約を削除
ALTER TABLE users_table
DROP CONSTRAINT users_table_pkey;