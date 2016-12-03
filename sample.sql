-- サブクエリ
SELECT
  *
FROM
  users
WHERE
  user_id IN (
       SELECT unnest(ARRAY[1,2]))
     );

-- サブクエリ2
SELECT *
FROM
  users
WHERE
  area_id IN (
    SELECT area_id
    FROM area
    WHERE name = '広島'
  );
  
-- サブクエリを利用したupdate
UPDATE users2
SET
  age = new_users.age
FROM
  (SELECT
     user_id,
     EXTRACT(YEAR FROM age(now(), birthday)) AS age
   FROM
     users2) AS new_users
WHERE
  users2.user_id = new_users.user_id

-- INSERTとSELECT
INSERT INTO	"売上集計" ("売上日","売上金額")
SELECT
  to_char(売上日時,'YYYY/MM/DD')::DATE AS 売上日
, sum(売上金額) AS 売上金額
FROM
  売上log
WHERE
   売上日時
BETWEEN
   date_trunc('month',now()) 
AND
   date_trunc('month',now())
   + interval '1 month' 
   - interval '1 days'
GROUP BY 売上日

-- CASE
SELECT
  users.name,
  CASE area.name
    WHEN '広島' THEN '中国地方'
    WHEN '岡山' THEN '中国地方'
    WHEN '大阪' THEN '関西地方'
    ELSE 'その他'
  END AS area_group
FROM users
  INNER JOIN area USING (area_id)
  
-- CASE2
SELECT
  users.name,
  CASE
    WHEN area.name = '広島' OR area.name = '岡山'
      THEN '中国地方'
    WHEN area.name ='大阪'
      THEN '関西地方'
    ELSE 'その他'
  END AS area_group
FROM users
  INNER JOIN area
  USING (area_id)
  
-- CASE3
SELECT
  users.name, area.name,
  CASE area.name
    WHEN '広島' THEN '中国地方'
    WHEN '岡山' THEN '中国地方'
    WHEN '大阪' THEN '関西地方'
    ELSE 'その他'
  END AS area_group
FROM users
  INNER JOIN area
  USING (area_id)
ORDER BY CASE area.name
         WHEN '広島'
           THEN 1
         ELSE 2 END, area_group

--Window関数
SELECT 
*,    
  rank() OVER (PARTITION BY "商品名" ORDER BY "件数" DESC) AS "順位"

 FROM 
(
SELECT
  "売上日時" ::date AS "売上日"
  , "商品名"
  , count(*) AS "件数" 

FROM
  "売上" 
GROUP BY
  "売上日"
  , "商品名" 
) AS "集計"

-- JSONB
SELECT *
FROM
  "タスク一覧"
WHERE
  "詳細"->>'講師' = '喜田'

-- 範囲型1
SELECT
  *
FROM
  "タスク一覧"
WHERE
  '2016-12-01'::DATE <@ "対応期間"
  
-- 範囲型2
SELECT *
FROM "タスク一覧"
WHERE daterange('2016-12-03', '2016-12-04', '[]') <@ "対応期間";
