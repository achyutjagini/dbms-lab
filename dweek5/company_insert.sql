\c company

Alter Table department drop constraint department_mgr_ssn_fkey;

INSERT into DEPARTMENT values('Research', 5, '333445555','1988-05-22');
INSERT into DEPARTMENT values('Administration', 4, '987654321','1995-01-01');
INSERT into DEPARTMENT values('Headquarters', 1, '888665555','1981-06-19');


INSERT into EMPLOYEE values ('James','E','Borg', '888665555','1937-11-10','450 Stone, Houston,TX', 'M',55000, NULL,1);
INSERT into EMPLOYEE values ('John','B','Smith','123456789','1965-01-09','731 Fondren,Houston,TX', 'M',30000,'888665555',5);
INSERT into EMPLOYEE values ('Franklin','T','Wong','333445555','1955-12-08','638 voss,Houston,TX', 'M',40000,'888665555',5);
INSERT into EMPLOYEE values ('Alicia','J','Zelaya','999887777','1968-01-19','3321 Castle,Spring,Tx', 'F',25000,'333445555',4);
INSERT into EMPLOYEE values ('Jennifer','S','Wallace','987654321','1941-06-20','291 Berry, Bellaire,Tx', 'F',43000, '333445555',4);
INSERT into EMPLOYEE values ('Ramesh','K','Narayan','666884444','1962-09-15','975 Fire Oak, Humble, TX', 'M',38000, '333445555',5);
INSERT into EMPLOYEE values ('Joyce','A','English','453453453','1972-07-31','5631 Rice,Houston,TX', 'F',25000, '333445555',5);
INSERT into EMPLOYEE values ('Ahmed','V','Jabbar','987987987','1969-03-29','980 Dallas, Houston,TX', 'M',25000, '987654321',4);


INSERT into DEPT_LOCATIONS  values(1, 'Houston');
INSERT into DEPT_LOCATIONS  values(4, 'Stafford');
INSERT into DEPT_LOCATIONS  values(5, 'Bellaire');
INSERT into DEPT_LOCATIONS  values(5, 'Sugarland');
INSERT into DEPT_LOCATIONS  values(5, 'Houston');
INSERT into PROJECT values('ProductX',1,'Bellaire',5);
INSERT into PROJECT values('ProductY',2,'Sugarland',5);
INSERT into PROJECT values('ProductZ',3,'Houston',5);
INSERT into PROJECT values('Computerization',10,'Stafford',4);
INSERT into PROJECT values('Reorganization',20,'Houston',1);
INSERT into PROJECT values('Newbenefits',30,'Stafford',4);
INSERT into WORKS_ON values (123456789, 1, 32.5);
INSERT into WORKS_ON values (123456789, 2, 7.5);
INSERT into WORKS_ON values (666884444, 3, 40.0);
INSERT into WORKS_ON values (453453453, 1, 20.0);
INSERT into WORKS_ON values (453453453, 2, 20.0);
INSERT into WORKS_ON values (333445555, 2, 10.0);
INSERT into WORKS_ON values (333445555, 3, 10.0);
INSERT into WORKS_ON values (333445555, 10, 10.0);
INSERT into WORKS_ON values (333445555, 20, 10.0);
INSERT into WORKS_ON values (999887777, 30, 30.0);
INSERT into WORKS_ON values (999887777, 10, 10.0);
INSERT into WORKS_ON values (987987987, 10, 35.0);
INSERT into WORKS_ON values (987987987, 30, 5.0);
INSERT into WORKS_ON values (987654321, 30, 20.0);
INSERT into WORKS_ON values (987654321, 20, 15.0);
INSERT into WORKS_ON values (888665555, 20, NULL);
INSERT into DEPENDENT values(333445555, 'Alice', 'F', '1986-04-05','Daughter');
INSERT into DEPENDENT values(333445555, 'Theodore', 'M', '1983-10-25','Son');
INSERT into DEPENDENT values(333445555, 'Joy', 'F', '1958-05-03','Spouse');
INSERT into DEPENDENT values(987654321, 'Abner', 'M', '1942-02-28','Spouse');
INSERT into DEPENDENT values(123456789, 'Michael', 'F', '1988-01-04','Son');
INSERT into DEPENDENT values(123456789, 'Alice', 'F', '1988-12-30','Daughter');	
INSERT into DEPENDENT values(123456789, 'Elizabeth', 'F', '1967-05-05','Spouse');




Alter Table department add constraint department_mgr_ssn_fkey FOREIGN KEY (Mgr_ssn) REFERENCES  EMPLOYEE(Ssn);
	













