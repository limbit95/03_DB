CREATE TABLE TIGER (
	TIGER_NO NUMBER PRIMARY KEY,
	NAME VARCHAR(30) NOT NULL,
	GENDER CHAR(1) NOT NULL CHECK(GENDER IN ('M', 'F')),
	DATE_BIRTH DATE DEFAULT(SYSDATE),
	HUNGGRY NUMBER DEFAULT(100),
	ALIVE CHAR(1) DEFAULT('Y') CHECK(ALIVE IN('Y', 'N'))
);

DROP TABLE TIGER;

SELECT * FROM TIGER;