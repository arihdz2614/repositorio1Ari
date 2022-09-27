describe dept;
INSERT INTO dept(deptno, dname,loc) 
VALUES(10,'ACCOUNTING','NEW_YORK');
INSERT INTO dept(deptno, dname,loc) 
VALUES(20,'RESEARCH','DALLAS');
INSERT INTO dept(deptno, dname,loc) 
VALUES(30,'SALES','CHICAGO');
INSERT INTO dept(dname,deptno,loc) 
VALUES('OPERATIONS',40,'BOSTON');
SELECT *
FROM dept;
SELECT loc, dname
FROM dept;
SELECT *
FROM dept
WHERE deptno<30;
CREATE TABLE emp(
empno NUMERIC(4) PRIMARY KEY,
ename VARCHAR(11) NOT NULL,
job VARCHAR(13) NOT NULL,
mgr NUMERIC(4),
hiredate DATE NOT NULL,
sal NUMERIC(7,2) NOT NULL,
comm NUMERIC(7,2),
deptno NUMERIC(2),
CONSTRAINT emp_deptno_detp_deptno_fk FOREIGN KEY (deptno) REFERENCES dept (deptno),
CONSTRAINT emp_mgr_fk FOREIGN KEY (mgr) REFERENCES emp (empno));





