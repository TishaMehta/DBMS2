INSERT INTO STUDENTS VALUES(1011,'KEYUR','PATEL','TECHONTHENET.COM','RAJKOT','II-BCX')
INSERT INTO StudentS VALUES(1022,'HARDIK','SHAH','DIGMINECRAFT.COM','AHMEDABD','I-BCY')
INSERT INTO STUDENTS VALUES(1033,'KAJAL','TRIVEDI','BIGACTIVITIES.COM','BARODA','IV-DCX')
INSERT INTO STUDENTS VALUES(1044,'BHOOMI','GAJERA','CHECKYOURMATH.COM','AHMEDABAD','III-DCW')
INSERT INTO STUDENTS VALUES(1055,'HARMIT','MITAL',NULL,'RAJKOT','II-BCY')
INSERT INTO STUDENTS VALUES (1066,'ASHOK','JANI',NULL,'BARODA','II-BCZ')

SELECT * FROM STUDENTS


-1
CREATE PROCEDURE PR__STUDENTS_STARTk
AS
BEGIN
SELECT FIRSTNAME,LASTNAME FROM STUDENTS
WHERE FIRSTNAME LIKE 'K%'
END

EXEC PR__STUDENTS_STARTk

-2
CREATE PROCEDURE PR_STUDENTS_FiveChar
AS
BEGIN
SELECT FIRSTNAME,LASTNAME FROM STUDENTS
WHERE FIRSTNAME LIKE '_____'
END

EXEC PR_STUDENTS_FiveChar

-3
CREATE  PROCEDURE PR_STUDENTS_CityEndK
AS
BEGIN
SELECT FIRSTNAME,LASTNAME FROM STUDENTS
WHERE CITY LIKE '_____A'
END

EXEC PR_STUDENTS_CityEndK

-4
CREATE PROC PR_STUDENTS_LastnameEndTel
AS 
BEGIN
SELECT * FROM STUDENTS
WHERE LASTNAME LIKE '%TEL'
END

EXEC  PR_STUDENTS_LastnameEndTel

-5-
CREATE PROC PR_STUDENTS_StartHA_EndT
AS 
BEGIN
SELECT * FROM STUDENTS
WHERE FIRSTNAME LIKE 'HA%T'
END

EXEC PR_STUDENTS_StartHA_EndT

-6-
CREATE PROC PR_STUDENTS_FNAMEsTARTK_ThirdY
AS
BEGIN
SELECT * FROM STUDENTS
WHERE FIRSTNAME LIKE 'K_Y%'
END

EXEC  PR_STUDENTS_FNAMEsTARTK_ThirdY

-7-
CREATE PROC PR_STUDENTS_NOWEBSITEandNAME5CHAR
AS
BEGIN
SELECT * FROM STUDENTS
WHERE WEBSITE IS NULL AND FIRSTNAME LIKE '_____'
END

EXEC  PR_STUDENTS_NOWEBSITEandNAME5CHAR

-8-
CREATE PROC PR_STUDENTS_LNAMEconsistJER
AS
BEGIN
SELECT * FROM STUDENTS
WHERE LASTNAME LIKE '%JER%'
END

EXEC PR_STUDENTS_LNAMEconsistJER

-9-
CREATE PROC PR_STUDENRTS_CNAMEstartRorB
AS
BEGIN
SELECT * FROM STUDENTS
WHERE CITY LIKE '[R,B]%'
END

EXEC PR_STUDENRTS_CNAMEstartRorB

-10-
CREATE PROC PR_STUDENRTS_HAVINGWEBSITE
AS
BEGIN
SELECT FIRSTNAME, LASTNAME FROM STUDENTS
WHERE WEBSITE IS NOT NULL
END

EXEC PR_STUDENRTS_HAVINGWEBSITE

-11-
CREATE PROC PR_STUDENTS_FNAMEstartATOH
AS
BEGIN
SELECT * FROM STUDENTS 
WHERE FIRSTNAME LIKE '[A-H]%'
END

EXEC PR_STUDENTS_FNAMEstartATOH

-12-
ALTER PROC PR_STUDENTS_FNAME2charISVOWEL
AS
BEGIN
SELECT * FROM STUDENTS 
WHERE FIRSTNAME  LIKE '_[A,E,I,O,U]%'
END

EXEC PR_STUDENTS_FNAME2charISVOWEL

-13-
CREATE PROC PR_STUDENTS_CITYcosistROD
AS
BEGIN
SELECT FIRSTNAME, LASTNAME FROM STUDENTS
WHERE CITY LIKE '%ROD%'
END

EXEC PR_STUDENTS_CITYcosistROD

-14-
CREATE PROC PR_STUDENTS_WEBSITEstartBI
AS
BEGIN
SELECT FIRSTNAME, LASTNAME FROM STUDENTS
WHERE WEBSITE LIKE 'BI%'
END

EXEC PR_STUDENTS_WEBSITEstartBI

-15-
CREATE PROC PR_STUDENTS_LNAME6CHAR
AS
BEGIN
SELECT FIRSTNAME, LASTNAME FROM STUDENTS
WHERE LASTNAME LIKE '______'
END
\
EXEC PR_STUDENTS_LNAME6CHAR

-16-
CREATE PROC PR_STUDENTS_CITY5CHARandNOTSTARTba
AS
BEGIN
SELECT * FROM STUDENTS
WHERE city like '_____' and city not like 'ba%'
END

exec PR_STUDENTS_CITY5CHARandNOTSTARTba

-17-
CREATE PROC PR_STUDENTS_DIVISIONstartII
AS
BEGIN
SELECT * FROM STUDENTS
WHERE DIVISION LIKE 'II%'
END

EXEC PR_STUDENTS_DIVISIONstartII

-18-
CREATE PROC PR_STUDENTS_DIVISIONcontainsBC
AS
BEGIN
SELECT FIRSTNAME FROM STUDENTS
WHERE DIVISION LIKE '%BC%'
END

EXEC PR_STUDENTS_DIVISIONcontainsBC

-19-
CREATE PROC PR_STUDENTS_DIVISIONcontains6CHARandHAVINGwebsite
AS
BEGIN
SELECT stuid,CITY FROM STUDENTS
WHERE DIVISION LIKE'______' AND WEBSITE IS NOT NULL
END

EXEC PR_STUDENTS_DIVISIONcontains6CHARandHAVINGwebsite

-20-
CREATE PROC PR_STUDENTS_FNAME3charCONSONANT
AS
BEGIN
SELECT * FROM STUDENTS
WHERE FIRSTNAME  NOT LIKE '__[A,E,I,O,U]%'
END

EXEC PR_STUDENTS_FNAME3charCONSONANT
-16-
