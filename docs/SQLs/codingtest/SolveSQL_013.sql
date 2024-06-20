/*
https://solvesql.com/problems/find-tables-with-high-bill/

많이 주문한 테이블 찾기
난이도 1
출제자 [데이터리안] 선미

정답률 85.47% (1265회 / 1480회)

tips 테이블에는 식사 금액, 팁, 결제자 성별, 요일, 시간대 등 어느 레스토랑의 테이블 당 결제에 관련된 데이터가 들어있습니다. 식사 금액이 테이블 당 평균 식사 금액보다 더 많은 경우를 모두 출력하는 쿼리를 작성해주세요. 결과에는 tips 테이블에 있는 모든 컬럼이 포함되어야 합니다.

*/

SELECT *
FROM tips
WHERE total_bill > (SELECT AVG(total_bill)
                    FROM tips)
;

