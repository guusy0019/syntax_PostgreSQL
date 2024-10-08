PostgreSQLにおける`CHAR`と`VARCHAR`は、文字列データを扱うためのデータ型で、それぞれに特徴と適した用途があります。

### `CHAR(n)`（固定長文字列）
- **概要**: `CHAR(n)`（または`CHARACTER(n)`）は、固定長の文字列データ型です。`n`は文字列の長さを指定します。文字列の長さが指定した長さに満たない場合、右側に空白が自動的に追加されて、指定した長さに調整されます。
- **使用例**: `CHAR(5)`のカラムに`'abc'`を挿入すると、実際には`'abc  '`（右に2つの空白が追加された状態）として保存されます。
- **利点**: 固定長の文字列を保存するため、データが均一である場合に適しています（例：郵便番号や国コードなど）。
- **欠点**: 指定された長さに満たない場合でも、常に固定のサイズを使用するため、余計な空間が消費される可能性があります。

### `VARCHAR(n)`（可変長文字列）
- **概要**: `VARCHAR(n)`（または`CHARACTER VARYING(n)`）は、可変長の文字列データ型です。`n`は最大文字列長を指定します。挿入する文字列が指定した長さを超えない限り、そのまま保存されます。超えた場合はエラーが発生します。
- **使用例**: `VARCHAR(5)`のカラムに`'abc'`を挿入すると、`'abc'`として保存され、追加の空白はありません。
- **利点**: 必要なだけの長さのデータだけが保存されるため、スペースを効率的に利用できます。可変長であるため、さまざまな長さのデータに対応できます。
- **欠点**: 固定長と比べて、わずかに処理が遅くなる場合がありますが、これは通常は無視できる程度です。

### 主な違い
- **長さの扱い**: `CHAR(n)`は固定長で、指定した長さに満たない場合は自動的に空白で埋められます。一方、`VARCHAR(n)`は可変長で、入力された文字列そのものが保存されます。
- **スペースの使用**: `CHAR`は固定サイズのため、短い文字列でも余分な空間が消費されますが、`VARCHAR`は必要な分だけのスペースを使います。
- **使用用途**: `CHAR`は定型的な長さの文字列に適しており、`VARCHAR`は長さが変動するデータに適しています。

### 実際の選択
多くのケースでは、`VARCHAR`を使用する方が一般的です。柔軟性が高く、無駄な空間を使わないため、アプリケーションの大部分に適しています。一方、`CHAR`は、長さが一定であることが前提のデータに使用されることがあります。 

また、PostgreSQLでは、`TEXT`という文字数制限のない可変長文字列型もあります。特定の長さ制限が不要であれば、`VARCHAR`ではなく`TEXT`を使うことも選択肢の一つです。