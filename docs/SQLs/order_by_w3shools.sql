SELECT ProductName, CategoryID, Price
FROM Products
ORDER BY Price ASC;   오름차순

SELECT *
FROM Products
ORDER BY Price DESC;   내림차순

SELECT ProductName, CategoryID, Price
FROM Products
ORDER BY CategoryID ASC, Price ASC;       CategoryID 오른차순으로 하고나서, Price가 오른차순으로 정렬