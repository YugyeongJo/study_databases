-- quest refer : https://www.w3schools.com/mysql/trymysql.asp?filename=trysql_is_null

-- quest question
/*
- Table : Customers, Orders
+ 조건1 : 주문 갯수가 5개 이상인 CustomerName 찾기
- Table : Orders, Employees
+ 조건2 : 주문 갯수가 20개 이상인 판매자 정보
- Table : Suppliers, Products
+ 조건3 : CategoryID를 가장 많이 제공 상위 2개 회사 정보
*/

-- 조건 1 : 주문 갯수가 5개 이상인 CustomerName 찾기
SELECT CustomerID, CustomerName
FROM Customers
WHERE CustomerID IN (SELECT CustomerID
				FROM Orders
				GROUP BY CustomerID
				HAVING COUNT(CustomerID) >= 5
				ORDER BY CustomerID ASC);
-- Number of Records: 72

-- 조건2 : 주문 갯수가 20개 이상인 판매자 정보
SELECT EmployeeID, Notes
FROM Employees
WHERE EmployeeID IN (SELECT EmployeeID
				FROM Orders
				GROUP BY EmployeeID
				HAVING COUNT(EmployeeID) >= 20
				ORDER BY EmployeeID ASC);
-- Number of Records: 9

-- 조건3 : CategoryID를 가장 많이 제공 상위 2개 회사 정보
-- 상위 2개 회사 정보 추려내기
SELECT * 
FROM Suppliers
WHERE SupplierID
IN(SELECT SupplierID
		FROM Products
		GROUP BY CategoryID
		HAVING COUNT(CategoryID) >= 12);
-- Number of Records: 3

