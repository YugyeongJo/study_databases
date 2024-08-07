/*
https://www.hackerrank.com/challenges/revising-aggregations-the-count-function/problem?isFullScreen=true

Query a count of the number of cities in CITY having a Population larger than .

Input Format

The CITY table is described as follows: CITY.jpg

*/

SELECT COUNT(*)
FROM CITY
WHERE POPULATION >= 100000
;
