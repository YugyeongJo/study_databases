refer : https://www.w3schools.com/sql/sql_join_inner.asp

-- WHERE 문 안에 sub query 넣기
SELECT CustomerID, CustomerName
FROM Customers
WHERE CustomerID IN (SELECT CustomerID
                    FROM Orders
                    GROUP BY CustomerID
                    HAVING COUNT(CustomerID) >= 5);

-- FROM 문 안에 sub query 넣기
SELECT SUB_ORDERS.CNT, SUB_ORDERS.CustomerID
FROM (SELECT COUNT(CustomerID) AS CNT, CustomerID
    FROM Orders
    GROUP BY CustomerID
    HAVING COUNT(CustomerID) >= 5
    ORDER BY CustomerID ASC) AS SUB_ORDERS
    ;
            