CREATE DATABASE IF NOT EXISTS odbo2;

USE odbo2;

CREATE TABLE IF NOT EXISTS chat(
	cno int PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(100),
	expl VARCHAR(2000),
	bno int,
	signuptime TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


USE odbo2;
DESC chat;
SELECT * FROM chat;


