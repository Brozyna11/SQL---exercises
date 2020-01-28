-- INNER JOIN produces only the set of records that match in both Table A and Table B
SELECT column_name(s)
FROM table1 -- main table
INNER JOIN table2
ON table1.column_name = table2.column_name;
-- FULL OUTER JOIN produces the set of all records in the Table A and B
SELECT column_name(s)
FROM table1 -- main table
FULL OUTER JOIN table2
ON table1.column_name = table2.column_name
WHERE condition;
-- LEFT OUTER JOIN  keyword returns all records from the left table (table1), and the matched records from the right table (table2).
SELECT column_name(s)
FROM table1
LEFT JOIN table2
ON table1.column_name = table2.column_name;
-- RIGHT OUTER JOIN - keyword returns all records from the right table (table2), and the matched records from the left table (table1). The result is NULL from the left side, when there is no match.
SELECT column_name(s)
FROM table1
RIGHT JOIN table2
ON table1.column_name = table2.column_name;
-- To produce set of records only in Table A, but not in Table B
-- LEFT OUTER JOIN with WHERE
-- RITGHT OUTER JOIN with WHERE
select * from TableA
LEFT OUTER JOIN TableB
ON TableA.name = TableB.name
WHERE TableB.id IS null
-- FULL OUTER JOIN WITH WHERE
-- to produce set of records unique to TableA and TableB
-- keep in mind that if you type LEFT JOIN system will automatically use LEFT OUTER JOIN
select film.film_id,film.title,inventory_id
from film
left join inventory on inventory.film_id = film.film_id
where inventory.film_id is not null
order by title;
