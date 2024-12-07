/*

크리스마스 게임 찾기
난이도 1
출제자 박치완

정답률 65.49% (869회 / 1327회)

Video Game Sales with Ratings 데이터셋에는 1980년부터 2016년까지 출시된 게임 정보가 들어있습니다. 크리스마스에 놀러올 조카를 위해 함께 할 수 있는 크리스마스 게임을 찾아보려고 합니다. games 테이블에서 게임 이름에 "Christmas" 또는 "Santa"가 포함된 게임을 찾는 쿼리를 작성해주세요. 쿼리 결과에는 아래 컬럼이 포함되어 있어야 합니다.

game_id: 게임 ID
name: 게임 이름
year: 발매 연도

*/

SELECT DISTINCT game_id, name, year
FROM games
WHERE name LIKE '%Christmas%'
   OR name LIKE '%Santa%';

