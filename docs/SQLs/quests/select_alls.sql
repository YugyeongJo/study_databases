-- quest refer : https://www.w3schools.com/sql/trymysql.asp?filename=trysql_case

-- quest question
/*
+ 조건 1 : 비 진성고객 리스트 필요
+ 조건 2 : 판매자 중 수익 낮은 순위자 3명 정보, 총 판매액
+ 조건 3 : 배송 회사별 총 배송 건수와 총 제품 금액 정보
+ 조건 4 : 제품 회사별 총 판매액과 정보
+ 조건 5 : 카테고리별 판매 합계 정보
*/

-- 조건 1 : 비 진성고객 리스트 필요
SELECT COUNT(Customers.CustomerID) AS Customer_sum, Customers.*, Orders.OrderID
FROM Customers
LEFT JOIN Orders
ON Orders.CustomerID = Customers.CustomerID
GROUP BY Customers.CustomerID
HAVING COUNT(Orders.CustomerID) <= 1
;
-- Number of Records: 3

-- 조건 2 : 판매자 중 수익 낮은 순위자 3명 정보, 총 판매액
SELECT OrderDetails.OrderID, Products.ProductID, OrderDetails.Quantity, Products.Price
FROM Products
INNER JOIN OrderDetails
ON OrderDetails.ProductID = Products.ProductID
;

-- 조건 3 : 배송 회사별 총 배송 건수와 총 제품 금액 정보
-- 조건 4 : 제품 회사별 총 판매액과 정보
-- 조건 5 : 카테고리별 판매 합계 정보