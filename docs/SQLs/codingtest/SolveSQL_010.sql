/*
https://solvesql.com/problems/settled-sellers-1/

우리 플랫폼에 정착한 판매자 1
난이도 1
출제자 [데이터리안] 민주

정답률 28.38% (1067회 / 3760회)

olist_order_items_dataset 테이블에는 주문 안에 어떤 상품이 포함되어 있는지, 상품의 판매자는 누구인지 등 상품 단위의 데이터가 들어있습니다.
우리 플랫폼에서 상품을 많이 판매하고 있는 판매자가 누구인지 알고 싶습니다. 총 주문이 100건 이상 들어온 판매자 리스트를 출력하는 쿼리를 작성해주세요.
쿼리 결과에는 아래 컬럼이 있어야 합니다.
seller_id - 판매자 ID
orders - 판매자가 판매한 주문 건수

*/

SELECT seller_id, COUNT(DISTINCT(order_id)) AS orders 
FROM olist_order_items_dataset 
GROUP BY seller_id
HAVING orders >= 100 
;
