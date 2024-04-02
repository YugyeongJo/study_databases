refer : https://www.w3schools.com/sql/sql_join_inner.asp

SELECT CATEGORIES.*, PRODUCT.*, SUPPLIER.*
FROM Products AS PRODUCT 

INNER JOIN Suppliers AS SUPPLIER
ON SUPPLIER.SupplierID = PRODUCT.SupplierID

AND SupplierName IN ('Exotic Liquid', 'Tokyo Traders')

INNER JOIN Categories AS CATEGORIES
ON PRODUCT.CategoryID = CATEGORIES.CategoryID
;