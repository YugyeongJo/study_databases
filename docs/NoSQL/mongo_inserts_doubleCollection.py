from pymongo import MongoClient
# mongodb에 접속 -> 접속 자원에 대한 class를 받아냄
mongoClient = MongoClient("mongodb://localhost:27017")

# database 연결
database = mongoClient["local"]

# collection에 작업
collection = database['fruits']

# insert 작업 진행
mixed_fruit = {"name": "키위", "color": ["갈색", "주황색", "노란색"], "origin": "뉴질랜드"}
result = collection.insert_one(mixed_fruit)
pass
