CREATE TABLE account(
user_id serial PRIMARY KEY,
username varchar(50) UNIQUE NOT NULL,
password varchar(50) not null,
email varchar(335) unique not null,
created_on timestamp not null,
last_login timestamp);

CREATE TABLE role(
role_id serial PRIMARY KEY,
role_name VARCHAR(255) UNIQUE NOT NULL);

CREATE TABLE account_role(
user_id integer NOT NULL
role_id integer NOT NULL
grant_date timestamp without time zone,
PRIMARY KEY(user_id,role_id),
	
CREATE TABLE customers(
customer_id serial not null unique PRIMARY KEY,
first_name varchar (200) not null,
last_name varchar (200) not null,
email varchar (200) not null,
time_spent interval);
