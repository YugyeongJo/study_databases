from pymongo import MongoClient
# mongodb에 접속 -> 접속 자원에 대한 class를 받아냄
mongoClient = MongoClient("mongodb://localhost:27017")

# database 연결
database = mongoClient["local"]

# collection에 작업
collection = database['posts']

# insert 작업 진행
documents = collection.find({}) ;
for document in documents:
    print("document : {}".format(document) )
    pass
pass