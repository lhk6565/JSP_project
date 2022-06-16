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
	('JSP �ڵ�����', '��ǻ�Ͱ��к�', '15000', '�б� �ʿ� �����̴ϴ�'),
	('�濵 ����', '�����ΰ��к�', '18000', '�ΰ��˴ϴ�'),
	('������ �м�', '���Ӱ��к�', '30000', '�±�'),
	('�繫����', '��īƮ�δн����к�', '131313', '�ΰ� �˴ϴ�'),
	('�����а���', '��輳����а�', '16161', '2�г� 2�б� �ʿ��� �������Դϴ�');
	
DESC board;
SELECT * FROM board;
