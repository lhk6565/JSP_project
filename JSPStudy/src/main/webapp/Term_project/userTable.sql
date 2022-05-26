USE odbo2;

CREATE TABLE IF NOT EXISTS user(
	user_id VARCHAR(20),
	user_pw VARCHAR(20),
	name VARCHAR(20),
	stu_id VARCHAR(15) PRIMARY KEY,
	major VARCHAR(20),
	grade VARCHAR(5),
	phone VARCHAR(15),
	email VARCHAR(50)
	);
DESC user;