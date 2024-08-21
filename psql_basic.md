# コマンドまとめ

```SQL
-- psqlのvesionを確認する
psql --version

-- データベース一覧表示
psql -l

-- スーパーユーザーとしてPostgreSQLにログイン
sudo -u postgres psql

-- 新しいユーザーを作成
CREATE USER user_name WITH PASSWORD 'password';

-- データベースを作成1
CREATE DATABASE new_database;

-- データベースの作成権限を付与
ALTER USER user_name CREATEDB;

-- スーパーユーザー権限を付与
ALTER USER user_name WITH SUPERUSER;

-- 特定のデータベースへの接続権限を付与
GRANT CONNECT ON DATABASE new_database TO user_name;

-- 特定のデータベース内のスキーマに対する権限を付与
GRANT USAGE ON SCHEMA public TO user_name;

-- 特定のデータベース内のテーブルに対する権限を付与
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO user_name;


-- psqlを終了
\q

--作成したユーザーでPostgreSQLにログインする
psql -U user_name -d new_database
```
