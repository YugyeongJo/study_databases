/*
https://www.hackerrank.com/challenges/population-density-difference/problem?isFullScreen=true

Query the difference between the maximum and minimum populations in CITY.

Input Format

The CITY table is described as follows: CITY.jpg

*/

SELECT MAX(POPULATION)-MIN(POPULATION)
FROM CITY
;