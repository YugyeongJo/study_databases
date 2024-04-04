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

## Coding Test
<details>

  <summary>백준</summary>

  |구분|소스|문제설명|출처|
  |--|--|--|--|
  |입출력과 사칙연산|[JAVA](./src/codingtests/Beakjoon/B2557.java)|Hello World!를 출력|[백준 2557](https://www.acmicpc.net/problem/2557)|

</details>

<details>
  <summary>프로그래머스</summary>
  
  |NO|구분|소스|문제설명|출처|
  |--|--|--|--|--|
  |1|SELECT|[SQL](./docs/SQLs/codingtest/298517.sql)|가장 큰 물고기 10마리 구하기|[프로그래머스 298517](https://school.programmers.co.kr/learn/courses/30/lessons/298517)|
  |2|SELECT|[SQL](./docs/SQLs/codingtest/131120.sql)|3월에 태어난 여성 회원 목록 출력하기|[프로그래머스 131120](https://school.programmers.co.kr/learn/courses/30/lessons/131120)|
  
</details>