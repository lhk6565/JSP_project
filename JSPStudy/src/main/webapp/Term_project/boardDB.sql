USE odbo2;

CREATE TABLE IF NOT EXISTS board(
	bno int PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(50),
	major VARCHAR(20),
	price VARCHAR(20),
	expl VARCHAR(2000),
	viewcnt int default 0,
	signuptime TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO board(title, major, price, expl)
VALUES 
	('JSP 코딩파일', '컴퓨터공학부', '15000', '학기 초에 쓰던겁니다'),
	('경영 수학', '디자인공학부', '18000', '싸게팝니다'),
	('빅데이터 분석', '게임공학부', '30000', '굿굿'),
	('재무관리', '메카트로닉스공학부', '131313', '싸게 팝니다'),
	('건축학개론', '기계설계공학과', '16161', '2학년 2학기 필요한 과목교재입니다');
	
DESC board;
SELECT * FROM board;
