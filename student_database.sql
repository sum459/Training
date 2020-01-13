create database student;
use student;
create table students(
id int,
name varchar(20),
birthdate date,
phone varchar(12),
gender varchar(1));
desc students;
insert into students
values
(101,"SUMIT","2000-02-11","7678216217","M"),
(102,"SAHIL","1998-10-11","7678234217","M"),
(103,"GUNJAN","1999-02-21","1278211217","f"),
(104,"Neha","1999-03-21","9998211217","M"),
(105,"GUNJAN","1999-02-11","8678611217","f");
select * from students;
