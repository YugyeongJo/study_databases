/*
https://solvesql.com/problems/blog-counter/

일별 블로그 방문자 수 집계
난이도 2
출제자 [데이터리안] 보민

정답률 40.03% (1253회 / 3130회)

ga 테이블에는 데이터리안 기술 블로그에 설치된 Google Analytics를 활용해 수집한 방문, 클릭 로그가 들어 있습니다.
2021년 8월 2일부터 2021년 8월 9일까지 날짜별로 몇 명의 방문자가 방문했는지 알고 싶습니다. 해당 일자 내 로그 테이블에 이벤트가 하나라도 기록 된 경우 방문자로 집계합니다. 기간 별 방문자 수를 일별로 추출하는 쿼리를 작성해주세요. 결과 데이터에는 아래 2개 컬럼이 들어가야하며, 방문일을 기준으로 오름차순 정렬되어있어야 합니다.
dt - 방문일
users - 방문자 수

*/

SELECT event_date_kst AS dt, COUNT(distinct user_pseudo_id) AS users
FROM ga
WHERE event_date_kst BETWEEN '2021-08-02' AND '2021-08-09'
GROUP BY event_date_kst
ORDER BY dt
;
