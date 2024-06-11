/* 
https://school.programmers.co.kr/learn/courses/30/lessons/157340

문제 설명
다음은 어느 자동차 대여 회사의 자동차 대여 기록 정보를 담은 CAR_RENTAL_COMPANY_RENTAL_HISTORY 테이블입니다. CAR_RENTAL_COMPANY_RENTAL_HISTORY 테이블은 아래와 같은 구조로 되어있으며, HISTORY_ID, CAR_ID, START_DATE, END_DATE 는 각각 자동차 대여 기록 ID, 자동차 ID, 대여 시작일, 대여 종료일을 나타냅니다.

Column name	Type	Nullable
HISTORY_ID	INTEGER	FALSE
CAR_ID	INTEGER	FALSE
START_DATE	DATE	FALSE
END_DATE	DATE	FALSE
문제
CAR_RENTAL_COMPANY_RENTAL_HISTORY 테이블에서 2022년 10월 16일에 대여 중인 자동차인 경우 '대여중' 이라고 표시하고, 대여 중이지 않은 자동차인 경우 '대여 가능'을 표시하는 컬럼(컬럼명: AVAILABILITY)을 추가하여 자동차 ID와 AVAILABILITY 리스트를 출력하는 SQL문을 작성해주세요. 이때 반납 날짜가 2022년 10월 16일인 경우에도 '대여중'으로 표시해주시고 결과는 자동차 ID를 기준으로 내림차순 정렬해주세요.
*/

-- 코드를 입력하세요
# SELECT CAR_ID, 
#     CASE
#         WHEN START_DATE > '2022-10-16' THEN '대여 가능'
#         WHEN START_DATE <= '2022-10-16' AND END_DATE >= '2022-10-16' THEN '대여중'
#         WHEN END_DATE < '2022-10-16' THEN '대여 가능'
#     END AS AVAILABILITY
# FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY 
# GROUP BY 1
# ORDER BY 1 DESC

# with shortlist as (
# select car_id
# from car_rental_company_rental_history
# where '2022-10-16' between start_date and end_date)

# SELECT distinct car_id,
# case
# when car_id in (select car_id from shortlist) then '대여중'
# else '대여 가능'
# end availability
# from car_rental_company_rental_history
# order by 1 desc;

WITH SORT_LIST AS (
    SELECT CAR_ID
    FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY 
    WHERE '2022-10-16' BETWEEN START_DATE AND END_DATE
    )
    
SELECT CAR_ID, 
    CASE
        WHEN CAR_ID IN (SELECT CAR_ID FROM SORT_LIST) THEN '대여중'
        ELSE '대여 가능'
    END AS AVAILABILITY
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY 
GROUP BY 1
ORDER BY 1 DESC
;