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
CREATE TABLE "^XNê"
(
    id INTEGER PRIMARY KEY NOT NULL,
    "^XN¼" TEXT NOT NULL,
    "Ú×" JSONB NOT NULL,
    "ÎúÔ" DATERANGE NOT NULL
);
CREATE TABLE "ã"
(
    id INTEGER PRIMARY KEY NOT NULL,
    "ãú" TIMESTAMP DEFAULT now() NOT NULL,
    "¤i¼" VARCHAR(64) NOT NULL,
    "¿i" NUMERIC DEFAULT 0 NOT NULL,
    "W" TEXT NOT NULL
);
CREATE TABLE ãlog
(
    id INTEGER PRIMARY KEY NOT NULL,
    "ãú" TIMESTAMP NOT NULL,
    "ãàz" NUMERIC NOT NULL
);
CREATE TABLE "ãWv"
(
    id INTEGER PRIMARY KEY NOT NULL,
    "ãú" DATE NOT NULL,
    "ãàz" INTEGER NOT NULL
);