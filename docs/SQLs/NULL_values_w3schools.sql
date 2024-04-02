refer : https://www.w3schools.com/sql/sql_null_values.asp

-- NULL
SELECT CustomerName, ContactName, Address
FROM Customers
WHERE Address IS NULL;

-- NOT NULL
SELECT CustomerName, ContactName, Address
FROM Customers
WHERE Address IS NOT NULL;