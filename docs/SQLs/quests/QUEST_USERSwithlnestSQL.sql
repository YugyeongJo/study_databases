-- DB 생성 
CREATE DATABASE QUEST_USERSwithSQL ;

-- DB table 생성
CREATE TABLE `HOBBY` (
	`USER_HOBBY_ID`	VARCHAR(50)	NOT NULL,
	`USER_HOBBY`	VARCHAR(255)	NULL
);

CREATE TABLE `CONNECT` (
	`USER_CONNECT_ID`	VARCHAR(50)	NOT NULL,
	`USER_SEX_ID`	VARCHAR(50)	NOT NULL,
	`USER_NAME`	VARCHAR(255)	NULL,
	`USER_AGE`	VARCHAR(255)	NULL,
	`USER_NUMBER`	VARCHAR(255)	NULL,
	`USER_EMAIL`	VARCHAR(255)	NULL
);

CREATE TABLE `ADDRESS` (
	`USER_ADDRESS_ID`	VARCHAR(50)	NOT NULL,
	`USER_ADDRESS`	VARCHAR(255)	NULL
);

CREATE TABLE `USER_INFORMATIONS` (
	`USER_INFORMATIONS_ID`	VARCHAR(50)	NOT NULL,
	`USER_CONNECT_ID`	VARCHAR(50)	NOT NULL,
	`USER_ADDRESS_ID`	VARCHAR(50)	NOT NULL,
	`USER_HOBBY_ID`	VARCHAR(50)	NOT NULL
);

CREATE TABLE `SEX` (
	`USER_SEX_ID`	VARCHAR(50)	NOT NULL,
	`USER_SEX`	VARCHAR(255)	NULL
);

ALTER TABLE `HOBBY` ADD CONSTRAINT `PK_HOBBY` PRIMARY KEY (
	`USER_HOBBY_ID`
);

ALTER TABLE `CONNECT` ADD CONSTRAINT `PK_CONNECT` PRIMARY KEY (
	`USER_CONNECT_ID`,
	`USER_SEX_ID`
);

ALTER TABLE `ADDRESS` ADD CONSTRAINT `PK_ADDRESS` PRIMARY KEY (
	`USER_ADDRESS_ID`
);

ALTER TABLE `USER_INFORMATIONS` ADD CONSTRAINT `PK_USER_INFORMATIONS` PRIMARY KEY (
	`USER_INFORMATIONS_ID`,
	`USER_CONNECT_ID`,
	`USER_ADDRESS_ID`,
	`USER_HOBBY_ID`
);

ALTER TABLE `SEX` ADD CONSTRAINT `PK_SEX` PRIMARY KEY (
	`USER_SEX_ID`
);

ALTER TABLE `CONNECT` ADD CONSTRAINT `FK_SEX_TO_CONNECT_1` FOREIGN KEY (
	`USER_SEX_ID`
)
REFERENCES `SEX` (
	`USER_SEX_ID`
);

ALTER TABLE `USER_INFORMATIONS` ADD CONSTRAINT `FK_CONNECT_TO_USER_INFORMATIONS_1` FOREIGN KEY (
	`USER_CONNECT_ID`
)
REFERENCES `CONNECT` (
	`USER_CONNECT_ID`
);

ALTER TABLE `USER_INFORMATIONS` ADD CONSTRAINT `FK_ADDRESS_TO_USER_INFORMATIONS_1` FOREIGN KEY (
	`USER_ADDRESS_ID`
)
REFERENCES `ADDRESS` (
	`USER_ADDRESS_ID`
);

ALTER TABLE `USER_INFORMATIONS` ADD CONSTRAINT `FK_HOBBY_TO_USER_INFORMATIONS_1` FOREIGN KEY (
	`USER_HOBBY_ID`
)
REFERENCES `HOBBY` (
	`USER_HOBBY_ID`
);

-- INSERT
-- SEX
INSERT INTO SEX 
(USER_SEX_ID, USER_SEX)
VALUES 
('USER_SEX_01', '남'), 
('USER_SEX_02', '여');
-- CONNECT
INSERT INTO CONNECT 
(USER_CONNECT_ID, USER_SEX_ID, USER_NAME, USER_AGE, USER_NUMBER, USER_EMAIL)
VALUES 
('USER_CONNECT_01', 'USER_SEX_01', '홍길동', '30', '010-1234-5678', 'hong@example.com'),
('USER_CONNECT_02', 'USER_SEX_02', '김영희', '25', '010-9876-5432', 'kim@example.com'),
('USER_CONNECT_03', 'USER_SEX_01', '이철수', '35', '010-2468-1357', 'lee@example.com'),
('USER_CONNECT_04', 'USER_SEX_01', '박민준', '28', '010-8642-9137', 'park@example.com'),
('USER_CONNECT_05', 'USER_SEX_02', '임지영', '32', '010-5793-6241', 'lim@example.com');
-- HOBBY
INSERT INTO HOBBY 
(USER_HOBBY_ID, USER_HOBBY)
VALUES 
('USER_HOBBY_01', '등산'), 
('USER_HOBBY_02', '요리'), 
('USER_HOBBY_03', '음악감상'), 
('USER_HOBBY_04', '수영'), 
('USER_HOBBY_05', '영화감상'), 
('USER_HOBBY_06', '자전거'), 
('USER_HOBBY_07', '요가'), 
('USER_HOBBY_08', '그림 그리기'), 
('USER_HOBBY_09', '독서'), 
('USER_HOBBY_10', '공원 산책');
-- ADDRESS
INSERT INTO ADDRESS 
(USER_ADDRESS_ID, USER_ADDRESS)
VALUES 
('USER_ADDRESS_01', '서울특별시 강남구'),
('USER_ADDRESS_02', '경기도 수원시'),
('USER_ADDRESS_03', '인천광역시 부평구'),
('USER_ADDRESS_04', '대전광역시 서구'),
('USER_ADDRESS_05', '경상북도 포항시 북구');
-- USER_INFORMATIONS
INSERT INTO USER_INFORMATIONS 
(USER_INFORMATIONS_ID, USER_CONNECT_ID, USER_ADDRESS_ID, USER_HOBBY_ID)
VALUES 
('USER_INFORMATIONS_01', 'USER_CONNECT_01', 'USER_ADDRESS_01', 'USER_HOBBY_01'),
('USER_INFORMATIONS_02', 'USER_CONNECT_01', 'USER_ADDRESS_01', 'USER_HOBBY_02'),
('USER_INFORMATIONS_03', 'USER_CONNECT_01', 'USER_ADDRESS_02', 'USER_HOBBY_01'),
('USER_INFORMATIONS_04', 'USER_CONNECT_01', 'USER_ADDRESS_02', 'USER_HOBBY_02'),
('USER_INFORMATIONS_05', 'USER_CONNECT_02', 'USER_ADDRESS_02', 'USER_HOBBY_03'),
('USER_INFORMATIONS_06', 'USER_CONNECT_02', 'USER_ADDRESS_02', 'USER_HOBBY_04'),
('USER_INFORMATIONS_07', 'USER_CONNECT_03', 'USER_ADDRESS_03', 'USER_HOBBY_05'),
('USER_INFORMATIONS_08', 'USER_CONNECT_03', 'USER_ADDRESS_03', 'USER_HOBBY_06'),
('USER_INFORMATIONS_09', 'USER_CONNECT_04', 'USER_ADDRESS_04', 'USER_HOBBY_07'),
('USER_INFORMATIONS_10', 'USER_CONNECT_04', 'USER_ADDRESS_04', 'USER_HOBBY_08'),
('USER_INFORMATIONS_11', 'USER_CONNECT_05', 'USER_ADDRESS_05', 'USER_HOBBY_09'),
('USER_INFORMATIONS_12', 'USER_CONNECT_05', 'USER_ADDRESS_05', 'USER_HOBBY_09'),
('USER_INFORMATIONS_13', 'USER_CONNECT_05', 'USER_ADDRESS_04', 'USER_HOBBY_10'),
('USER_INFORMATIONS_14', 'USER_CONNECT_05', 'USER_ADDRESS_04', 'USER_HOBBY_10');

-- DELETE('김영희' 레코드 삭제)
DELETE FROM USER_INFORMATIONS 
WHERE USER_CONNECT_ID = 'USER_CONNECT_02';
DELETE FROM CONNECT 
WHERE USER_CONNECT_ID = 'USER_CONNECT_02';

-- UPDATE('대전광역시 서구' > '대전광역시 동구')
UPDATE ADDRESS
SET USER_ADDRESS = '대전광역시 동구'
WHERE USER_ADDRESS_ID = 'USER_ADDRESS_04';  
 
-- table 확인 
SELECT *
FROM SEX;
SELECT *
FROM CONNECT;
SELECT *
FROM HOBBY;
SELECT *
FROM ADDRESS;
SELECT *
FROM USER_INFORMATIONS;

 