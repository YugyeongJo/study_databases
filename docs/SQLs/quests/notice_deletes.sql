-- DB 생성 
CREATE DATABASE QUEST_NOTICE_DELETES ;
-- DB 삭제 
DROP DATABASE QUEST_NOTICE_DELETES;

-- DB table 생성 
CREATE TABLE `NOTICE` (
	`NOTICE_ID`	VARCHAR(255)	NOT NULL,
	`CONTENTS`	VARCHAR(255)	NULL,
	`WRITER`	VARCHAR(255)	NULL
);

CREATE TABLE `VISITOR` (
	`VISITOR_ID`	VARCHAR(255)	NOT NULL,
	`NOTICE_ID`	VARCHAR(255)	NOT NULL,
	`VISITOR_NAME`	VARCHAR(255)	NULL
);

ALTER TABLE `NOTICE` ADD CONSTRAINT `PK_NOTICE` PRIMARY KEY (
	`NOTICE_ID`
);

ALTER TABLE `VISITOR` ADD CONSTRAINT `PK_VISITOR` PRIMARY KEY (
	`VISITOR_ID`,
	`NOTICE_ID`
);

ALTER TABLE `VISITOR` ADD CONSTRAINT `FK_NOTICE_TO_VISITOR_1` FOREIGN KEY (
	`NOTICE_ID`
)
REFERENCES `NOTICE` (
	`NOTICE_ID`
);

-- NOTICE_02 INSERT
INSERT INTO NOTICE 
(NOTICE_ID, CONTENTS, WRITER)
VALUES 
('NOTICE_02', '이벤트 안내', '마케팅팀');

INSERT INTO VISITOR 
(VISITOR_ID, NOTICE_ID, VISITOR_NAME)
VALUES 
('VISITE03', 'NOTICE_02', '백지영'),
('VISITE04', 'NOTICE_02', '최민호'),
('VISITE05', 'NOTICE_02', '송지현');

-- NOTICE_02 DELETE
DELETE FROM VISITOR 
WHERE NOTICE_ID = 'NOTICE_02';
DELETE FROM NOTICE 
WHERE NOTICE_ID = 'NOTICE_02';


-- table 확인 
SELECT *
FROM NOTICE;

SELECT *
FROM VISITOR;

