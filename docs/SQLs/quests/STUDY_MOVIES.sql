CREATE TABLE `REVIEW` (
	`REVIEW_ID`	VARCHAR(50)	NOT NULL,
	`MOVIE_ID`	VARCHAR(50)	NOT NULL,
	`REVIEW_USER_ID`	VARCHAR(50)	NOT NULL,
	`REVIEW_SCORE_ID`	INT(255)	NOT NULL,
	`REVIEW_TITLES`	VARCHAR(255)	NULL,
	`REVIEW_COTENTS`	VARCHAR(255)	NULL,
	`REVIEW_DATE`	DATETIME	NULL
);

CREATE TABLE `SCORE` (
	`REVIEW_SCORE_ID`	INT(255)	NOT NULL,
	`REVIEW_SCORE`	INT(255)	NULL
);

CREATE TABLE `MOVIE` (
	`MOVIE_ID`	VARCHAR(50)	NOT NULL,
	`MOVIE`	VARCHAR(255)	NULL
);

CREATE TABLE `USER` (
	`REVIEW_USER_ID`	VARCHAR(50)	NOT NULL,
	`REVIEW_USER`	VARCHAR(255)	NULL
);

ALTER TABLE `REVIEW` ADD CONSTRAINT `PK_REVIEW` PRIMARY KEY (
	`REVIEW_ID`,
	`MOVIE_ID`,
	`REVIEW_USER_ID`,
	`REVIEW_SCORE_ID`
);

ALTER TABLE `SCORE` ADD CONSTRAINT `PK_SCORE` PRIMARY KEY (
	`REVIEW_SCORE_ID`
);

ALTER TABLE `MOVIE` ADD CONSTRAINT `PK_MOVIE` PRIMARY KEY (
	`MOVIE_ID`
);

ALTER TABLE `USER` ADD CONSTRAINT `PK_USER` PRIMARY KEY (
	`REVIEW_USER_ID`
);

ALTER TABLE `REVIEW` ADD CONSTRAINT `FK_MOVIE_TO_REVIEW_1` FOREIGN KEY (
	`MOVIE_ID`
)
REFERENCES `MOVIE` (
	`MOVIE_ID`
);

ALTER TABLE `REVIEW` ADD CONSTRAINT `FK_USER_TO_REVIEW_1` FOREIGN KEY (
	`REVIEW_USER_ID`
)
REFERENCES `USER` (
	`REVIEW_USER_ID`
);

ALTER TABLE `REVIEW` ADD CONSTRAINT `FK_SCORE_TO_REVIEW_1` FOREIGN KEY (
	`REVIEW_SCORE_ID`
)
REFERENCES `SCORE` (
	`REVIEW_SCORE_ID`
);
