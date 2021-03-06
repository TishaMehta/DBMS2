CREATE TABLE STUDENT_INFO
(
	STUID INT,
	NAME VARCHAR(100),
	ENROLLMENTNO VARCHAR(12),
	DIVISION VARCHAR(50),
	SEM INT,
	BIRTHDATE DATETIME,
	EMAIL VARCHAR(100),
	CONTACTNO VARCHAR(50)
);

INSERT INTO STUDENT_INFO VALUES(101,'NAIMISH PATEL','090200107051','BCX-3',3,'1992-12-06','NAIMISHP49@GMAIL.COM','8866205253')
INSERT INTO STUDENT_INFO VALUES(102,'FIROZ A.S.','090200107090','BCY-3',3,'1994-05-03','FIROZ.ME@GMAIL.COM','8885999922')
INSERT INTO STUDENT_INFO VALUES(103,'KRUNAL VYAS','090243107101','BCZ-5',5,'1984-03-01','KRUNAL.VYAS@GMAIL.COM','9990888877')
INSERT INTO STUDENT_INFO VALUES(104,'VIJAY PATEL','090200107103','BCX-5',5,'1985-02-15','VIJAY.PATEL123@GMAIL.COM','8787878787')
INSERT INTO STUDENT_INFO VALUES(105,'VIMAL TRIVEDI','090200107103','BCY-3',3,'1988-01-20','MAULIK123@GMAIL.COM','8789564512')
SELECT * FROM STUDENT_INFO

-1-
SELECT NAME FROM STUDENT_INFO 
WHERE SEM IN(3,5) 

SELECT NAME FROM STUDENT_INFO 
WHERE SEM =3 OR SEM=5

-2-
SELECT NAME, ENROLLMENTNO FROM Student_Info
WHERE STUID BETWEEN 103 AND 105

SELECT NAME, ENROLLMENTNO FROM Student_Info
WHERE STUID>=103 AND STUID<=105

-3-
SELECT NAME, ENROLLMENTNO, EMAIL FROM Student_Info
WHERE SEM=5

-4-
SELECT TOP 3* FROM Student_Info

-5-
SELECT TOP 30 PERCENT NAME, ENROLLMENTNO FROM Student_Info
WHERE CONTACTNO LIKE '%7'

-6-
SELECT DISTINCT SEM FROM Student_Info

-7-
SELECT NAME FROM Student_Info
WHERE ENROLLMENTNO IS NULL

-8-
SELECT * FROM Student_Info 
WHERE NAME NOT LIKE 'V%'

-9-
SELECT * FROM Student_Info
WHERE EMAIL LIKE '%3@G' AND EMAIL LIKE '______'

-10-
SELECT NAME FROM Student_Info
WHERE NAME LIKE 'F_R%'

-11-
SELECT * FROM Student_Info
WHERE CONTACTNO LIKE '%877%'

-12-
SELECT NAME FROM Student_Info
WHERE SEM=3 AND CONTACTNO NOT LIKE '%[8,9]%'

-13-
SELECT * FROM Student_Info
WHERE BIRTHDATE>'1990-01-01'

-14-
UPDATE Student_Info SET DIVISION='BCX-5', SEM=5
WHERE STUID=102

SELECT * FROM Student_Info

-15-
UPDATE Student_Info SET NAME='FIROZ SHERASIYA'
WHERE EMAIL='FIROZ.ME@GMAIL.COM' AND CONTACTNO='8885999922'

SELECT * FROM Student_Info

-16-
ALTER TABLE STUDENT_INFO ADD  CITY VARCHAR(50)

-17-
DELETE FROM STUDENT_INFO WHERE DIVISION='BCX-3'

-18-
SP_RENAME 'STUDENT_INFO.EMAIL', 'EMAILADDRESS'

-19-
SELECT * INTO STUDENT_NEW FROM Student_Info

-20-
TRUNCATE TABLE STUDENT_INFO
