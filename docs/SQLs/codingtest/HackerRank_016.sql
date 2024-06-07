/*
https://www.hackerrank.com/challenges/weather-observation-station-11/problem?isFullScreen=true

Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:

Station.jpg

where LAT_N is the northern latitude and LONG_W is the western longitude.

*/

SELECT DISTINCT CITY
FROM STATION
WHERE (CITY NOT LIKE '%A'
AND CITY NOT LIKE '%E'
AND CITY NOT LIKE '%I'
AND CITY NOT LIKE '%O'
AND CITY NOT LIKE '%U')
OR (CITY NOT LIKE 'A%'
AND CITY NOT LIKE 'E%'
AND CITY NOT LIKE 'I%'
AND CITY NOT LIKE 'O%'
AND CITY NOT LIKE 'U%')
;