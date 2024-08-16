# コマンドまとめ

```SQL
-- psqlのvesionを確認する
psql --version

-- スーパーユーザーとしてPostgreSQLにログイン
sudo -u postgres psql

-- 新しいユーザーを作成
CREATE USER new_user WITH PASSWORD 'password';

-- データベースを作成
CREATE DATABASE new_database;

-- ユーザーにデータベースへの全権限を付与
GRANT ALL PRIVILEGES ON DATABASE new_database TO new_user;

-- psqlを終了
\q

--作成したユーザーでPostgreSQLにログインする
psql -U new_user -d new_database
```
