USE odbo2;

CREATE TABLE IF NOT EXISTS heightData(
	name VARCHAR(20) PRIMARY KEY,
	height int,
	signuptime TIMESTAMP DEFAULT CURRENT_TIMESTAMP
	);

DESC heightData;