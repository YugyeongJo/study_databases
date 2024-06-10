/*
https://solvesql.com/problems/restaurant-business-day/

레스토랑의 영업일
난이도 1
출제자 [데이터리안] 보민

정답률 84.89% (1584회 / 1866회)

tips 테이블에는 식사 금액, 팁, 결제자 성별, 결제 요일 등 레스토랑 손님들의 결제 내역 정보가 들어있습니다.
레스토랑이 무슨 요일에 영업을 하는지 궁금합니다. tips 테이블에 들어있는 요일 데이터를 중복없이 보여주는 쿼리를 작성해주세요. 요일은 tips 테이블의 day 컬럼에 들어있습니다. 결과 컬럼의 이름은 day_of_week로 표시해주세요.

*/

SELECT DISTINCT day day_of_week
FROM tips 
;