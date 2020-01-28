CREATE TABLE testujemy (
column1 serial primary key);

select * from testujemy;

drop table testujemy;

drop table if exists testujemy;

-- RESTRICT looks to see what objects are dependent on the object being dropped. If there are dependent objects, then the dropping of the object does not occur.
drop table if exists testujemy restrict;
-- drop table and all objects which depend on it
drop table if exists testujemy cascade;

