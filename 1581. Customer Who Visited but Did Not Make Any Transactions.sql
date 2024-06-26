/*
Write a solution to find the IDs of the users who visited without 
making any transactions and the number of times they made these types of visits.

Return the result table sorted in any order.
*/

SELECT
    customer_id,
    COUNT(customer_id) AS 'count_no_trans'
FROM Visits
WHERE 
    Visits.visit_id NOT IN (SELECT visit_id FROM Transactions)
GROUP BY
    customer_id

/*
Ищем идентификаторы покупателей, которые отсутствуют в таблице Посещений, 
считаем их количество, сгруппированное по идентификатору покупателя
*/