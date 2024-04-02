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
-- Customer_sum	    CustomerID	        CustomerName	                    ContactName	        Address	                    City	        PostalCode	    Country	    OrderID
-- 1	                13	        Centro comercial Moctezuma	            Francisco Chang	    Sierras de Granada 9993	    México D.F.	    05022	        Mexico	    10259
-- 1	                22	        FISSA Fabrica Inter. Salchichas S.A.	Diego Roel	        C/ Moralzarzal, 86	        Madrid	        28034	        Spain	
-- 1	                57	        Paris spécialités	                    Marie Bertrand	    265, boulevard Charonne	    Paris	        75012	        France	

-- 조건 2 : 판매자 중 수익 낮은 순위자 3명 정보, 총 판매액
SELECT sum(Products.Price*OrderDetails.Quantity) AS VOLUME, Employees.*
FROM Employees
INNER JOIN Orders ON Orders.EmployeeID = Employees.EmployeeID
INNER JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
INNER JOIN Products ON Products.ProductID = OrderDetails.ProductID
GROUP BY Employees.EmployeeID
ORDER BY VOLUME ASC
limit 3 
;
-- Number of Records: 3
-- VOLUME	    EmployeeID
-- 81745.85	    5
-- 83673.45	    6
-- 86566.60	    9

-- 조건 3 : 배송 회사별 총 배송 건수와 총 제품 금액 정보
SELECT Shippers.ShipperID, COUNT(Orders.OrderID) AS TOTAL_DELIVERY, sum(Products.Price*OrderDetails.Quantity) AS VOLUME
FROM Shippers
INNER JOIN Orders ON Orders.ShipperID = Shippers.ShipperID
INNER JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
INNER JOIN Products ON Products.ProductID = OrderDetails.ProductID
GROUP BY ShipperID
ORDER BY ShipperID ASC
;
-- Number of Records: 3
-- ShipperID	TOTAL_DELIVERY	VOLUME
-- 1	        646	            395931.17
-- 2	        864	            610889.89
-- 3	        645	            442546.25

-- 조건 4 : 제품 회사별 총 판매액과 정보
SELECT sum(Products.Price*OrderDetails.Quantity) AS VOLUME, Suppliers.*
FROM Suppliers
INNER JOIN Products ON Suppliers.SupplierID = Products.SupplierID
INNER JOIN OrderDetails ON Products.ProductID = OrderDetails.ProductID
GROUP BY SupplierID
ORDER BY SupplierID ASC
;
-- Number of Records: 29

-- 조건 5 : 카테고리별 판매 합계 정보
SELECT Categories.CategoryID, sum(Products.Price*OrderDetails.Quantity) AS VOLUME
FROM Categories
INNER JOIN Products ON Products.CategoryID = Categories.CategoryID
INNER JOIN OrderDetails ON OrderDetails.ProductID = Products.ProductID
GROUP BY CategoryID
ORDER BY Categories.CategoryID ASC
;
-- Number of Records: 8
-- CategoryID	VOLUME
-- 1	        309582.25
-- 2	        122343.00
-- 3	        190328.54
-- 4	        269128.30
-- 5	        106848.00
-- 6	        190682.69
-- 7	        111395.00
-- 8       	149059.53