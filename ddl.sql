CREATE TABLE area
(
    area_id INTEGER PRIMARY KEY NOT NULL,
    name TEXT
);
CREATE TABLE users
(
    user_id INTEGER PRIMARY KEY NOT NULL,
    name TEXT NOT NULL,
    area_id INTEGER NOT NULL,
    age INTEGER NOT NULL,
    properties JSONB
);
CREATE TABLE users2
(
    user_id INTEGER PRIMARY KEY NOT NULL,
    user_name TEXT NOT NULL,
    birthday DATE NOT NULL,
    age INTEGER NOT NULL
);
CREATE TABLE "タスク一覧"
(
    id INTEGER PRIMARY KEY NOT NULL,
    "タスク名" TEXT NOT NULL,
    "詳細" JSONB NOT NULL,
    "対応期間" DATERANGE NOT NULL
);
CREATE TABLE "売上"
(
    id INTEGER PRIMARY KEY NOT NULL,
    "売上日時" TIMESTAMP DEFAULT now() NOT NULL,
    "商品名" VARCHAR(64) NOT NULL,
    "価格" NUMERIC DEFAULT 0 NOT NULL,
    "ジャンル" TEXT NOT NULL
);
CREATE TABLE 売上log
(
    id INTEGER PRIMARY KEY NOT NULL,
    "売上日時" TIMESTAMP NOT NULL,
    "売上金額" NUMERIC NOT NULL
);
CREATE TABLE "売上集計"
(
    id INTEGER PRIMARY KEY NOT NULL,
    "売上日" DATE NOT NULL,
    "売上金額" INTEGER NOT NULL
);