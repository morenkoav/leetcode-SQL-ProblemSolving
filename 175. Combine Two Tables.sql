/*
Write a solution to report the first name, last name, city, and state of each person in the Person table. If the address of a personId is not present in the Address table, report null instead.

Return the result table in any order.
*/

SELECT
    firstName,
    lastName,
    Address.city AS 'city',
    Address.state AS 'state'
FROM 
    Person
LEFT JOIN 
    Address ON
    Person.personId = Address.personId
