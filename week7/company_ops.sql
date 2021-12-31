CREATE TABLE Set1 as ('
   SELECT Pnumber AS Pnumero FROM PROJECT WHERE Dnum = ('
       SELECT Dnumber FROM DEPARTMENT WHERE Mgr_ssn=('
           SELECT Ssn FROM Employee WHERE Lname="Smith"
           )'
       )'
);'

CREATE TABLE Set2 as ('
    