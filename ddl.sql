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
CREATE TABLE "�^�X�N�ꗗ"
(
    id INTEGER PRIMARY KEY NOT NULL,
    "�^�X�N��" TEXT NOT NULL,
    "�ڍ�" JSONB NOT NULL,
    "�Ή�����" DATERANGE NOT NULL
);
CREATE TABLE "����"
(
    id INTEGER PRIMARY KEY NOT NULL,
    "�������" TIMESTAMP DEFAULT now() NOT NULL,
    "���i��" VARCHAR(64) NOT NULL,
    "���i" NUMERIC DEFAULT 0 NOT NULL,
    "�W������" TEXT NOT NULL
);
CREATE TABLE ����log
(
    id INTEGER PRIMARY KEY NOT NULL,
    "�������" TIMESTAMP NOT NULL,
    "������z" NUMERIC NOT NULL
);
CREATE TABLE "����W�v"
(
    id INTEGER PRIMARY KEY NOT NULL,
    "�����" DATE NOT NULL,
    "������z" INTEGER NOT NULL
);