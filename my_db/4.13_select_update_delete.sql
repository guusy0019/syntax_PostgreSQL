SELECT * FROM people;

-- エイリアスをつける場合は、""で囲む
SELECT id as "番号", name as "名前", birth_day as "誕生日" FROM people;

-- update
-- burth_dayをすべて2000-01-01に変更
UPDATE people SET birth_day = '2000-01-01';

SELECT * FROM people;

-- update where
-- idが2のnameを変更
UPDATE people SET name = 'Saburo' WHERE id = 2;


-- delete
DELETE FROM people WHERE id = 3;

-- すべて削除
-- DELETE FROM people;

