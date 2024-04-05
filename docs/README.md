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
  <summary>프로그래머스</summary>
  
|NO|구분|소스|문제설명|출처|
|--|--|--|--|--|
|1|SELECT|[SQL](./docs/SQLs/codingtest/298517.sql)|가장 큰 물고기 10마리 구하기|[프로그래머스 298517](https://school.programmers.co.kr/learn/courses/30/lessons/298517)|
|2|SELECT|[SQL](./docs/SQLs/codingtest/131120.sql)|3월에 태어난 여성 회원 목록 출력하기|[프로그래머스 131120](https://school.programmers.co.kr/learn/courses/30/lessons/131120)|
|3|SELECT|[SQL](./docs/SQLs/codingtest/132203.sql)|흉부외과 또는 일반외과 의사 목록 출력하기|[프로그래머스 132203](https://school.programmers.co.kr/learn/courses/30/lessons/132203)|
|4|SELECT|[SQL](./docs/SQLs/codingtest/151136.sql)|평균 일일 대여 요금 구하기|[프로그래머스 151136](https://school.programmers.co.kr/learn/courses/30/lessons/151136)|
|5|SELECT|[SQL](./docs/SQLs/codingtest/132201.sql)|12세 이하인 여자 환자 목록 출력하기
|[프로그래머스 132201](https://school.programmers.co.kr/learn/courses/30/lessons/132201)|
  
</details>