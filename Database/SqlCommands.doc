show DATABASES;
CREATE DATABASE EMPLOYEE0;
USE EMPLOYEE0;
CREATE TABLE emp(
ID INT,
NAME_ VARCHAR(20),
BIRTH_DATE DATE,
PHONE VARCHAR(12));
describe EMP;
INSERT INTO emp ( ID,NAME_,BIRTH_DATE,PHONE)
VALUES
(101,"SUMIT","2000-02-11","7678216217"),
(102,"SAHIL","1998-10-11","7678234217"),
(103,"GUNJAN","1999-02-21","1278211217"),
(104,"Neha","1999-03-21","9998211217"),
(105,"GUNJAN","1999-02-11","8678611217");
SELECT * FROM emp;
SET SQL_SAFE_UPDATES=0;
update emp
set 
ID = 100
Where NAME_ = "SUMIT";
select * from emp;
ALTER TABLE emp CHANGE COLUMN `PHONE`  CONTACT varchar(20);
select * from emp;
describe emp;
ALTER TABLE emp
ADD PRIMARY KEY (ID);

create table dept(
dept_id int,
dept_name varchar(20),
primary key(dept_id));
insert into dept(dept_id,dept_name)
values
(100,"Web Developer"),
(103,"UI/UX"),
(102,"UI/UX"),
(105,"Front End"),
(106,"UI/UX");

select * from dept;
select max(dept_id) from dept;
select avg(dept_id) from dept;
select min(dept_id) from dept;
select * from emp cross join dept;

ALTER TABLE dept
ADD COLUMN  ID int ;
DESCRIBE dept;
SELECT * FROM dept;
update dept
set 
ID = 101
WHERE dept_id = 100;
update dept
set 
ID = (102)
WHERE dept_id IN (101);
SELECT * FROM dept;
describe dept;
update dept
set 
ID = (102)
WHERE dept_id IN (105);
update dept
set 
ID = (103)
WHERE dept_id IN (103);
SELECT ID FROM emp WHERE NAME_ LIKE "%N";
SELECT * FROM emp 
WHERE NAME_ LIKE "%N" OR NAME_ LIKE "S%" ;
SELECT * FROM emp 
WHERE BINARY NAME_ LIKE "%n"  ;
SELECT * FROM emp 
WHERE BINARY NAME_ REGEXP "SA|S|Z"  ;
SELECT * FROM emp 
WHERE BINARY NAME_ NOT REGEXP "SA|S|Z"  ;
SELECT * FROM emp
WHERE ID < 104
ORDER BY CONTACT;
SELECT * FROM emp
WHERE ID < 104 AND NAME_="SUMIT"
ORDER BY CONTACT;
SELECT DISTINCT NAME_ FROM emp; 
SELECT * FROM dept 
WHERE 'ID' IS NOT NULL;
SELECT dept_id AS DID FROM dept 
WHERE 'ID' IS NOT NULL
ORDER BY dept_name
LIMIT 2;
SELECT COUNT(*) AS T FROM EMP;
SELECT COUNT( DISTINCT dept_id) AS DID FROM dept;  
update dept
set 
dept_id=0,dept_name="RAM",ID=109
WHERE dept_name IS NULL;
SELECT * FROM emp;
SELECT * FROM dept;

COMMIT;

update dept
set 
dept_id=123,dept_name="RAAM",ID=1090
WHERE dept_name IS NULL;

ROLLBACK;
DELETE FROM emp where id=100;

ALTER TABLE dept CHANGE COLUMN `ID`  dept_head_ID int;
describe dept;
describe emp;
SELECT * FROM emp AS E INNER JOIN dept AS D
ON E.ID = D.dept_head_ID
ORDER BY ID;
SELECT NAME_ FROM emp AS E JOIN dept AS D
ON E.ID = D.dept_id;

SELECT * FROM dept AS D CROSS JOIN emp AS E
ON E.ID = D.dept_head_ID
ORDER BY E.ID;

SELECT * FROM dept AS D RIGHT JOIN emp AS E
ON E.ID = D.dept_head_ID
ORDER BY E.ID;

SELECT * FROM dept AS D LEFT JOIN emp AS E
ON E.ID = D.dept_head_ID AND dept_head_ID IS NOT NULL
ORDER BY D.dept_id desc ;

SELECT D.dept_name , COUNT(D.dept_head_ID) FROM dept AS D inner JOIN emp AS E
ON E.ID = D.dept_head_ID AND dept_head_ID IS NOT NULL
group BY dept_head_ID ;

SELECT D.dept_name , COUNT(D.dept_head_ID) FROM dept AS D inner JOIN emp AS E
ON E.ID = D.dept_head_ID 
where dept_head_ID IS NOT NULL
group BY dept_head_ID 
having COUNT(D.dept_head_ID) < 1;






















 

