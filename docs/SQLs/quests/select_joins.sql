-- refer quest : https://www.w3schools.com/mysql/trymysql.asp?filename=trysql_is_null

-- quest question
/*
- Table : Customers, Orders
+ 조건 1 : CustomerName별로 주문 갯수 표시
- Table : OrderDetails 
+ 조건 2 : 제품명, 가격, 주문 갯수, 고객명 표시
- Table : Orders
+ 조건 3 : 가장 많이 주문 받은 회사 직원명과 갯수
*/

-- 조건 1 : CustomerName별로 주문 갯수 표시
SELECT Customers.CustomerName, COUNT(Customers.CustomerID) AS CustomerID_SUM
FROM Customers

INNER JOIN Orders
ON Orders.CustomerID = Customers.CustomerID
GROUP BY Customers.CustomerID
;
-- Number of Records: 89

-- 조건 2 : 제품명, 가격, 주문 갯수, 고객명 표시
SELECT OrderDetails.OrderID, Products.ProductName, Products.Price, OrderDetails.Quantity, Customers.CustomerName
FROM OrderDetails

INNER JOIN Products
ON OrderDetails.ProductID = Products.ProductID

INNER JOIN Orders
ON OrderDetails.OrderID = Orders.OrderID

INNER JOIN Customers
ON Orders.CustomerID = Customers.CustomerID

GROUP BY OrderDetails.OrderID
;

-- 조건 3 : 가장 많이 주문 받은 회사 직원명과 갯수
SELECT Orders.EmployeeID, Employees.LastName, Employees.FirstName, COUNT(Orders.OrderID) AS Order_COUNT
FROM Orders

INNER JOIN Employees
ON Orders.EmployeeID = Employees.EmployeeID

GROUP BY Orders.EmployeeID
ORDER BY COUNT(Orders.OrderID) DESC
LIMIT 0,1
;