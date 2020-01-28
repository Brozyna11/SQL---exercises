-- UNION operation combines result sets of two or more select statements into a single result set
-- Both Queries must return the same number of columns
-- corresponding columns must have compatable data types
-- the UNION operator removes all duplicate rows unless the UNION ALL is used
-- the UNION operator may place the rows in thhe first query before after or between the rows in the result of second query
-- to sort the rows in the combined result set by a specified column you use ORDER BY
SELECT * FROM sales2007q1
UNION
SELECT * FROM sales2007q2;
-- quite useful with aggregate functions 