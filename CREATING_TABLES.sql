 -- table can have only one primary key
 -- add primary key to every column
 -- primary key uniquey identify row in the table
 -- it is defined by constraints
 
-- Foreign Keys

-- field or group of fields in the table which can uniquely define a row in another table 
-- in other words foreign key in a table refers to the primary key in another table
-- table which contains Foreign Ke is (referencing table or child table)
-- table to which foreign key reference is (referenced table or parent table)
--- on table can have multiple foreign Keys

CREATE TABLE table_name
(column_name TYPE column_constraint,
table,constraint)
INHERITS existing_table_name;

-- NOT NULl - the value of the column cannot be NULL
--UNIQUE the valie of the column must be unique
-- CHECK 
--PRIMARY KEY - this constraint is the combination of NOT NULL and UNIQUE constraints
--You can define only one column as Pro,aru Ley 
--If primary key contains multiple columns you must us the table-level constraint
-- CHECK - enables to check a codition when you insert or update data
-- REFERENCES -  constrains the value of the column that exists in a column in another table
!!!!!!!!!!!!1
UNIQUE (Column_list)
NOT NULL (column_list)
PRIMARY KEY (column_list)
CHECK(condition)
REFERENCES -- related to Foreign Key
!!!!!!!!!!!!!!


CREATE TABLE account(
user_id serial PRIMARY KEY,
username VARCHAR (50) UNIQUE NOT NULL,
password VARCHAR (50) NOT NULL,
email VARCHAR (355) UNIQUE NOT NULL,
created_on TIMESTAMP NOT NULL,
last_login TIMESTAMP
);

CREATE TABLE role(
role_id serial PRIMARY KEY,
role_name VARCHAR (255) UNIQUE NOT NULL
);

CREATE TABLE account_role
(
  user_id integer NOT NULL,
  role_id integer NOT NULL,
  grant_date timestamp without time zone,
  PRIMARY KEY (user_id, role_id),
  CONSTRAINT account_role_role_id_fkey FOREIGN KEY (role_id)
      REFERENCES role (role_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT account_role_user_id_fkey FOREIGN KEY (user_id)
      REFERENCES account (user_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)

