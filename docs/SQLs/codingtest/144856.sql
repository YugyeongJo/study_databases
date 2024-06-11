/*
https://school.programmers.co.kr/learn/courses/30/lessons/144856

문제 설명
다음은 어느 한 서점에서 판매중인 도서들의 도서 정보(BOOK), 저자 정보(AUTHOR) 테이블입니다.

BOOK 테이블은 각 도서의 정보를 담은 테이블로 아래와 같은 구조로 되어있습니다.

Column name	Type	Nullable	Description
BOOK_ID	INTEGER	FALSE	도서 ID
CATEGORY	VARCHAR(N)	FALSE	카테고리 (경제, 인문, 소설, 생활, 기술)
AUTHOR_ID	INTEGER	FALSE	저자 ID
PRICE	INTEGER	FALSE	판매가 (원)
PUBLISHED_DATE	DATE	FALSE	출판일
AUTHOR 테이블은 도서의 저자의 정보를 담은 테이블로 아래와 같은 구조로 되어있습니다.

Column name	Type	Nullable	Description
AUTHOR_ID	INTEGER	FALSE	저자 ID
AUTHOR_NAME	VARCHAR(N)	FALSE	저자명
BOOK_SALES 테이블은 각 도서의 날짜 별 판매량 정보를 담은 테이블로 아래와 같은 구조로 되어있습니다.

Column name	Type	Nullable	Description
BOOK_ID	INTEGER	FALSE	도서 ID
SALES_DATE	DATE	FALSE	판매일
SALES	INTEGER	FALSE	판매량
문제
2022년 1월의 도서 판매 데이터를 기준으로 저자 별, 카테고리 별 매출액(TOTAL_SALES = 판매량 * 판매가) 을 구하여, 저자 ID(AUTHOR_ID), 저자명(AUTHOR_NAME), 카테고리(CATEGORY), 매출액(SALES) 리스트를 출력하는 SQL문을 작성해주세요.
결과는 저자 ID를 오름차순으로, 저자 ID가 같다면 카테고리를 내림차순 정렬해주세요.
*/

# -- 코드를 입력하세요
WITH BA AS (SELECT BOOK_ID, B.AUTHOR_ID, AUTHOR_NAME, CATEGORY, PRICE
                FROM BOOK AS B
                LEFT JOIN AUTHOR AS A
                ON B.AUTHOR_ID = A.AUTHOR_ID)

SELECT BA.AUTHOR_ID, BA.AUTHOR_NAME, BA.CATEGORY, SUM(BS.SALES*BA.PRICE) AS SALES
FROM (SELECT *
        FROM BOOK_SALES
        WHERE DATE_FORMAT(SALES_DATE, '%Y-%m') = '2022-01') AS BS
INNER JOIN BA
ON BA.BOOK_ID = BS.BOOK_ID
GROUP BY BA.AUTHOR_ID, BA.CATEGORY
ORDER BY AUTHOR_ID ASC, CATEGORY DESC

;