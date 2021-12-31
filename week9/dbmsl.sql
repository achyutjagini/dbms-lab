
1.
CREATE TABLE EMP_DETAILS(
Fname VARCHAR(15) NOT NULL,
Minit CHAR,
Lname VARCHAR(15) NOT NULL,
Ssn CHAR(9) UNIQUE NOT NULL,
Dname VARCHAR(15) NOT NULL
);

CREATE TABLE DEPT(
    Dept_name VARCHAR(15) NOT NULL,
    no_of_employees INT NOT NULL
);

CREATE OR REPLACE FUNCTION increment_dept_table()
  RETURNS TRIGGER AS
$$
BEGIN
    IF (NEW.Dname NOT IN (SELECT Dept_name FROM DEPT)) THEN
       IF (NEW.Dname IN (SELECT Dname FROM DEPARTMENT)) THEN
           INSERT INTO DEPT VALUES(NEW.Dname,1);
       ELSE        
           NULL;
       END IF;
    ELSE
        UPDATE DEPT SET no_of_employees=no_of_employees + 1 WHERE Dept_name
=NEW.Dname;
   END IF;

   RETURN NEW;
END;
$$
LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION decrement_dept_table()
  RETURNS TRIGGER AS
$$
BEGIN
IF (OLD.Ssn IN (SELECT Ssn FROM EMP_DETAILS)) THEN
       UPDATE DEPT SET no_of_employees=no_of_employees-1 WHERE Dept_name
=(SELECT Dname FROM EMP_DETAILS WHERE Ssn=OLD.Ssn);
   ELSE
       UPDATE DEPT SET no_of_employees=no_of_employees-(SELECT COUNT(no_of_employees) FROM DEPT WHERE Dept_name=OLD.Dname);
   END IF;
   RETURN OLD;
END;
$$
LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION decrement_dept_table()
  RETURNS TRIGGER AS
$$
BEGIN

   IF(OLD.Ssn IN (SELECT Ssn FROM EMP_DETAILS)) THEN
      UPDATE DEPT SET no_of_employees=no_of_employees-1 WHERE Dept_name
   =(SELECT Dname FROM EMP_DETAILS WHERE Ssn=OLD.Ssn);
     ELSE
         UPDATE DEPT SET no_of_employees =no_of_employees-(SELECT
         COUNT(no_of_employees) FROM DEPT WHERE Dept_name=OLD.Dname);
     END IF;
     RETURN OLD;
END;
$$
LANGUAGE 'PLPGSQL';

CREATE TRIGGER increment_dept_table
BEFORE INSERT
ON EMP_DETAILS
FOR EACH ROW
EXECUTE PROCEDURE increment_dept_table();

CREATE TRIGGER decre_dept_table
BEFORE DELETE
ON EMP_DETAILS
FOR EACH ROW
EXECUTE PROCEDURE decrement_dept_table();

\echo 'a.Inserting into the table\n'
SELECT * FROM EMP_DETAILS;
SELECT * FROM DEPT;
INSERT INTO EMP_DETAILS VALUES('Alcott','N','Kimberley','988234013','Research');
SELECT * FROM DEPT;
INSERT INTO EMP_DETAILS VALUES('ibrahim','N','Mahmood','988234012','Administration');

\echo 'b.deleting from the table\n'
SELECT * FROM EMP_DETAILS;
SELECT * FROM DEPT;
DELETE FROM EMP_DETAILS WHERE Ssn='988234013';


SELECT * FROM DEPT;
DELETE FROM EMP_DETAILS WHERE Dname='Administration';
SELECT * FROM DEPT;+

SELECT * FROM EMP_DETAILS;