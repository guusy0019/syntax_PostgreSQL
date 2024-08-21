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

## `psql`にログインした後に使用できる`\`で始まるコマンド

### 最も使うであろうコマンド I/O

```SQL
-- 指定したSQLファイルを実行する(\oで指定しないとターミナルに出力)
\i /path/to/sqlfile.sql

-- 出力先を指定したファイルに変更する
\o /path/to/outputfile.txt

-- 出力先をターミナルに戻す
\o
```

### デフォルトの出力形式を CSV にする

```SQL
\o result.csv          -- クエリの出力を指定したファイル (result.csv) に保存する。これ以降のクエリ結果がこのファイルに書き込まれる。
\x off                 -- 拡張モードをオフにする。デフォルトの横長の表形式で出力する設定。
\a                     -- アライメントをオフにする。結果の整列表示を無効にし、データをそのまま出力する。
\f ','                 -- フィールドの区切り文字をカンマ (,) に設定する。CSV形式で出力するために使用。
\i example.sql         -- SQLファイル (example.sql) を実行する。SQLファイル内のクエリが実行され、その結果が指定したファイルに出力される。
\o                     -- 出力先を標準出力 (コンソール画面) に戻す。これ以降のクエリ結果は画面に表示される。
```

### 出力を csv にしたものをデフォルトに戻す

```SQL
\a
\f ' '
\x off
\pset format aligned   -- 出力形式を整列した通常のテーブル形式に戻す
\o
```

### そもそも、出力結果を csv にして保存したい場合

**たとえば、users というテーブルの内容を CSV 形式で users_data.csv というファイルに保存したい場合**

```SQL
\o users_data.csv
COPY (SELECT * FROM users) TO STDOUT WITH CSV HEADER;
\o
```

### 基本コマンド

- `\?` : psql コマンドのヘルプを表示
- `\q` : psql セッションを終了
- `\c [DBNAME]` : 指定したデータベースに接続（別のデータベースに切り替える）
- `\conninfo` : 現在の接続情報を表示

### データベース操作

- `\l` : データベースの一覧を表示
- `\dt` : テーブルの一覧を表示
- `\di` : インデックスの一覧を表示
- `\dv` : ビューの一覧を表示
- `\df` : 関数の一覧を表示
- `\dn` : スキーマの一覧を表示
- `\dp` : テーブル、ビュー、シーケンスのアクセス権限を表示

### テーブル操作

- `\d [TABLE_NAME]` : 指定したテーブルの詳細情報（構造）を表示
- `\d+ [TABLE_NAME]` : テーブルの詳細な情報を表示
- `\du` : ユーザーの一覧を表示
- `\du+` : ユーザーの詳細情報を表示

### クエリの実行と結果表示

- `\x` : 拡張モードでクエリの結果を表示（縦に表示）
- `\timing` : クエリの実行時間を表示するモードをオン/オフ

### 出力設定

- `\o [FILENAME]` : クエリ結果を指定したファイルに出力
- `\qecho [TEXT]` : 指定したテキストを出力（スクリプトで使用）
- `\p` : 現在のクエリバッファの内容を表示

### トランザクション制御

- `\begin` : トランザクションを開始
- `\commit` : トランザクションをコミット
- `\rollback` : トランザクションをロールバック

### その他の便利なコマンド

- `\watch [SECS]` : 指定した秒数ごとにクエリを繰り返し実行
- `\set [VAR] [VALUE]` : psql の変数を設定
- `\unset [VAR]` : psql の変数を解除
