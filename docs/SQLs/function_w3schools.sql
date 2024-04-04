refer : https://www.w3schools.com/sql/sql_ref_mysql.asp

-- [자주 쓰는 function]
-- concat
refer : https://www.w3schools.com/sql/func_mysql_concat.asp
SELECT CONCAT("SQL ", "Tutorial ", "is ", "fun!") AS ConcatenatedString;

-- length
refer : https://www.w3schools.com/sql/func_mysql_length.asp
SELECT LENGTH("SQL Tutorial") AS LengthOfString;

-- trim
refer : https://www.w3schools.com/sql/func_mysql_trim.asp
SELECT TRIM("    SQL Tutorial    ") AS TrimmedString;

-- now
refer : https://www.w3schools.com/sql/func_mysql_now.asp
SELECT now() as today;

-- insert_into
refer : https://www.w3schools.com/sql/sql_insert.asp
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');

