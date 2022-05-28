CREATE DATABASE poll;
USE poll;

CREATE TABLE IF NOT EXISTS options(
	qid int PRIMARY KEY,
	question VARCHAR(100),
	answer1 VARCHAR(100),
	answer2 VARCHAR(100),
	answer3 VARCHAR(100),
	answer4 VARCHAR(100),
	answer5 VARCHAR(100),
	answercnt1 int NOT NULL DEFAULT 0,
	answercnt2 int NOT NULL DEFAULT 0,
	answercnt3 int NOT NULL DEFAULT 0,
	answercnt4 int NOT NULL DEFAULT 0,
	answercnt5 int NOT NULL DEFAULT 0
	);

DESC options;
DELETE FROM options;