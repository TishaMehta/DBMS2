CREATE TABLE EMPLOYEE_INFO
(
	EID INT,
	ENAME VARCHAR(100),
	GENDER VARCHAR(10),
	JOININGDATE DATETIME,
	SALARY DECIMAL(8,2),
	CITY VARCHAR(100)
);

INSERT INTO EMPLOYEE_INFO VALUES(1,'NICK','MALE','1913-01-01',4000,'LONDON')

INSERT INTO EMPLOYEE_INFO VALUES(2,'JULIAN','FEMALE','1914-10-01',3000,'NEW YORK')

INSERT INTO EMPLOYEE_INFO VALUES(3,'ROY','MALE','1916-06-01',3500,'LONDON')

INSERT INTO EMPLOYEE_INFO VALUES(4,'TOM','MALE',NULL,4500,'LONDON')

INSERT INTO EMPLOYEE_INFO VALUES(5,'JERRY','MALE','1913-02-01',2800,'SYDNEY')

INSERT INTO EMPLOYEE_INFO VALUES(6,'PHILIP','MALE','1915-01-01',7000,'NEW YORK')

INSERT INTO EMPLOYEE_INFO VALUES(7,'SARA','FEMALE','1917-08-01',4800,'SYDNEY')

INSERT INTO EMPLOYEE_INFO VALUES(8,'EMILY','FEMALE','1915-01-01',5500,'NEW YORK')

INSERT INTO EMPLOYEE_INFO VALUES(9,'MICHAEL','MALE',NULL,6500,'LONDON')

INSERT INTO EMPLOYEE_INFO VALUES(10,'JOHN','MALE','1915-01-01',8800,'LONDON')

SELECT * FROM EMPLOYEE_INFO

-1-
SELECT * FROM EMPLOYEE_INFO
WHERE ENAME LIKE 'M__H%'

-2-
SELECT POWER(3,5) AS OUTPUT 

-3-
SELECT GETDATE()-20

-4-
SELECT ENAME FROM EMPLOYEE_INFO
WHERE ENAME LIKE 'J%' AND ENAME LIKE '%N%'

-5-
SELECT SUBSTRING('SQL PROGRAMING',2,8)

-6-
SELECT ENAME FROM EMPLOYEE_INFO
WHERE CITY LIKE '%NEY' AND CITY LIKE '______'

-7-
SELECT CONVERT(VARCHAR,15)

-8-
ALTER TABLE EMPLOYEE_INFO ADD DEPARTMENT VARCHAR(20)

-9-
UPDATE EMPLOYEE_INFO SET DEPARTMENT='MARKETING' WHERE CITY='LONDON'

-10-
SELECT * FROM EMPLOYEE_INFO WHERE ENAME LIKE '%[N,Y]' 

-11-
SELECT CEILING(63.1)
SELECT CEILING(63.8)
SELECT CEILING(-63.2)

-12-
SELECT * FROM EMPLOYEE_INFO
WHERE JOININGDATE IS NULL

-13-
SELECT UPPER(ENAME) FROM EMPLOYEE_INFO
SELECT LOWER(CITY) FROM EMPLOYEE_INFO

-14-
ALTER TABLE EMPLOYEE_INFO ALTER COLUMN ENAME CHAR(30)

-15-
SELECT MAX(SALARY) FROM EMPLOYEE_INFO 
GROUP BY CITY

-16-
SELECT ENAME+'WORKS AT'+CITY+'EARNS'+CAST(SALARY AS VARCHAR) FROM EMPLOYEE_INFO

-17-
SELECT COUNT(ENAME) FROM EMPLOYEE_INFO
WHERE SALARY>5000

-18-
SELECT LEFT(ENAME,4), RIGHT(RTRIM(ENAME),3) FROM EMPLOYEE_INFO

-19-
SELECT SUM(SALARY),CITY FROM EMPLOYEE_INFO
WHERE JOININGDATE>'2014-01-01'
GROUP BY CITY
HAVING SUM(SALARY)>15000

-20-
SELECT REPLACE(ENAME,'U','OO') FROM EMPLOYEE_INFO

-21-
SELECT AVG(SALARY),COUNT(ENAME),CITY
FROM EMPLOYEE_INFO
GROUP BY CITY

-22-
SELECT SUM(SALARY) AS TOTAL_SAL FROM EMPLOYEE_INFO
WHERE GENDER='FEMALE'
GROUP BY GENDER

-23-
SELECT DATEDIFF(YEAR,JOININGDATE,GETDATE()) FROM EMPLOYEE_INFO

-24-
ALTER TABLE EMPLOYEE_INFO DROP COLUMN DEPARTMENT

-25-
UPDATE EMPLOYEE_INFO SET CITY=NULL WHERE CITY='SYNDEY' 

-26-
SELECT ENAME, SALARY, JOININGDATE FROM EMPLOYEE_INFO

-27-
SELECT LEN(RTRIM(ENAME)+GENDER) FROM EMPLOYEE_INFO

-28-
SELECT MAX(SALARY) - MIN(SALARY) FROM EMPLOYEE_INFO

-29-
SP_RENAME 'EMPLOYEE_INFO.ENAME', 'FIRSTNAME'

-30-
SP_RENAME 'EMPLOYEE_INFO' , 'EMPMASTER'