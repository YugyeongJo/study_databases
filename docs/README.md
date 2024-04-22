## SQL

<details>
<summary>NoSQL</summary>

### mongodb fuctions
- insertOne() : 
db.car_info.insertOne({...})
#명령어 설명 예시 정리 필요

- inserMany() 
db.posts.deleteMany({ category: "Event" })
{
  acknowledged: true,
  deletedCount: 4
}

db.posts.deleteMany({})
{
  acknowledged: true,
  deletedCount: 1
}

-find()
db.fruits.find({})

-db.posts.find({}, {_id:1, title:1, category:1, likes:1}) ;

-db.posts.updateMany({}, {$inc : {likes : 1} }) ;

</details>

<br/>

## 개념 정리
- [NOSQL 개념 정리]()
- [MYSQL 개념 정리]()

<br/>

## file 정리
<details>
<summary>NOSQL</summary>

|구분|파일명|적용내용|파일내용|비고|
|--|--|--|--|--|
|1|||||
|2|||||
|3|||||
|4|||||
|5|||||
|6|||||
|7|||||
|8|||||
|9|||||
|10|||||
|11|||||
|12|||||

</details>

<details>
<summary>NOSQL QUEST</summary>

|구분|파일명|적용내용|파일내용|비고|
|--|--|--|--|--|
|1|||||
|2|||||
|3|||||
|4|||||
|5|||||
|6|||||
|7|||||
|8|||||
|9|||||
|10|||||
|11|||||
|12|||||


</details>

<details>
<summary>MYSQL</summary>

|구분|파일명|적용내용|파일내용|비고|
|--|--|--|--|--|
|1|||||
|2|||||
|3|||||
|4|||||
|5|||||
|6|||||
|7|||||
|8|||||
|9|||||
|10|||||
|11|||||
|12|||||



</details>

<details>
<summary>MYSQL QUEST</summary>

|구분|파일명|적용내용|파일내용|비고|
|--|--|--|--|--|
|1|[STUDY_BOARDS.sql](./SQLs/quests/STUDY_BOARDS.sql)||||
|2|[STUDY_CARS.sql](./SQLs/quests/STUDY_CARS.sql)||||
|3|[STUDY_USERS.sql](./SQLs/quests/STUDY_USERS.sql)||||
|4|[STUDY_MOVIES.sql](./SQLs/quests/STUDY_MOVIES.sql)||||
|5|[notice_inserts.sql](./SQLs/quests/notice_inserts.sql)||||
|6|[notice_deletes.sql](./SQLs/quests/notice_deletes.sql)||||
|7|[STUDY_USERSwithInestSQL.sql](./SQLs/quests/)||||
|8|[selectwhereRangeAndEquals.sql](./SQLs/quests/selectwhereRangeAndEquals.sql)||||
|9|[select_group_havings_orderby.sql](./SQLs/quests/select_group_havings_orderby.sql)||||
|10|[select_subquerys.sql](./SQLs/quests/select_subquerys.sql)||||
|11|[select_joins.sql](./SQLs/quests/select_joins.sql)||||
|12|[select_alls.sql](./SQLs/quests/select_alls.sql)||||
|13|[common_codes.sql]()||||

</details>

<br/>

## Coding Test

<details>
  <summary>프로그래머스</summary>
  
|NO|구분|소스|문제설명|출처|
|--|--|--|--|--|
|1|IS NULL|[SQL](docs\SQLs\codingtest\131114.sql)|경기도에 위치한 식품창고 목록 출력하기|[프로그래머스 131114](https://school.programmers.co.kr/learn/courses/30/lessons/131114)|
|2|IS NULL|[SQL](docs\SQLs\codingtest\59039.sql)|이름이 없는 동물의 아이디|[프로그래머스 59039](https://school.programmers.co.kr/learn/courses/30/lessons/59039)|
|3|IS NULL|[SQL](docs\SQLs\codingtest\59407.sql)|이름이 있는 동물의 아이디|[프로그래머스 59407](https://school.programmers.co.kr/learn/courses/30/lessons/59407)|
|4|IS NULL|[SQL](docs\SQLs\codingtest\59410.sql)|NULL 처리하기|[프로그래머스 59410](https://school.programmers.co.kr/learn/courses/30/lessons/59410)|
|5|IS NULL|[SQL](docs\SQLs\codingtest\131528.sql)|나이 정보가 없는 회원 수 구하기|[프로그래머스 131528](https://school.programmers.co.kr/learn/courses/30/lessons/131528)|
|6|IS NULL|[SQL](docs\SQLs\codingtest\273710.sql)|ROOT 아이템 구하기|[프로그래머스 273710](https://school.programmers.co.kr/learn/courses/30/lessons/273710)|
|7|IS NULL|[SQL](docs\SQLs\codingtest\273712.sql)|업그레이드 할 수 없는 아이템 구하기|[프로그래머스 273712](https://school.programmers.co.kr/learn/courses/30/lessons/273712)|
|8|IS NULL|[SQL](docs\SQLs\codingtest\293259.sql)|잡은 물고기의 평균 길이 구하기|[프로그래머스 293259](https://school.programmers.co.kr/learn/courses/30/lessons/293259)|
|9|SUM, MAX, MIN|[SQL](docs\SQLs\codingtest\131697.sql)|가장 비싼 상품 구하기|[프로그래머스 131697](https://school.programmers.co.kr/learn/courses/30/lessons/131697)|
|10|SUM, MAX, MIN|[SQL](docs\SQLs\codingtest\131115.sql)|가격이 제일 비싼 식품의 정보 출력하기|[프로그래머스 131115](https://school.programmers.co.kr/learn/courses/30/lessons/131115)|
|11|SUM, MAX, MIN|[SQL](docs\SQLs\codingtest\59415.sql)|최댓값 구하기|[프로그래머스 59415](https://school.programmers.co.kr/learn/courses/30/lessons/59415)|
|12|SUM, MAX, MIN|[SQL](docs\SQLs\codingtest\59038.sql)|최솟값 구하기|[프로그래머스 59038](https://school.programmers.co.kr/learn/courses/30/lessons/59038)|
|13|SUM, MAX, MIN|[SQL](docs\SQLs\codingtest\59406.sql)|동물 수 구하기|[프로그래머스 59406](https://school.programmers.co.kr/learn/courses/30/lessons/59406)|
|14|SUM, MAX, MIN|[SQL](docs\SQLs\codingtest\59408.sql)|중복 제거하기|[프로그래머스 59408](https://school.programmers.co.kr/learn/courses/30/lessons/59408)|
|15|SUM, MAX, MIN|[SQL](docs\SQLs\codingtest\273709.sql)|조건에 맞는 아이템들의 가격의 총합 구하기|[프로그래머스 273709](https://school.programmers.co.kr/learn/courses/30/lessons/273709)|
|16|SUM, MAX, MIN|[SQL](docs\SQLs\codingtest\293261.sql)|물고기 종류 별 대어 찾기|[프로그래머스 293261](https://school.programmers.co.kr/learn/courses/30/lessons/293261)|
|17|SUM, MAX, MIN|[SQL](docs\SQLs\codingtest\298515.sql)|잡은 물고기 중 가장 큰 물고기의 길이 구하기|[프로그래머스 298515](https://school.programmers.co.kr/learn/courses/30/lessons/298515)|
|18|SUM, MAX, MIN|[SQL](docs\SQLs\codingtest\299310.sql)|연도별 대장균 크기의 편차 구하기 |[프로그래머스 299310](https://school.programmers.co.kr/learn/courses/30/lessons/299310)|
  
</details>