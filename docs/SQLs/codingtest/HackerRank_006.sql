/*

https://www.hackerrank.com/challenges/japanese-cities-name/problem?isFullScreen=true

Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
The CITY table is described as follows:
CITY.jpg

*/

SELECT NAME
FROM CITY
WHERE COUNTRYCODE  = 'JPN'
;