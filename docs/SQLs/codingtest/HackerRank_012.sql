/*
https://www.hackerrank.com/challenges/weather-observation-station-7/problem?isFullScreen=true

Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:

Station.jpg

where LAT_N is the northern latitude and LONG_W is the western longitude.

*/

SELECT DISTINCT CITY
FROM STATION
WHERE CITY LIKE '%A'
OR CITY LIKE '%E'
OR CITY LIKE '%I'
OR CITY LIKE '%O'
OR CITY LIKE '%U'
;