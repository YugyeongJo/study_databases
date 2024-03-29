## mongodb 연결
from pymongo import MongoClient # mongodb에 접속
mongoClient = MongoClient("mongodb://localhost:27017")  # database 연결
database = mongoClient["local"]  # collection에 작업
collection = database['todos_list']  # solvingproblem collection에 작업

documents = collection.find({}, {"title":1})

print(list(documents))

