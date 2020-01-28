CREATE TABLE teachers();
CREATE TABLE students();

select * from teachers;
select * from students;

ALTER TABLE teachers ;
ALTER TABLE teachers drop column student_id;

drop table students; 

ALTER TABLE students 
ADD COLUMN student_id serial PRIMARY KEY,
ADD COLUMN first_name varchar(100),
ADD COLUMN last_name varchar(100), 
ADD COLUMN homeroom_number integer, 
ADD COLUMN phone varchar(20) UNIQUE,
ADD COLUMN email varchar(100) UNIQUE,
ADD COLUMN graduation_year integer;

alter table students
alter column graduation_year type integer using graduation_year::integer;

drop table teachers;

ALTER TABLE teachers
ADD COLUMN teacher_id serial PRIMARY KEY,
ADD COLUMN first_name varchar(100),
ADD COLUMN last_name varchar(100),
ADD COLUMN homeroom_number integer, 
ADD COLUMN department varchar(100), 
ADD COLUMN email varchar(100) UNIQUE,
ADD COLUMN phone varchar(100) UNIQUE;


INSERT INTO students(student_id,first_name,last_name,phone, graduation_year, homeroom_number)
values(1,'Mark','Watney','777-555-1234',2035,5);

INSERT INTO teachers( teacher_id,first_name,last_name,homeroom_number, department,email,phone)
values(1,'Jonas','Salk',5,'Biology','jsalk@school.org','777-555-4321');

