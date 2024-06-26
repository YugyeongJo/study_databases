-- https://school.programmers.co.kr/learn/courses/30/lessons/301651

/*
문제 설명
대장균들은 일정 주기로 분화하며, 분화를 시작한 개체를 부모 개체, 분화가 되어 나온 개체를 자식 개체라고 합니다.
다음은 실험실에서 배양한 대장균들의 정보를 담은 ECOLI_DATA 테이블입니다. ECOLI_DATA 테이블의 구조는 다음과 같으며, ID, PARENT_ID, SIZE_OF_COLONY, DIFFERENTIATION_DATE, GENOTYPE 은 각각 대장균 개체의 ID, 부모 개체의 ID, 개체의 크기, 분화되어 나온 날짜, 개체의 형질을 나타냅니다.

Column name	Type	Nullable
ID	INTEGER	FALSE
PARENT_ID	INTEGER	TRUE
SIZE_OF_COLONY	INTEGER	FALSE
DIFFERENTIATION_DATE	DATE	FALSE
GENOTYPE	INTEGER	FALSE
최초의 대장균 개체의 PARENT_ID 는 NULL 값입니다.

문제
각 세대별 자식이 없는 개체의 수(COUNT)와 세대(GENERATION)를 출력하는 SQL문을 작성해주세요. 이때 결과는 세대에 대해 오름차순 정렬해주세요. 단, 모든 세대에는 자식이 없는 개체가 적어도 1개체는 존재합니다.
*/

WITH RECURSIVE PARENT_TREE AS (
SELECT ID, PARENT_ID, 1 AS LEVEL
FROM ECOLI_DATA 
WHERE PARENT_ID IS NULL

UNION ALL

SELECT ECOLI_DATA.ID, ECOLI_DATA.PARENT_ID, 1+PARENT_TREE.LEVEL AS LEVEL
FROM ECOLI_DATA
INNER JOIN PARENT_TREE
ON PARENT_TREE.ID = ECOLI_DATA.PARENT_ID
)

SELECT COUNT(LEVEL) AS COUNT, LEVEL AS GENERATION
FROM PARENT_TREE
LEFT OUTER JOIN (
            SELECT PARENT_ID, COUNT(PARENT_ID) AS CNT
            FROM PARENT_TREE
            GROUP BY LEVEL, PARENT_ID) AS CNT_PARENT
ON CNT_PARENT.PARENT_ID = PARENT_TREE.ID
WHERE CNT_PARENT.PARENT_ID IS NULL
GROUP BY LEVEL
ORDER BY GENERATION
;