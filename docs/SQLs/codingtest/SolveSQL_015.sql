/*
https://solvesql.com/problems/join/

두 테이블 결합하기
난이도 2
출제자 박치완

정답률 31.40% (1487회 / 4735회)

역대 올림픽 정보 데이터셋은 역대 올림픽 경기와 관련된 데이터가 들어있는 테이블로 이루어져 있습니다.
athletes 테이블에는 역대 올림픽 참가 선수의 이름이 들어 있습니다. events 테이블에는 종목과 경기 이름이 들어 있습니다. games 테이블에는 올림픽 개최 연도, 개최 도시와 시즌 정보가 기록되어 있습니다. records 테이블에는 역대 올림픽 참가 선수들의 신체 정보와 획득한 메달 정보가 기록되어 있습니다. 이 테이블은 다른 테이블과 매핑할 수 있는 ID 정보도 가지고 있습니다. teams 테이블에는 국가 정보가 기록되어 있습니다.
위 테이블 중 events 테이블과 records 테이블을 활용해 올림픽 골프 종목에 참가한 선수의 ID를 모두 조회하는 쿼리를 작성해주세요.

*/

SELECT DISTINCT records.athlete_id
FROM records 
INNER JOIN events
ON records.event_id = events.id
WHERE events.sport = 'Golf'
;
