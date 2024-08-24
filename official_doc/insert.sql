-- 単純な数値以外の定数は、この例のように、単一引用符（'）で括らなければなりません
INSERT INTO weather VALUES ('San Francisco', 46, 50, 0.25, '1994-11-27');

-- point型では、入力として次のような座標の組み合わせが必要
INSERT INTO cities VALUES ('San Francisco', '(-194.0, 53.0)');

-- 列のリストを明示的に与えるpythonでkwargsを使うようなもの
INSERT INTO weather (city, temp_lo, temp_hi, prcp, date)
    VALUES ('San Francisco', 43, 57, 0.0, '1994-11-29');

--リスト内の列は好きな順番で指定できます。
INSERT INTO weather (date, city, temp_hi, temp_lo)
    VALUES ('1994-11-29', 'Hayward', 54, 37);

-- COPYを使用して大量のデータを平文テキストファイルからロードすることもできます
-- 通常、より高速
-- COPY weather FROM '/home/user/weather.txt';
