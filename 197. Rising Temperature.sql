/*
Write a solution to find all dates' Id with higher temperatures compared 
to its previous dates (yesterday).

Return the result table in any order.

The result format is in the following example.
*/

SELECT
    weather1.id
FROM Weather weather1, Weather weather2
WHERE DATEDIFF(weather1.recordDate, weather2.recordDate)=1 AND 
        weather1.temperature > weather2.temperature