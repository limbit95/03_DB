CREATE TABLE SLIME(
	SLIME_NO NUMBER PRIMARY KEY,
	SLIME_NAME VARCHAR2(20) NOT NULL,
	SLIME_LEVEL NUMBER NOT NULL,
	SLIME_EXP NUMBER NOT NULL,
	HP NUMBER NOT NULL,
	ATTACK NUMBER NOT NULL,
	GOLD NUMBER NOT NULL
);

COMMENT ON COLUMN SLIME.SLIME_NO IS '슬라임 번호';
COMMENT ON COLUMN SLIME.SLIME_NAME IS '슬라임 이름';
COMMENT ON COLUMN SLIME.SLIME_LEVEL IS '슬라임 레벨';
COMMENT ON COLUMN SLIME.SLIME_EXP IS '제공 경험치';
COMMENT ON COLUMN SLIME.HP IS '슬라임 체력';
COMMENT ON COLUMN SLIME.ATTACK IS '슬라임 공격력';
COMMENT ON COLUMN SLIME.GOLD IS '드랍 골드';

CREATE SEQUENCE SEQ_SLIME_NO NOCACHE;

INSERT INTO SLIME VALUES(SEQ_SLIME_NO.NEXTVAL, '귀여운', 1, 5, 10, 2, 1);
INSERT INTO SLIME VALUES(SEQ_SLIME_NO.NEXTVAL, '말랑말랑한', 1, 5, 11, 2, 1);
INSERT INTO SLIME VALUES(SEQ_SLIME_NO.NEXTVAL, '초록', 1, 5, 12, 2, 1);
INSERT INTO SLIME VALUES(SEQ_SLIME_NO.NEXTVAL, '노랑', 1, 5, 13, 3, 2);
INSERT INTO SLIME VALUES(SEQ_SLIME_NO.NEXTVAL, '빨강', 1, 5, 14, 3, 2);
INSERT INTO SLIME VALUES(SEQ_SLIME_NO.NEXTVAL, '얌전한', 1, 5, 15, 3, 2);



-- 조회 모음
SELECT * FROM SLIME;

-- 삭제 모음
DROP TABLE SLIME;
DROP SEQUENCE SEQ_SLIME_NO;

COMMIT;