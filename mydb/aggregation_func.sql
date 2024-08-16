
-- temp_loの中から最大値を取得
-- max関数はwhere句では使用不可
SELECT max(temp_lo) FROM weather;


-- 都市ごとにデータの数と最低気温の最大値を求める
SELECT city, count(*), max(temp_lo)
    FROM weather
    GROUP BY city;

--      city      | count | max 
-- ---------------+-------+-----
--  Hayward       |     1 |  37
--  San Francisco |     2 |  46

-- HAVINGを使ってグループ化した行にフィルタをかける
SELECT city, count(*), max(temp_lo)
    FROM weather
    GROUP BY city
    HAVING max(temp_lo) < 40;

--   city   | count | max
-- ---------+-------+-----
--  Hayward |     1 |  37



--「S」から始まる名前の都市のみを対象
SELECT city, count(*), max(temp_lo)
    FROM weather
    WHERE city LIKE 'S%'            -- (1)
    GROUP BY city;

--      city      | count | max
-- ---------------+-------+-----
--  San Francisco |     2 |  46



-- 集約ごとのオプションであるFILTERを使用する
SELECT city, count(*) FILTER (WHERE temp_lo < 45), max(temp_lo)
    FROM weather
    GROUP BY city;
--      city      | count | max
-- ---------------+-------+-----
--  Hayward       |     1 |  37
--  San Francisco |     1 |  46
-- (2 rows)