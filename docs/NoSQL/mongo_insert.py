from pymongo import MongoClient
# mongodb에 접속 -> 접속 자원에 대한 class를 받아냄
mongoClient = MongoClient("mongodb://localhost:27017")

# database 연결
database = mongoClient["local"]

# collection에 작업
collection = database['fruits']

# insert 작업 진행
collection.insert_one({"name": "오렌지", 
                       "color": "주황", 
                       "origin": "미국"})

dict_fruit = {"name": "키위", "color": "갈색", "origin": "뉴질랜드"}
collection.insert_ma(dict_fruit)
pass