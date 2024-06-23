/*
Write a solution to report the name and bonus amount of each employee with a bonus less than 1000.

Return the result table in any order.
*/

SELECT
    name,
    Bonus.bonus AS 'bonus'
FROM
    Employee
LEFT JOIN
    Bonus ON
    Employee.empId = Bonus.empId
WHERE Bonus.bonus < 1000 OR ISNULL(Bonus.bonus)