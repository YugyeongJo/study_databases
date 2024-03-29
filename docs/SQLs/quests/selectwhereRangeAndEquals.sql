-- quest 조건 사항
-- 1) 조건 : Country 가 Germany 와 USA가 아닌 것들
-- 2) 조건 : CustomerID가 50에서 89이고, City가 London인 고객

-- 1) 조건
SELECT * 
FROM Customers
WHERE Country <> 'Germany' AND 'USA';
-- Number of Records: 80
SELECT * FROM Customers
WHERE Country NOT IN ('Germany','USA');
-- Number of Records: 67

-- 2) 조건
SELECT * 
FROM Customers
WHERE CustomerID BETWEEN 50 AND 89
AND City = 'London';
-- Number of Records: 2