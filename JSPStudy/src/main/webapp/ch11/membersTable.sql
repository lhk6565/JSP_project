USE odbo2;

CREATE TABLE IF NOT EXISTS members(
	id VARCHAR(20) PRIMARY KEY,
	passwd VARCHAR(20),
	email VARCHAR(50),
	signuptime TIMESTAMP DEFAULT CURRENT_TIMESTAMP
	);