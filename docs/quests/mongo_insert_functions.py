# fruit_list = [
#     {"name": "사과", "color": "빨강", "origin": "한국"},
#     {"name": "바나나", "color": "노랑", "origin": "필리핀"},
#     {"name": "키위", "color": "갈색", "origin": "뉴질랜드"},
#     {"name": "오렌지", "color": "주황", "origin": "미국"},
# ]

def connect_mongo ():
    from pymongo import MongoClient
    # mongodb에 접속 -> 접속 자원에 대한 class를 받아냄
    mongoClient = MongoClient("mongodb://localhost:27017")
    
    # database 연결
    database = mongoClient["local"]
    
    # collection에 작업
    collection = database['fruits']
    
    # insert 작업 진행
    return collection

#insert 함수 정의
def dict_fruit (connect,dict):
    connect.insert_one(dict)
    return 

#함수에 넣어 줄 값
fruit_list = [
    {"name": "키위", "color": "갈색", "origin": "뉴질랜드"},
    {"name": "바나나", "color": "노랑", "origin": "필리핀"},
    {"name": "오렌지", "color": "주황", "origin": "미국"}
]

connect = connect_mongo()
    
for count in [0,1,2]:
    dict_fruit (connect,fruit_list[count])

pass

